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
        );
        return $res;
    }
}