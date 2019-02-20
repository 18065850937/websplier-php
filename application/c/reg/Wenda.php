<?php
/**
 * @author liaoshengping@haoxiaec.com
 * @Time: 2019/2/19 -10:23
 * @Version 1.0
 * @Describe:
 * 1:
 * 2:
 * ...
 */

namespace app\c\reg;


class Wenda
{

    /**
     * 右边相关内容的列表
     * @dec
     */
    public function catList()
    {
        $reg = [
            'name' => ['#relateDiv>li>a', 'text'],
            'url'  => ['#relateDiv>li>a', 'href', '', function ($content) {
                $baseUrl = 'https://www.asklib.com';
                return $baseUrl . $content;
            }],
        ];
        return $reg;
    }

    public function listDetail()
    {
        $reg = [
            'name' => ['.ti2m', 'text'],
            'url'  => ['.p15>a', 'href', '', function ($content) {
                $baseUrl = 'https://www.asklib.com';
                return $baseUrl . $content;
            }],
        ];
        return $reg;

    }

    /**
     * @dec : 问答的详情
     */
    public function detail(){
        $reg = [
            'map'=>['.seotops','text','',function($content){
                $res = substr($content,15);
                $result = explode('＞',$res);
                return $result;
            }],
            'content' => ['.essaytitle', 'html'],
            'answer'=>['.listbg>.listtip','html'],
        ];
        return $reg;
    }
}