<?php
/**
 * @author liaoshengping@haoxiaec.com
 * @Time: 2018/12/7 -19:19
 * @Version 1.0
 * @Describe:
 *    新文章进入缓存进入数据库。
 * 1:
 * 2:
 * ...
 */

namespace app\c\repertory;


use app\c\model\WaitWork;

class ToCacheNewData
{
    public static function inToDb(array $data,$type='defeult',$cat='defeult'){
        if(empty($data)){
            return false;
        }
        foreach ($data as $key=>$datainfo){
            if(empty($datainfo['title']) || empty($datainfo['url'])){
                continue;
            }
            $cache = cache($datainfo['title']);
            if($cache){
                continue;
            }
            //过滤标题   防止sql 注入

            //进入数据库，将来可能进入队列中。
            $insert=[
                'website'=>$type,
                'title'=>$datainfo['title'],
                'url'=>$datainfo['url'],
                'cat'=>$cat,
                'describe'=>$datainfo['describe'],
                'create_time'=>date('Y-m-d H:i:s'),
            ];
            WaitWork::create($insert);
            cache($datainfo['title'],$datainfo['title']);
        }
    }
    public static function inDetailDb(array $data){
        if(empty($data)){
            return false;
        }
        $insert =[
            'title'=>$data['data'],
            'content'=>$data['content'],
            'create_time'=>date('Y-m-d H:i:s'),
            'update_time'=>date('Y-m-d H:i:s'),
            
        ];
    }

}