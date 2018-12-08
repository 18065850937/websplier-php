<?php
/**
 * @author liaoshengping@haoxiaec.com
 * @Time: 2018/12/7 -18:08
 * @Version 1.0
 * @Describe:
 * 1:
 * 2:
 * ...
 */

namespace app\c\template;

use app\c\implode\SiteCollectImplode;
use app\c\reg\BubukoReg;
use app\c\repertory\ToCacheNewData;
use QL\QueryList;
class Bubuko implements SiteCollectImplode
{
    private $IndexList;
    private $default;

    public function __construct()
    {
        $this->default ='bubuko';
        $this->IndexList =[
            ['url'=>'http://www.bubuko.com/infolist-2-1.html','cat'=>'web'],
            ['url'=>'http://www.bubuko.com/infolist-9-1.html','cat'=>'wechat'],
            ['url'=>'http://www.bubuko.com/infolist-5-1.html','cat'=>'db'],
        ];
    }

    /**
     * 获取爬虫网页列表
     */
    public function getIndexWebSite()
    {
        foreach ($this->IndexList as $key =>$url){
            $reg =BubukoReg::listReg();
            $ql = QueryList::get($url['url'])->removeHead()->rules($reg)->queryData(function ($item){
                $item['url'] = "http://www.bubuko.com".$item['url'];
                return $item;
            });
            ToCacheNewData::inToDb($ql,$this->default,$url['cat']);
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