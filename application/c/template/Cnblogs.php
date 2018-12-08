<?php
/**
 * @author liaoshengping@haoxiaec.com
 * @Time: 2018/12/7 -19:04
 * @Version 1.0
 * @Describe:
 * 1:
 * 2:
 * ...
 */

namespace app\c\template;


use app\c\implode\SiteCollectImplode;
use app\c\model\WaitWork;
use app\c\repertory\ToCacheNewData;
use QL\QueryList;

class Cnblogs implements SiteCollectImplode
{
    private $IndexList;
    private $default;
    private $downNum=2;//获取文章的量
    public function __construct()
    {
        $this->default ='cnblogs';
        $this->IndexList=[
            ['url'=>'https://www.cnblogs.com/cate/php/','cat'=>'php'],
            ['url'=>'https://www.cnblogs.com/cate/python/','cat'=>'python'],
            ['url'=>'https://www.cnblogs.com/cate/java/','cat'=>'java'],
            ['url'=>'https://www.cnblogs.com/cate/go/','cat'=>'go'],
        ];
    }

    /**
     * 获取爬虫网页列表
     */
    public function getIndexWebSite()
    {
        foreach ($this->IndexList as $key=>$data){
            $reg = \app\c\reg\Cnblogs::listReg();
            $result = QueryList::get($data['url'])->rules($reg)->queryData();
            ToCacheNewData::inToDb($result,$this->default,$data['cat']);
        }
    }

    /**
     *  获取列表中的详情
     */
    public function getSiteDetail()
    {
        $data =WaitWork::where(['status'=>0])->order('create_time','asc')->limit($this->downNum)->select();
        if(empty($data)){
            return $data;
        }
        foreach ($data as $key=>$info){
            $reg = \app\c\reg\Cnblogs::detailReg();
            $result = QueryList::get($info['url'])->rules($reg)->queryData();
        }
    }
}