<?php
/**
 * @author liaoshengping@haoxiaec.com
 * @Time: 2018/12/7 -18:02
 * @Version 1.0
 * @Describe:
 * 1:
 * 2:
 * ...
 */

namespace app\command;
use app\c\template\Cnblogs;
use think\console\Command;
use think\console\Input;
use think\console\Output;


class Collect extends Command
{
    protected function configure()
    {
        $this->setName('collect')->setDescription('setDescription。。。');
    }

    protected function execute(Input $input, Output $output)
    {
        (new Cnblogs())->getIndexWebSite();
        $output->writeln("正在执行");
    }

}