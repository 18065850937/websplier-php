<?php
/**
 * @author liaoshengping@haoxiaec.com
 * @Time: 2019/2/20 -16:50
 * @Version 1.0
 * @Describe:
 * 1:
 * 2:
 * ...
 */

namespace app\command;

use think\console\Input;
use think\console\Output;
use think\console\Command;

class Wenda extends Command
{
    protected function configure()
    {
        $this->setName('wenda')->setDescription('setDescription。。。');
    }
    protected function execute(Input $input, Output $output)
    {
        set_time_limit(130);
        (new \app\c\repertory\Wenda())->CatList();
        $output->writeln("正在执行");
    }
}