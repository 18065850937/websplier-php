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
use app\c\repertory\ToCacheNewData;
use QL\QueryList;

class Cnblogs implements SiteCollectImplode
{
    private $IndexList;
    private $default;
    public function __construct()
    {
        $this->default ='cnblogs';
        $this->IndexList=[
            ['url'=>'https://www.cnblogs.com/cate/php/','cat'=>'php'],

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
        // TODO: Implement getSiteDetail() method.
    }
}