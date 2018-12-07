<?php
/**
 * @author liaoshengping@haoxiaec.com
 * @Time: 2018/12/7 -18:10
 * @Version 1.0
 * @Describe:
 * 1:
 * 2:
 * ...
 */

namespace app\c\implode;


interface SiteCollectImplode
{
    /**
     * 获取爬虫网页列表
     */
    public function getIndexWebSite();

    /**
     *  获取列表中的详情
     */
    public function getSiteDetail();
}