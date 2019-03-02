<?php

namespace app\wenda\validate;
use think\Validate;

/**
 * Created by PhpStorm.
 * User: liaosp
 * Date: 2019/3/2
 * Time: 21:26
 */
class Detail extends Validate
{
    protected $rule =   [
        'name'  => 'require|max:99|checkAgain|chs',
        'age'   => 'number|between:1,120',
        'email' => 'email',
    ];

    protected $message  =   [
        'name.require' => '名称必须',
        'name.max'     => '名称最多不能超过25个字符',
        'age.number'   => '年龄必须是数字',
        'age.between'  => '年龄只能在1-120之间',
        'email'        => '邮箱格式错误',

    ];

    /**
     * 验证数据库数据
     * @param $value
     * @param $rule
     * @param array $data
     * @return bool
     */
    protected function checkAgain($value, $rule, $data=[]){
        return true;
    }

}