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

class Article implements CURDInterface
{

    public function add($data, $type = '')
    {
        if (empty($data) || empty($data['title']) || empty($data['auther']) || empty($data['url']) ||empty($data['content'])){
            return false;
        }
        $insert =[
            'title'=>$data['title'],
            'auther'=>$data['auther'],
            'url'=>$data['url'],
            'update_time'=>date('Y-m-d H:i:s'),
            'create_time'=>date('Y-m-d H:i:s'),
        ];
        $insertId = \app\c\model\Article::insertGetId($insert);
        if(empty($insertId)){
            return false;
        }
        $add =[
            'pid'=>$insertId,
            'content'=>$data['content'],
        ];
       return (new ArticleContent())->add($add);

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