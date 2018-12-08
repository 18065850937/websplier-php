<?php
/**
 * @author liaoshengping@haoxiaec.com
 * @Time: 2018/12/7 -19:12
 * @Version 1.0
 * @Describe:
 * 1:
 * 2:
 * ...
 */

namespace app\c\reg;


class Cnblogs
{
    public static function listReg(){
        $res =array(
            'title'=>array('.titlelnk','text'),
            'url'=>array('.titlelnk','href'),
            'describe'=>array('.post_item_summary','text','-a'),
        );
        return $res;
    }
    public static function detailReg(){
        $res =array(
            'title'=>array('#cb_post_title_url','text'),
            'content'=>array('#cnblogs_post_body','html'),
        );
        return $res;
    }
}