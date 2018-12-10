<?php
/**
 * @author liaoshengping@haoxiaec.com
 * @Time: 2018/12/10 -15:35
 * @Version 1.0
 * @Describe:
 * 1:
 * 2:
 * ...
 */

namespace app\c\implode;


interface CURDInterface
{
    public function add($data,$type='');
    public function update($data,$type='');
    public function del($id);
    public function get();
    //通知类
    public function notice();

}