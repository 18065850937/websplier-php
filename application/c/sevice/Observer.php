<?php
/**
 * @author liaoshengping@haoxiaec.com
 * @Time: 2018/12/8 -9:48
 * @Version 1.0
 * @Describe:
 * 1:
 * 2:
 * ...
 */

namespace app\c\sevice;


class Observer
{
    private $objs = array();

    /**
     * @param $obj
     * 添加对象
     */
    public function addObj($obj){
        $this->objs[] = $obj;
    }

    /**
     * @param array $data
     * 通知对象
     */
    public function cry(){
        foreach ($this->objs as $obj){
            $obj->getIndexWebSite();
            $obj->getSiteDetail();
        }
    }

}