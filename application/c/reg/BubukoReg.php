<?php
/**
 * @author liaoshengping@haoxiaec.com
 * @Time: 2018/12/7 -18:17
 * @Version 1.0
 * @Describe:
 * 1:
 * 2:
 * ...
 */

namespace app\c\reg;


class BubukoReg
{
    public static function listReg(){
        $reg = [
            //采集文章标题
//            'title' => ['h1','text'],
            //采集文章发布日期,这里用到了QueryList的过滤功能，过滤掉span标签和a标签
//            'date' => ['.pt_info','text','-span -a',function($content){
//                //用回调函数进一步过滤出日期
//                $arr = explode(' ',$content);
//                return $arr[0];
//            }],
            //采集文章正文内容,利用过滤功能去掉文章中的超链接，但保留超链接的文字，并去掉版权、JS代码等无用信息
//            'content' => ['.post_content','html','a -.content_copyright -script']
        'contet'=>'.divborderbottomdotted',
        ];
        return $reg;
    }

}