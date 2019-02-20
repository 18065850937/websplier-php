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
        if (count($data) != 0) {
            //做存储
            $this->getList($data);
        } else {
            return false;
        }

    }

    /**
     * @dec : 获取题目的列表
     */
    public function getList($data)
    {
        $data = json_decode(json_encode($data), true);
        if (empty($data)) {
            return false;
        }
//        [0] => array(2) {
//            ["name"] => string(27) "管理的基本原理题库"
//            ["url"] => string(41) "https://www.asklib.com/t17065/t17102.html"
//    }

        foreach ($data as $key => $listDetail) {
            $url = $listDetail['url'];
            $reg = (new \app\c\reg\Wenda())->listDetail();
            $data = QueryList::get($url)->rules($reg)->query()->getData();
            if (count($data) != 0) {
                $this->getDetail($data);
            } else {
                return false;
            }
        }
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
            if($res == false){
                echo "采集失败了";
           }
           dump($res);
            exit;
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
            'PHPSESSID' => $sessionID.'kk'
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
            //session 错误，或者session过期了，或者采集账号，没有充值钱。重新获取token
            if($cache >2){
                return false;
            }
            $sessionId = $this->getSession(true);
            $res = $this->getRealDetailArr($url);
            $cache += 1;
            cache('getRealDetailArr',$cache);
            if ($res == false) {
                return false;
            }
            return false;
        }
        return $res;
    }
}