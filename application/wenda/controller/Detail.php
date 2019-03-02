<?php

namespace app\wenda\controller;
use think\Controller;

/**
 * Created by PhpStorm.
 * User: liaosp
 * Date: 2019/3/2
 * Time: 21:22
 */
class Detail extends Controller
{
    public function index($id){

//        $validate = $this->validate([
//            'id'=>$id,
//        ],'\app\wenda\validate\Detail');
//        if($validate != true){
//            dump($validate);
//        }
        $data = [
            'name'  => $id,
            'email' => 'thinkphp@qq.com',
        ];
        $validate = new \app\wenda\validate\Detail;
        if (!$validate->teDing()->check($data)) {
            return ($validate->getError());
        }
    }
}