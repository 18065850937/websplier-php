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
use QL\QueryList;
class Bubuko implements SiteCollectImplode
{
    private $IndexList;

    public function __construct()
    {
        $this->IndexList =[
            'http://www.bubuko.com/infolist-2-1.html',
        ];
    }

    /**
     * 获取爬虫网页列表
     */
    public function getIndexWebSite()
    {
        foreach ($this->IndexList as $key =>$url){
            $reg =BubukoReg::listReg();
//            $rang = '.content';
            $ql = QueryList::get($url)->rules($reg)->queryData();
            dump($ql);
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