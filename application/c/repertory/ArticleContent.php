<?php
/**
 * @author liaoshengping@haoxiaec.com
 * @Time: 2018/12/10 -15:33
 * @Version 1.0
 * @Describe:
 * 1:
 * 2:
 * ...
 */

namespace app\c\repertory;


use app\c\implode\CURDInterface;

class ArticleContent implements CURDInterface
{


    public function add($data, $type = '')
    {
       if(empty($data['content']) || empty($data['pid'])){
            return false;
       }
       $insert =[
           'pid'=>$data['pid'],
           'content'=>$data['content'],
           'create_time'=>date('Y-m-d H:i:s'),
           'update_time'=>date('Y-m-d H:i:s'),
       ];
      return \app\c\model\ArticleContent::create($insert);
    }

    public function update($data, $type = '')
    {
        // TODO: Implement update() method.
    }

    public function del($id)
    {
        // TODO: Implement del() method.
    }

    public function get()
    {
        // TODO: Implement get() method.
    }

    public function notice()
    {
        // TODO: Implement notice() method.
    }
}