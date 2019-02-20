<?php
/**
 * @author liaoshengping@haoxiaec.com
 * @Time: 2019/2/19 -9:52
 * @Version 1.0
 * @Describe:
 * 1:
 * 2:
 * ...
 */

namespace app\c\repertory;

use GuzzleHttp\Client;
use GuzzleHttp\Cookie\CookieJar;

use QL\QueryList;
use think\Db;

class Wenda
{

    /**
     *
     * @dec : 获取最初的列表
     */
    public function CatList()
    {
        $url = 'https://www.asklib.com/t26513/t27519.html';
        $reg = (new \app\c\reg\Wenda())->catList();
        $data = QueryList::get($url)->rules($reg)->query()->getData();
        $wait_data =[];
        $catId = 0;
        if (count($data) != 0) {
            //做存储
            foreach ($data as $key => $listDetail) {
                //做判断，这个题目是否入库了
                $data = $this->getList($listDetail);
                if (!empty($data)) {
                    $down =0;
                    foreach ($data as $k => $item) {
                        if (!empty($item['map'])) {
                            if($down ==0){
                                $down ++;
                                //这个试题，是哪个分类的，先从数据库中找出来
                                $catId = $this->getSaveCatId($item['map'][0], $item['map'][1]);
                                //存在，跳过
                                if($this->isReady($item['map'])){
                                    continue;
                                }
                            }
                            //加入内存中，一次性储存。
                            $info = [
                                'title'=>$item['name'],
                                'url'=>$item['url'],
                                'cat'=>$catId,
                                'create_time'=>date('Y-m-d H:i:s'),
                                'type'=>'wenda'
                            ];
                            $wait_data[] = $info;
                        }
                    }
                }

            }
          //插入数据库
            dump($wait_data);
            Db::table('wait_work')->insertAll($wait_data);
        } else {
            return false;
        }

    }

    /**
     * @dec : 获取题目的列表,这个是第一页
     */
    public function getList($listDetail)
    {

//        [0] => array(2) {
//            ["name"] => string(27) "管理的基本原理题库"
//            ["url"] => string(41) "https://www.asklib.com/t17065/t17102.html"
//    }
//        $listDetail['url'] = 'https://www.asklib.com/t16160/t16190.html';
        $alldata = [];
        $url = substr($listDetail['url'], 0, strlen($listDetail['url']) - 5);
        for ($i = 1; $i <= 999999; $i++) {
            $urled = $url . '/' . 'p' . $i . '.html';
            $reg = (new \app\c\reg\Wenda())->listDetail();
            $data = QueryList::get($urled)->rules($reg)->query()->getData();
            if (count($data) != 0) {
                $arr = json_decode(json_encode($data), true);
                if ($arr[0]['name'] == '[]') {
                    break;
                }
                if (!empty($arr)) {
                    foreach ($arr as $key => $value) {
                        $alldata[] = $value;
                    }
                }
//                   $alldata[]= $arr;
//                $this->getDetail($data);
            } else {
                break;
            }
        }
        return $alldata;


    }

    /**
     * @dec  获取题目的全部
     */
    public function getDetail($data)
    {
        $data = json_decode(json_encode($data), true);
        if (empty($data)) {
            return false;
        }
        foreach ($data as $key => $wenDaDetail) {
            $res = $this->getRealDetailArr($wenDaDetail['url']);
            if ($res == false) {
                //采集失败了，邮件通知了
                break;
            }
        }

    }

    /**
     * @dec : 模拟登录获取session
     */
    public function getSession($again = '')
    {
        $ex = cache('wendasession');
        if ($again == true || empty($ex)) {
            $client = new \GuzzleHttp\Client();
            $res = $client->request("POST", "https://www.asklib.com/user.php?act=logincheck", [
                'headers'     => [
                    'Content-Type'   => 'application/x-www-form-urlencoded',
                    'Content-Length' => 96,
                ],
                'form_params' => [
                    "username" => 'liaosp',
                    "password" => 'aa0597',
                ],
            ]);
            $header = $res->getHeaders();
            $a = $header['Set-Cookie'][0];
            $ex = explode('=', explode(';', $a)[0])[1];
            cache('wendasession', $ex);
        }
        return $ex;
    }


    public function get($sessionID = '', $url = '')
    {
        $cookieJar = CookieJar::fromArray([
            'PHPSESSID' => $sessionID
        ], 'www.asklib.com'); // 此处记得请求域名需要保持跟请求的url host一致，否则不会携带此cookie。
        $client = new Client([
            'cookies' => $cookieJar,
        ]);
        $result = $client->get($url);
        $data = $result->getBody()->getContents();
        return $data;
    }

    /**
     * @dec: 获取整理之后的数据数组
     */
    public function getRealDetailArr($url)
    {
        $cache = cache('getRealDetailArr');
        $sessionId = $this->getSession();
        $data = $this->get($sessionId, $url);
        $reg = (new \app\c\reg\Wenda())->detail();
        $res = QueryList::html($data)->rules($reg)->query()->queryData();
        if (strpos($res[0]['answer'], 'showlogin')) {
            $cache = cache('getRealDetailArr');
            if ($cache > 1) {
                return false;
            }
            $cache += 1;
            cache('getRealDetailArr', $cache, 2);
            //session 错误，或者session过期了，或者采集账号，没有充值钱。重新获取token
            $sessionId = $this->getSession(true);
            $res = $this->getRealDetailArr($url);
            if ($res == false) {
                return false;
            }
            return false;
        }
        return $res;
    }

    /*
     * 获取分类id
     */
    public function getSaveCatId($item1, $item2)
    {
        $cat1 = Db::table('wenda_cat')->where(['name' => $item1, 'is_delete' => 0])->find();
        if ($cat1) {
            $pid = $cat1['id'];
        } else {
            $pid = Db::table('wenda_cat')->insertGetId([
                'name' => $item1,
                'pid'=>2,
            ]);
        }
        $cat2 = Db::table('wenda_cat')->where(['name' => $item2, 'is_delete' => 0, 'pid' => $pid])->find();
        if ($cat2) {
            return $cat2['id'];
        } else {
            return Db::table('wenda_cat')->insertGetId([
                'name' => $item2,
                'pid'  => $pid
            ]);
        }
    }


    /*
     * 这个试题是否存在
     */
    public function isReady($item){
      return  Db::table('wenda_cat')->where(['name'=>$item[1]])->find();
    }
}