<?php
/**
 * @author liaoshengping@haoxiaec.com
 * @Time: 2018/12/10 -16:18
 * @Version 1.0
 * @Describe:
 * 1:
 * 2:
 * ...
 */

namespace app\c\repertory;
use app\c\model\WaitWork as Db;

use app\c\implode\CURDInterface;
use think\Model;

class WaitWork implements CURDInterface
{

    public function add($data, $type = '')
    {
        // TODO: Implement add() method.
    }

    public function update($data, $type = '')
    {
        // TODO: Implement update() method.
    }

    public function finish($id)
    {
       return Db::where(['id'=>$id])->update([
            'update_time'=>date('Y-m-d H:i:s'),
            'status'=>1,
        ]);
    }

    public function get()
    {
        // TODO: Implement get() method.
    }

    public function notice()
    {
        // TODO: Implement notice() method.
    }

    public function del($id)
    {
        // TODO: Implement del() method.
    }
}