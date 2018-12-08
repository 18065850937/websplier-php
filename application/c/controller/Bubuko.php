<?php
/**
 * @author liaoshengping@haoxiaec.com
 * @Time: 2018/12/7 -18:22
 * @Version 1.0
 * @Describe:
 * 1:
 * 2:
 * ...
 */

namespace app\c\controller;


class Bubuko
{
    public function index(){
        (new \app\c\template\Cnblogs())->getSiteDetail();
    }

}