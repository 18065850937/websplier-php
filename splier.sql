/*
Navicat MySQL Data Transfer

Source Server         : 四年服务器
Source Server Version : 50637
Source Host           : 120.79.143.216:3306
Source Database       : splier

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2018-12-08 10:03:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `data` varchar(500) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of log
-- ----------------------------

-- ----------------------------
-- Table structure for wait_work
-- ----------------------------
DROP TABLE IF EXISTS `wait_work`;
CREATE TABLE `wait_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `website` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL,
  `create_time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `cat` varchar(90) NOT NULL,
  `describe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=389 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wait_work
-- ----------------------------
INSERT INTO `wait_work` VALUES ('241', 'cnblogs', 'PHP精确到毫秒秒杀倒计时实例', 'https://www.cnblogs.com/woleyia/p/10084185.html', '', '2018-12-07 20:59:01', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('242', 'cnblogs', '第四课：PHP 变量', 'https://www.cnblogs.com/ydwzhang/p/10083638.html', '', '2018-12-07 20:59:01', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('243', 'cnblogs', 'PHP安装BCMath扩展', 'https://www.cnblogs.com/itbsl/p/10083470.html', '', '2018-12-07 20:59:01', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('244', 'cnblogs', 'PHP   unicode与普通字符串的相互转化', 'https://www.cnblogs.com/cmnull/p/10030899.html', '', '2018-12-07 20:59:01', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('245', 'cnblogs', '腾讯地图和百度地图的PHP相互转换', 'https://www.cnblogs.com/yuan9580/p/10083071.html', '', '2018-12-07 20:59:01', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('246', 'cnblogs', 'PHP获取异常信息', 'https://www.cnblogs.com/blog-dyn/p/10082968.html', '', '2018-12-07 20:59:01', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('247', 'cnblogs', '[Linux] nginx管理员指南基本功能', 'https://www.cnblogs.com/taoshihan/p/10079767.html', '', '2018-12-07 20:59:01', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('248', 'cnblogs', '【LDAP安装】在已编译安装的PHP环境下安装LDAP模块', 'https://www.cnblogs.com/lwops/p/10077467.html', '', '2018-12-07 20:59:01', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('249', 'cnblogs', '深入理解php底层：php生命周期', 'https://www.cnblogs.com/hazier520/p/10077315.html', '', '2018-12-07 20:59:01', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('250', 'cnblogs', 'php对二维数据排序', 'https://www.cnblogs.com/zxf100/p/10075091.html', '', '2018-12-07 20:59:01', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('251', 'cnblogs', 'php', 'https://www.cnblogs.com/tuziling/p/10074452.html', '', '2018-12-07 20:59:01', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('252', 'cnblogs', 'PHP实现开心消消乐的算法示例', 'https://www.cnblogs.com/haohuier/p/10073052.html', '', '2018-12-07 20:59:01', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('253', 'cnblogs', 'mysql自增id超大问题查询', 'https://www.cnblogs.com/iforever/p/10071733.html', '', '2018-12-07 20:59:01', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('254', 'cnblogs', '[Linux] LVS虚拟服务器四层负载均衡', 'https://www.cnblogs.com/taoshihan/p/10071559.html', '', '2018-12-07 20:59:01', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('255', 'cnblogs', 'centos下搭建YII环境', 'https://www.cnblogs.com/kkdn/p/10069051.html', '', '2018-12-07 20:59:01', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('256', 'cnblogs', 'python的深浅拷贝以及fromkeys的用法', 'https://www.cnblogs.com/a2534786642/p/10066454.html', '', '2018-12-07 20:59:02', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('257', 'cnblogs', 'laravel migrate时报错:Syntax error or access violation: 1071 Specified key was too long; max key length is 767 bytes', 'https://www.cnblogs.com/itbsl/p/10065927.html', '', '2018-12-07 20:59:02', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('258', 'cnblogs', 'tp3.2和Bootstrap模态框导入excel表格数据', 'https://www.cnblogs.com/mthp/p/10064013.html', '', '2018-12-07 20:59:02', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('259', 'cnblogs', '简单php实现同一时间内一个账户只允许在一个终端登陆', 'https://www.cnblogs.com/mei848an/p/10063839.html', '', '2018-12-07 20:59:02', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('260', 'cnblogs', '手机公众号漫画网站开发定制,漫画网站建设,漫画网站代码', 'https://www.cnblogs.com/mei848an/p/10063810.html', '', '2018-12-07 20:59:02', '0', '0', 'php', null);
INSERT INTO `wait_work` VALUES ('261', 'cnblogs', 'Pythontutor:可视化代码在内存的执行过程', 'https://www.cnblogs.com/songzhenhua/p/10085031.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('262', 'cnblogs', 'Python学习之旅（二十六）', 'https://www.cnblogs.com/finsomway/p/10084939.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('263', 'cnblogs', 'logging 日志模块', 'https://www.cnblogs.com/wang-kai-1994/p/10084545.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('264', 'cnblogs', 'Python入门---time模块', 'https://www.cnblogs.com/Mifen2952277346/p/10084511.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('265', 'cnblogs', 'Pycharm中，pyqt5.11.1的Qt assistant显示', 'https://www.cnblogs.com/YannisChou/p/10083056.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('266', 'cnblogs', 'python3解析网页经过base64编码后的图片', 'https://www.cnblogs.com/dufeixiang/p/10082568.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('267', 'cnblogs', 'time-based基于google key生成6位验证码（google authenticator）', 'https://www.cnblogs.com/wuhuohanke/p/10082401.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('268', 'cnblogs', 'Python【 一 】 ：认知 Python', 'https://www.cnblogs.com/Quantum-World/p/10082360.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('269', 'cnblogs', 'Python 操作 SQLite 数据库', 'https://www.cnblogs.com/Rocky0429/p/10082290.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('270', 'cnblogs', 'Python基础第一天', 'https://www.cnblogs.com/Black-study/p/10081931.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('271', 'cnblogs', '【Python3爬虫】猫眼电影爬虫（破解字符集反爬）', 'https://www.cnblogs.com/TM0831/p/10078372.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('272', 'cnblogs', '自己的TensorFlowd的mnist入门', 'https://www.cnblogs.com/yqs-0705/p/10081530.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('273', 'cnblogs', 'python中的运算符', 'https://www.cnblogs.com/hacker001/p/10081384.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('274', 'cnblogs', '撩课-Python-每天5道面试题-第7天', 'https://www.cnblogs.com/gxq666/p/10081162.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('275', 'cnblogs', 'python3字符串格式化format()函数的简单用法', 'https://www.cnblogs.com/zrmw/p/10081113.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('276', 'cnblogs', '从yield 到yield from再到python协程', 'https://www.cnblogs.com/zhaof/p/10072934.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('277', 'cnblogs', 'python利用requests库模拟post请求时json的使用', 'https://www.cnblogs.com/new-june/p/10079800.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('278', 'cnblogs', '09 初识函数', 'https://www.cnblogs.com/yanghongtao/p/10079633.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('279', 'cnblogs', 'python初识参数', 'https://www.cnblogs.com/beargod/p/10079349.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('280', 'cnblogs', 'python爬虫beautifulsoup4系列1', 'https://www.cnblogs.com/king8/p/10079336.html', '', '2018-12-07 20:59:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('281', 'cnblogs', '自学 Java 怎么入门？', 'https://www.cnblogs.com/jnshu/p/10085112.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('282', 'cnblogs', '深入理解JVM——对象', 'https://www.cnblogs.com/liangf27/p/10084822.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('283', 'cnblogs', '基于Zookeeper的分布式锁', 'https://www.cnblogs.com/flutehand/p/10084552.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('284', 'cnblogs', 'java8 函数式编程一', 'https://www.cnblogs.com/jmcui/p/10082310.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('285', 'cnblogs', 'Java 从入门到精通（第4版）第5章 字符串', 'https://www.cnblogs.com/zwwhnly/p/10034156.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('286', 'cnblogs', '我的第一篇博客', 'https://www.cnblogs.com/sky03/p/10083900.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('287', 'cnblogs', 'List排序Collections.sort 重写compare', 'https://www.cnblogs.com/locker777/p/10083886.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('288', 'cnblogs', '10大经典排序算法动图演示，看这篇就够了！（配相应代码）', 'https://www.cnblogs.com/aishangJava/p/10083772.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('289', 'cnblogs', 'java猜数字游戏', 'https://www.cnblogs.com/JQHX/p/10083569.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('290', 'cnblogs', 'pom.xml复制过来的代码报错-Maven expected START_TAG or END_TAG not TEXT (positionTEXT se', 'https://www.cnblogs.com/AlinBoss/p/10083414.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('291', 'cnblogs', 'Hadoop HDFS 设计随想', 'https://www.cnblogs.com/reycg-blog/p/10082985.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('292', 'cnblogs', 'Java 基础【18】 反射与内省', 'https://www.cnblogs.com/java-class/p/10078240.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('293', 'cnblogs', '被标记为事务的方法互相调用的坑（上）', 'https://www.cnblogs.com/CodeBear/p/10083053.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('294', 'cnblogs', 'Java--实现单点登录', 'https://www.cnblogs.com/flutehand/p/10082766.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('295', 'cnblogs', 'Java代码复用的三种常用方式：继承、组合和代理', 'https://www.cnblogs.com/qing-gee/p/10077215.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('296', 'cnblogs', '数据库设计之三范式与反范式', 'https://www.cnblogs.com/zhaosq/p/10026947.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('297', 'cnblogs', 'Java常用小笔记', 'https://www.cnblogs.com/eleven258/p/9569287.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('298', 'cnblogs', '撩课-Java每天5道面试题第17天', 'https://www.cnblogs.com/gxq666/p/10081142.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('299', 'cnblogs', 'IDEA出现Cannot resolve symbol \"xxx\"(无法解析符号)', 'https://www.cnblogs.com/zzguan/p/10081084.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('300', 'cnblogs', 'java基础-配置java的环境变量', 'https://www.cnblogs.com/zylv/p/java.html', '', '2018-12-07 20:59:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('301', 'cnblogs', 'Go Web：RESTful web service示例', 'https://www.cnblogs.com/f-ck-need-u/p/10082505.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('302', 'cnblogs', 'Go处理json数据', 'https://www.cnblogs.com/f-ck-need-u/p/10080793.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('303', 'cnblogs', '2018/12/05学习笔记', 'https://www.cnblogs.com/tristatl/p/10070860.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('304', 'cnblogs', '104 - kube-scheduler源码分析 - predicate整体流程', 'https://www.cnblogs.com/cloudgeek/p/10061029.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('305', 'cnblogs', 'Go Web：数据存储(2)——CSV文件', 'https://www.cnblogs.com/f-ck-need-u/p/10060242.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('306', 'cnblogs', 'Go Web：数据存储(1)——内存存储', 'https://www.cnblogs.com/f-ck-need-u/p/10054073.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('307', 'cnblogs', 'Go标准库：Go template用法详解', 'https://www.cnblogs.com/f-ck-need-u/p/10053124.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('308', 'cnblogs', 'QSS的使用(二)——实现ColorLabel', 'https://www.cnblogs.com/apocelipes/p/10050387.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('309', 'cnblogs', 'Kali Linux搭建Go语言环境', 'https://www.cnblogs.com/GhostGuest/p/10048023.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('310', 'cnblogs', 'Go语言map', 'https://www.cnblogs.com/itbsl/p/10043550.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('311', 'cnblogs', 'Golang 学习权威网站', 'https://www.cnblogs.com/jukaiit/p/10040117.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('312', 'cnblogs', 'Go 语言实践（一）', 'https://www.cnblogs.com/qcloud1001/p/10039899.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('313', 'cnblogs', 'Go语言切片', 'https://www.cnblogs.com/itbsl/p/10036538.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('314', 'cnblogs', 'Go标准库：深入剖析Go template', 'https://www.cnblogs.com/f-ck-need-u/p/10035768.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('315', 'cnblogs', 'Go语言数组', 'https://www.cnblogs.com/itbsl/p/10032088.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('316', 'cnblogs', '计算函数执行时间', 'https://www.cnblogs.com/itbsl/p/10031091.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('317', 'cnblogs', 'Go Web：HttpRouter路由', 'https://www.cnblogs.com/f-ck-need-u/p/10020917.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('318', 'cnblogs', 'Go语言strings和strconv包', 'https://www.cnblogs.com/itbsl/p/10019972.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('319', 'cnblogs', 'go web开发(gin&amp;gorm) 之DB配置及DAO的基本使用', 'https://www.cnblogs.com/funnyzpc/p/9501376.html', '', '2018-12-07 20:59:02', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('320', 'cnblogs', 'Golang mysql 上线的一个坑 Db.close重要性', 'https://www.cnblogs.com/zhujiechang/p/10011334.html', '', '2018-12-07 20:59:03', '0', '0', 'go', null);
INSERT INTO `wait_work` VALUES ('321', 'cnblogs', '用延迟队列取代定时任务', 'https://www.cnblogs.com/buguge/p/10085302.html', '', '2018-12-07 21:19:01', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('322', 'cnblogs', 'python 关于文件,以及文件夹的操作', 'https://www.cnblogs.com/yang220/p/10085345.html', '', '2018-12-07 21:37:01', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('323', 'cnblogs', '函数进阶', 'https://www.cnblogs.com/a2534786642/p/10085487.html', '', '2018-12-07 21:58:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('324', 'cnblogs', '进阶函数的学习', 'https://www.cnblogs.com/fu-1111/p/10085451.html', '', '2018-12-07 21:58:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('325', 'cnblogs', '深入理解JVM——虚拟机GC', 'https://www.cnblogs.com/liangf27/p/10085854.html', '', '2018-12-07 23:40:02', '0', '0', 'java', null);
INSERT INTO `wait_work` VALUES ('326', 'cnblogs', 'Python基础（字符串）第二天', 'https://www.cnblogs.com/Black-study/p/10086343.html', '', '2018-12-08 00:47:01', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('327', 'cnblogs', 'Python：What the f*ck Python（上）', 'https://www.cnblogs.com/gl1573/p/10086353.html', '', '2018-12-08 01:29:02', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('328', 'cnblogs', 'python自动化-作业1-1', 'https://www.cnblogs.com/guogangzhi/p/10086548.html', '', '2018-12-08 09:24:01', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('329', 'cnblogs', 'python自动化-作业1-1——A+', 'https://www.cnblogs.com/guogangzhi/p/10086548.html', '', '2018-12-08 09:35:01', '0', '0', 'python', null);
INSERT INTO `wait_work` VALUES ('330', 'bubuko', 'HTML零基础入门视频课程——笔记', 'http://www.bubuko.com/infodetail-2876482.html', '', '2018-12-08 09:56:31', '0', '0', 'web', '视频课程链接：http://edu.51cto.com/course/16023.htmlHTML，主讲：汤小洋一、HTML简介1.HTML是什么?HTML：HyperTextMarkupLanguage超文本标签(标记)语言?由各种标签组成，用来制作网页，告诉浏览器该如何显示页面2.作用制作网页，控制网页和内容的显示插入图片、音乐、视频、动画等多媒体通过链接检索信息使用表单获取用户信息，实现交互');
INSERT INTO `wait_work` VALUES ('331', 'bubuko', 'Docker(三) docker network学习笔记', 'http://www.bubuko.com/infodetail-2876481.html', '', '2018-12-08 09:56:31', '0', '0', 'web', '学习docker的基础网络模型');
INSERT INTO `wait_work` VALUES ('332', 'bubuko', 'centos 7  yum 设置 阿里云 kubernetes  库', 'http://www.bubuko.com/infodetail-2876471.html', '', '2018-12-08 09:56:31', '0', '0', 'web', '[kubernetes]name=Kubernetesbaseurl=http://mirrors.aliyun.com/kubernetes/yum/repos/kubernetes-el7-x86_64enabled=1gpgcheck=1repo_gpgcheck=1gpgkey=http://mirrors.aliyun.com/kubernetes/yum/doc/yum-key.gpg');
INSERT INTO `wait_work` VALUES ('333', 'bubuko', '梳理json', 'http://www.bubuko.com/infodetail-2876464.html', '', '2018-12-08 09:56:31', '0', '0', 'web', '梳理json的主体 一、什么是json？ （一）定义 JSON：JavaScript?Object?Notation(JavaScript 对象表示法) JSON 是存储和交换文本信息的语法。类似 XML。 目前非常多的动态（PHP，JSP，.NET）编程语言都支持JSON。 JSON 通常用于与服 ...');
INSERT INTO `wait_work` VALUES ('334', 'bubuko', 'jquery  json实现面向对象 百度十二星座', 'http://www.bubuko.com/infodetail-2876454.html', '', '2018-12-08 09:56:31', '0', '0', 'web', '效果： 源码： index.html index.js 图片： ...');
INSERT INTO `wait_work` VALUES ('335', 'bubuko', '去面试吧！CSS', 'http://www.bubuko.com/infodetail-2876438.html', '', '2018-12-08 09:56:31', '0', '0', 'web', 'display: none; 与 visibility: hidden; 的区别 修改常规流中元素的 display 通常会造成文档重排。修改 visibility 属性只会造成本元素的重绘 none:完全从渲染树中消失，不占据任何空间 visibility:占空间不可见，可继承 常用 hack I ...');
INSERT INTO `wait_work` VALUES ('336', 'bubuko', 'Linux官方网站(linux.org)疑被黑客劫持', 'http://www.bubuko.com/infodetail-2876390.html', '', '2018-12-08 09:56:31', '0', '0', 'web', '2018年12月8日，Linux官网网站疑似被黑，访问Linux官网会提示DNS解析错误。Linux官网作为Linux的重要的开源社区，Linux官网每天有大量的开发者浏览交流。目前，Linux官网已经暂时关站。 网友们在Linux官网被黑之后第一时间截图，黑客在网站上留下的大量的粗俗语言表达自己对 ...');
INSERT INTO `wait_work` VALUES ('337', 'bubuko', '模块打包机--webpack--基础使用', 'http://www.bubuko.com/infodetail-2876379.html', '', '2018-12-08 09:56:31', '0', '0', 'web', '什么是webpack? 作用有哪些？ WebPack可以看做是模块打包机：它做的事情是，分析你的项目结构，找到JavaScript模块以及其它的一些浏览器不能直接运行的拓展语言（Scss，TypeScript等），并将其转换和打包为合适的格式供浏览器使用 作用： 1、模块化，让我们可以把复杂的程序细 ...');
INSERT INTO `wait_work` VALUES ('338', 'bubuko', 'PHP接入支付宝支付', 'http://www.bubuko.com/infodetail-2876365.html', '', '2018-12-08 09:56:31', '0', '0', 'web', '创建应用 使用支付宝账号登录开放平台创建应用，应用创建成功之后可以得到APPID等相关信息 接着需要设置RSA密钥，可以使用蚂蚁金服开放平台提供的 \"生成工具\" ，生成完密钥需在开放平台中填写。 代码接入 引用服务端SDK 为了方便开发者的接入，支付宝提供了几种常用开发语言的 \"服务端SDK\" 。  ...');
INSERT INTO `wait_work` VALUES ('339', 'bubuko', 'BZOJ4475: [Jsoi2015]子集选取【找规律】【数学】', 'http://www.bubuko.com/infodetail-2876362.html', '', '2018-12-08 09:56:31', '0', '0', 'web', 'Description .png) Input 输入包含一行两个整数N和K，1 using namespace std; const int Mod = 1e9 + 7; int mul(int a, int b) { return 1ll a b % Mod; } int fast_pow(int ...');
INSERT INTO `wait_work` VALUES ('340', 'bubuko', 'json&amp;pickle 序列化', 'http://www.bubuko.com/infodetail-2876340.html', '', '2018-12-08 09:56:31', '0', '0', 'web', '把内存数据转换字符叫序列化把字符转成内存数据类型反序列化 json，用于字符串 和 python数据类型间进行转换dumps 和loads 匹配使用	dumps 只能转成字符串，loads只能从字符串转换成数据类型。只能保存在内存里。 dump 转成字符串并写入文件， load,读文件并转成数据类型 ...');
INSERT INTO `wait_work` VALUES ('341', 'bubuko', 'DotNetCore 系列之 设计模式篇 - 目录（持续更新中。。。）', 'http://www.bubuko.com/infodetail-2876335.html', '', '2018-12-08 09:56:31', '0', '0', 'web', '首先需要说明的一点是，本系列文章中涉及 DotNetCore 相关内容几乎没有，之所以这样命名是为了后续系列博客做技术储备， 杠精 请出门右拐点击 关闭 按钮即可。其次，设计模式与语言无关，所以还请各位萌新不要陷入语言妄想症。 前言 关于什么是设计模式，这里简单描述描述一下： 所谓设计模式，是指软件 ...');
INSERT INTO `wait_work` VALUES ('342', 'bubuko', 'JSONObject fromObject() 需要引入的包', 'http://www.bubuko.com/infodetail-2876316.html', '', '2018-12-08 09:56:31', '0', '0', 'web', '1. maven项目 在pom.xml中添加以下依赖： 跳出的提示中点击\"Import Changes\" 2. 普通项目 需要以下依赖包： intellij idea添加扩展包方式： 可参考 https://www.cnblogs.com/jayworld/p/9706817.html ...');
INSERT INTO `wait_work` VALUES ('343', 'bubuko', 'IIS7下php实现即时输出', 'http://www.bubuko.com/infodetail-2876311.html', '', '2018-12-08 09:56:31', '0', '0', 'web', 'PHP程序在IIS的默认设置下是无法逐渐显示结果的。但在ＦＴＰ空间里却是可以即时输出，研究了好久，终于找到解决方法．办法如下： 首先： 打开文件 C:\\Windows\\System32\\inetsrv\\config\\applicationHost.config ，注意如果你的是64位系统，这个文件就 ...');
INSERT INTO `wait_work` VALUES ('344', 'bubuko', 'HTML 第十一章总结', 'http://www.bubuko.com/infodetail-2876297.html', '', '2018-12-08 09:56:31', '0', '0', 'web', '# 第十一章总结:本章的标题为：layout and positioning Arranging Element##前言：这一章节，通过已经知道的 box model 的概念，进行讲述关于 layout 的知识，并且通过这些知识进行创造专业的设计和 multicolumn layouts. ##谈谈 ...');
INSERT INTO `wait_work` VALUES ('345', 'bubuko', '第9章 CSS3中的变形与动画（下）', 'http://www.bubuko.com/infodetail-2876277.html', '', '2018-12-08 09:56:31', '0', '0', 'web', 'Keyframes介绍 Keyframes被称为 关键帧 ，其类似于Flash中的关键帧。在CSS3中其主要以“@keyframes”开头，后面紧跟着是动画名称加上一对花括号“{…}”，括号中就是一些不同时间段样式规则。 @keyframes changecolor{ 0%{ background: ...');
INSERT INTO `wait_work` VALUES ('346', 'bubuko', '你不知道的Node.js性能优化，读了之后水平直线上升', 'http://www.bubuko.com/infodetail-2876263.html', '', '2018-12-08 09:56:31', '0', '0', 'web', '本文由云+社区发表“当我第一次知道要这篇文章的时候，其实我是拒绝的，因为我觉得，你不能叫我写马上就写，我要有干货才行，写一些老生常谈的然后加上好多特技，那个Node.js性能啊好像Duang~的一下就上去了，那读者一定会骂我，Node.js根本没有这样搞性能优化的，都是假的。”------斯塔克·成龙·王1、使用最新版本的Node.js仅仅是简单的升级Node.js版本就可以轻松地获得性能提升，因');
INSERT INTO `wait_work` VALUES ('347', 'bubuko', 'jQuery开发插件的两个方法  js 深浅拷贝', 'http://www.bubuko.com/infodetail-2876252.html', '', '2018-12-08 09:56:31', '0', '0', 'web', '1.jQuery.extend(object);为扩展jQuery类本身.为类添加新的方法。由全局函数来调用， 主要是用来拓展个全局函数 2.jQuery.fn.extend(object);为jQuery的实例对象添加方法 由实例对象来调用，可以用来拓展个选择器，例如$.fn.each(); ex ...');
INSERT INTO `wait_work` VALUES ('348', 'bubuko', 'json文件的保存，当遇到bytes格式无法序列化的问题解决方法', 'http://www.bubuko.com/infodetail-2876242.html', '', '2018-12-08 09:56:31', '0', '0', 'web', 'class MyEncoder(json.JSONEncoder): def default(self, obj): try: if isinstance(obj, bytes): return str(obj, encoding=\'utf-8\') return json.JSONEncode... ...');
INSERT INTO `wait_work` VALUES ('349', 'bubuko', 'Jsp', 'http://www.bubuko.com/infodetail-2876222.html', '', '2018-12-08 09:56:31', '0', '0', 'web', 'jsp Java Server Page 什么是jsp 从用户角度看待 ，就是是一个网页 ， 从程序员角度看待 ， 其实是一个java类， 它继承了servlet，所以可以直接说jsp 就是一个Servlet. 为什么会有jsp? html 多数情况下用来显示静态内容 ， 一成不变的。 但是有时候我 ...');
INSERT INTO `wait_work` VALUES ('350', 'bubuko', '如何在mpvue下收集小程序的formId', 'http://www.bubuko.com/infodetail-2876369.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '什么是formId formId是小程序可以向用户发送模板消息的通行证，简单而言，你只有获取到formId，把它交给后台，后台同学才能向用户发送通知消息，而这个通行证的有效期只有七天。这是微信为了防止小程序滥用通知消息骚扰用户而提出的一种策略。 如何获取formId 小程序的 \"消息文档\" 告诉我们 ...');
INSERT INTO `wait_work` VALUES ('351', 'bubuko', '软件产品案例分析——福州大学微信小程序', 'http://www.bubuko.com/infodetail-2876344.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '一 、调研，评测 ========== 评测 第一次上手体验： 刚进入看到菜单界面，感觉还是比较生动清晰的，功能很多，也很全面，包涵了大部分学生所需要的功能，就是第一次身份验证那里找了半天。 bug： 1、点击进入学生证附卡的选项，会跳出一个提示告诉你辅导员信息为空，请添加辅导员的提示，但我并没有找 ...');
INSERT INTO `wait_work` VALUES ('352', 'bubuko', '五大方案总结：微信扫描下载APK', 'http://www.bubuko.com/infodetail-2876260.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '微信无疑是影响力巨大的App，现在看到一张有吸引力的二维码，人们都会第一时间想到用微信扫描，由于腾讯有意无意的屏蔽，现在市场上用微信直接扫描下载APK的方法并不多，我们有幸找到了一个不错的方法，想记录一下。');
INSERT INTO `wait_work` VALUES ('353', 'bubuko', '微信缓存引起的bug', 'http://www.bubuko.com/infodetail-2876251.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', 'bug1：在新版微信中，部门安卓机子（华为）出现window.location.href/window.location.reload....等方法来刷新本页面链接，发现页面没有被刷新，经过排查，发现是因为缓存原因，这时候给链接加一个时间戳来解决页面缓存！！！ ...');
INSERT INTO `wait_work` VALUES ('354', 'bubuko', 'JAVA微信支付接口开发——支付', 'http://www.bubuko.com/infodetail-2876094.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '微信支付接口开发——支付 这几天在做支付服务,系统接入了支付宝、微信、银联三方支付接口。个人感觉支付宝的接口开发较为简单，并且易于测试。 关于数据传输,微信是用xml,所以需要对xml进行解析。 1、微信支付的几种接口 \"微信支付开发文档\" 付款码支付、JSAPI支付、Native支付、APP支付、 ...');
INSERT INTO `wait_work` VALUES ('355', 'bubuko', '微信上接收到的CAD图纸如何转换成DWF格式？', 'http://www.bubuko.com/infodetail-2875998.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '微信上接收到的CAD图纸如何转换成DWF格式？CAD设计师除了将CAD图纸文件进行绘制完成，他们还有其他工作需要进行，例如说将CAD图纸文件转换成需要的格式，那么在微信上接收到的CAD图纸文件需要将其转换成DWF格式我们应该如何进行操作，今天小编就要来教教大家相关操作步骤和解决办法，希望大家能够进行采纳，具体步骤如下！步骤一：首先需要将微信上接收到的图纸进行下载到你们的电脑桌面上准备操作！步骤二：');
INSERT INTO `wait_work` VALUES ('356', 'bubuko', '微信小程序  修改数据，并动态渲染页面；修改数组；', 'http://www.bubuko.com/infodetail-2875882.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '一、修改数据，并在页面动态渲染 this.setData({ txt: \'12112\' }) 二、修改数组 var rotateClassItem = \'rotateClass[\'+ index + \']\'; that.setData({ [rotateClassItem]: !that.data. ...');
INSERT INTO `wait_work` VALUES ('357', 'bubuko', '小程序swiper组件高度自适应【转载】', 'http://www.bubuko.com/infodetail-2875853.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '最近在做小程序开发，复制官方文档上的swiper组件实测后发现，图片不能自适应。网上找了几个版本测试都发现存在一些小问题，目前这个版本本人实测是最好用的。记录一下，方便日后使用。 感谢原创大神的帮助，文章地址：https://www.cnblogs.com/wangyihong/p/8610956. ...');
INSERT INTO `wait_work` VALUES ('358', 'bubuko', '小程序之全局变量的设置及使用', 'http://www.bubuko.com/infodetail-2875798.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '很简单就是app.js 存下变量 在其他页面顶部引入 const app = getApp() app.globalData.scene ...');
INSERT INTO `wait_work` VALUES ('359', 'bubuko', '【涛舅舅原创】分享到微信群时，报“操作过于频繁，可稍后再试”的解决办法', 'http://www.bubuko.com/infodetail-2875792.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '大家好，我是涛舅舅。我们平时在作一些裂变活动时，经常会遇到各种各样的问题，微信会给设置各种各样的障碍，我们就像打怪升级一样，需要不断的丰富我们的装备来应对。 在我们vip社群里，经常有一些小伙伴会遇到下面这种情况，那今天我就来统一说一说如何解招！ 问题描述： 在分享到微信群时，报“操作过于频繁，可稍 ...');
INSERT INTO `wait_work` VALUES ('360', 'bubuko', '小程序获取时间格式', 'http://www.bubuko.com/infodetail-2875629.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '小程序获取时间格式 效果图片: .wxml .wxss .js util.js 达叔小生：往后余生，唯独有你 You and me, we are family ! 90后帅气小伙，良好的开发习惯；独立思考的能力；主动并且善于沟通 简书博客： 达叔小生 \"https://www.jianshu.co ...');
INSERT INTO `wait_work` VALUES ('361', 'bubuko', '微信小程序 weui 使用方法', 'http://www.bubuko.com/infodetail-2875614.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', 'https://github.com/Tencent/weui-wxss/ 下载地址用于小程序的https://github.com/Tencent/weui 下载地址用于H5 运用示例在下载文件的文件夹 weui-wxss-master\\dist\\example目录下 小程序全局用法 在app.w ...');
INSERT INTO `wait_work` VALUES ('362', 'bubuko', '多多客DOODOOKE更新插件&amp;模块及下载附件教程', 'http://www.bubuko.com/infodetail-2875583.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '多多客DOODOOKE更新插件&amp;模块及下载附件教程');
INSERT INTO `wait_work` VALUES ('363', 'bubuko', '从前端界面开发谈微信小程序体验', 'http://www.bubuko.com/infodetail-2875101.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '本文由云+社区发表这段时间有幸加入了一个关于微信小程序的项目开发组，从无到有的根据文档自行学习了小程序的开发过程，前面已经有几位前辈的文章珠玉在前，我这里就先从前端界面的开发方面谈一谈小程序以及我所遇到的问题吧。在结构和样式方面，小程序提供了一些常用的标签与控件，比如：view，小程序主要的布局元素，类似于html标签的div，你也完全可以像控制div那样去控制view。scroll-view，你');
INSERT INTO `wait_work` VALUES ('364', 'bubuko', '微信UnionId 部分开放', 'http://www.bubuko.com/infodetail-2875026.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '以前要获得UnionID, 需要把公众号绑定到微信开放平台， 这个微信开放平台垃圾，还要300认证费。 今天突然发现在这个接口 https://api.weixin.qq.com/cgi-bin/user/info?access_token=ACCESS_TOKEN&amp;openid=OPENID&amp;la ...');
INSERT INTO `wait_work` VALUES ('365', 'bubuko', '微信小程序视图层WXML_小程序事件', 'http://www.bubuko.com/infodetail-2874998.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '微信小程序视图层WXML_小程序事件 什么是微信小程序事件 小程序事件是视图层到逻辑层的通讯方式。 小程序事件可以将用户的行为反馈到逻辑层进行处理。 小程序事件可以绑定在组件上，当达到触发事件，就会执行逻辑层中对应的事件处理函数。 小程序事件对象可以携带额外信息，如id, dataset, touc ...');
INSERT INTO `wait_work` VALUES ('366', 'bubuko', '微信小程序视图层WXML_小程序引用', 'http://www.bubuko.com/infodetail-2874985.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '微信小程序视图层WXML_小程序引用 微信小程序WXML提供两种文件引用方式import和include。 import import可以在该文件中使用目标文件定义的template，如： 在微信小程序的item.wxml中定义了一个叫item的template： 在小程序的index.wxml中引 ...');
INSERT INTO `wait_work` VALUES ('367', 'bubuko', '小程序wepy开启错误监控', 'http://www.bubuko.com/infodetail-2874912.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '遇到过，效果如下： 原因可能是因为这个： 这个功能是1.7.0 加入了。。通过config中的 cliLogs控制。 因为有时候，cmd中编译报错，这时候不会编译生成新代码，在开发者工具调试时不知道是怎么回事，一定要切回cmd才能看到错误，因此加入这个功能，把cmd的报错显示到开发者工具当中。 ...');
INSERT INTO `wait_work` VALUES ('368', 'bubuko', '微信小程序视图层WXS_小程序WXS模块', 'http://www.bubuko.com/infodetail-2874891.html', '', '2018-12-08 09:56:43', '0', '0', 'wechat', '微信小程序视图层WXS_小程序WXS模块 微信小程序的WXS 代码可以编写在 小程序wxml 文件中的 &lt;wxs&gt; 标签内，或以 .wxs 为后缀名的文件内。 模块 每一个微信小程序的 .wxs 文件和 &lt;wxs&gt; 标签都是一个单独的模块。 每个模块都有自己独立的作用域。即在一个模块里面定义的变量与 ...');
INSERT INTO `wait_work` VALUES ('369', 'bubuko', '基于mysqld_multi实现MySQL 5.7.24多实例多进程配置', 'http://www.bubuko.com/infodetail-2876412.html', '', '2018-12-08 09:56:54', '0', '0', 'db', 'MySQL本身就可以通过多实例方式运行，只要修改启动脚本和配置文件，把端口、basedir、datadir 文件夹分开后，多个实例的运行就会互不影响。但是这种方式操作起来太过繁杂，所以MySQL官方提供了一个mysqld_multi 的程序来辅助实现多实例操作。');
INSERT INTO `wait_work` VALUES ('370', 'bubuko', 'Linux sh脚本用spool导出oracle数据库指定表表数据', 'http://www.bubuko.com/infodetail-2876373.html', '', '2018-12-08 09:56:54', '0', '0', 'db', '脚本如下，已验证可用，可配合crontab使用。 1 #!/bin/bash 2 3 cd /opt/oracle/datafor_kf 4 5 #redirect environment variables 6 source /opt/oracle/.bash_profile 7 8 #times... ...');
INSERT INTO `wait_work` VALUES ('371', 'bubuko', '查看mysql安装的信息命令', 'http://www.bubuko.com/infodetail-2876329.html', '', '2018-12-08 09:56:54', '0', '0', 'db', '1， tr \'\\0\' \'\\n\' &lt;/proc/1/environ ...');
INSERT INTO `wait_work` VALUES ('372', 'bubuko', 'oracle rman恢复数据文件路径不一致', 'http://www.bubuko.com/infodetail-2876308.html', '', '2018-12-08 09:56:54', '0', '0', 'db', '编辑恢复脚本：virecover.txtrun{allocatechannelc1typesbt;allocatechannelc2typesbt;allocatechannelc3typesbt;allocatechannelc4typesbt;allocatechannelc5typesbt;allocatechannelc6typesbt;allocatechannelc7typesbt;a');
INSERT INTO `wait_work` VALUES ('373', 'bubuko', 'oracle asm 磁盘镜像配置', 'http://www.bubuko.com/infodetail-2876306.html', '', '2018-12-08 09:56:54', '0', '0', 'db', 'asm');
INSERT INTO `wait_work` VALUES ('374', 'bubuko', 'SqlSession对象之Executor', 'http://www.bubuko.com/infodetail-2876289.html', '', '2018-12-08 09:56:54', '0', '0', 'db', 'Executor是Mybatis的一个核心接口，每一个SqlSession对象都会拥有一个Executor(执行器对象)；这个执行对象负责[增删改查]的具体操作，我们可以简单的将它理解为JDBC中Statement的封装版。它的代码如下： Executor的继承结构 Executor的类图如下所示： ...');
INSERT INTO `wait_work` VALUES ('375', 'bubuko', 'Mysql安装', 'http://www.bubuko.com/infodetail-2876261.html', '', '2018-12-08 09:56:54', '0', '0', 'db', 'MySQL是一个关系型数据库管理系统，由瑞典MySQLAB公司开发，目前属于Oracle旗下产品。MySQL是最流行的关系型数据库管理系统之一，在WEB应用方面，MySQL是最好的RDBMS(RelationalDatabaseManagementSystem，关系数据库管理系统)应用软件。MySQL是一种关系数据库管理系统，关系数据库将数据保存在不同的表中，而不是将所有数据放在一个大仓库内，这样');
INSERT INTO `wait_work` VALUES ('376', 'bubuko', '搭建Jmeter + Grafana + InfluxDB性能测试监控环境', 'http://www.bubuko.com/infodetail-2876243.html', '', '2018-12-08 09:56:54', '0', '0', 'db', '背景 Jmeter原生的实时监控每半分钟收集一次数据，只能在Linux控制台查看日志输出，界面看起来不直观，图表报告只能等压测结束后才能生成。如下图为jmeter在Linux下运行的实时日志： 那么如何在压测过程中实时生成图表监控数据呢？这里介绍一种实现方案：搭建Jmeter + Grafana + ...');
INSERT INTO `wait_work` VALUES ('377', 'bubuko', 'centos6.9-mysql5.7.24-install', 'http://www.bubuko.com/infodetail-2876217.html', '', '2018-12-08 09:56:54', '0', '0', 'db', '# step1 下载 mysql ```sh[root@iZwz9d0zq2f86ycdzuvf12Z ~]# wget http://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.24-1.el6.x86_64.rpm-bundle.tar--20 ...');
INSERT INTO `wait_work` VALUES ('378', 'bubuko', 'Navicate 连接mysql问题', 'http://www.bubuko.com/infodetail-2876190.html', '', '2018-12-08 09:56:54', '0', '0', 'db', 'mysql8.0 and Navicate11.2 链接报错问题 亲测有效：记录一下仅供提醒自己 原创： https://blog.csdn.net/xdmfc/article/details/80263215 今天下了个 MySQL8.0，发现Navicat连接不上，总是报错1251； 原因是My ...');
INSERT INTO `wait_work` VALUES ('379', 'bubuko', 'MySQL 索引（概念）', 'http://www.bubuko.com/infodetail-2876139.html', '', '2018-12-08 09:56:54', '0', '0', 'db', '大学学习数据库时小编学的最不明白的就是索引，毕设时，答辩评审老师问优化数据库查询速度的方法，小编战战战克克克克的答了“索引” ，没想到，老师竟然夸小编数据库学的很扎实，幸亏没有在往下问“在你的项目中如何使用索引”，不然真的跪了。 于是，小编下定决心，一探索引的究竟。 正文分割线 索引，分为“单列索引 ...');
INSERT INTO `wait_work` VALUES ('380', 'bubuko', 'PHP数据库的操作（PDO）', 'http://www.bubuko.com/infodetail-2876131.html', '', '2018-12-08 09:56:54', '0', '0', 'db', 'PHP 5.1 发布时将附带一个全新的数据库连接层，即 PHP Data Objects (PDO)。虽然 PHP 一直都拥有很好的数据库连接，但 PDO 让 PHP的数据库操作 达到一个新的高度。PDO可支持基本的MySQL、Microsoft SQL Server、Oracle等数据库，并且提供 ...');
INSERT INTO `wait_work` VALUES ('381', 'bubuko', 'CentOS 7下mysqld服务启动失败终极解决方案', 'http://www.bubuko.com/infodetail-2876129.html', '', '2018-12-08 09:56:54', '0', '0', 'db', '启动mysqld服务失败，报错如下： 既然有了提示，先看下有什么帮助没有 然而，好像这些信息对我们来说并没有什么用处，什么守护进程没启动，我们也不能知如何去启动这些，这个时候我们查看一下mysql自带的告警日志，路径一般在/var/log/mysqld.log下面 这个时候我们就明白了，/var/r ...');
INSERT INTO `wait_work` VALUES ('382', 'bubuko', '插入sql返回主键id', 'http://www.bubuko.com/infodetail-2876109.html', '', '2018-12-08 09:56:54', '0', '0', 'db', '1 &lt;insert id=\"insertSelective\" parameterType=\"com.xxx.model.XDetail\" useGeneratedKeys=\"true\" keyProperty=\"id\"&gt; 主要依靠useGeneratedKeys=\"true\" keyProperty ...');
INSERT INTO `wait_work` VALUES ('383', 'bubuko', 'python操作SqlServer', 'http://www.bubuko.com/infodetail-2876089.html', '', '2018-12-08 09:56:54', '0', '0', 'db', 'python操作sqlserver需要使用pymssql模块 ...');
INSERT INTO `wait_work` VALUES ('384', 'bubuko', 'ACCESS_ONCE的作用', 'http://www.bubuko.com/infodetail-2876062.html', '', '2018-12-08 09:56:54', '0', '0', 'db', '如果你看过 Linux 内核中的 RCU 的实现，你应该注意到了这个叫做 ACCESS_ONCE() 宏。 ACCESS_ONCE的定义如下： 仅从语法上讲，这似乎毫无意义，先取其地址，在通过指针取其值。而实际上不然，多了一个关键词 volatile，所以它的含义就是强制编译器每次使用 x 都从内存 ...');
INSERT INTO `wait_work` VALUES ('385', 'bubuko', 'Flask组件之Flask-SQLAlchemy', 'http://www.bubuko.com/infodetail-2876023.html', '', '2018-12-08 09:56:54', '0', '0', 'db', '1、介绍 SQLAlchemy是一个基于Python实现的ORM框架。该框架建立在 DB API之上，使用关系对象映射进行数据库操作，简言之便是：将类和对象转换成SQL，然后使用数据API执行SQL并获取执行结果。 安装： 组成部分： Engine：框架的引擎 Connetion Pooling：数 ...');
INSERT INTO `wait_work` VALUES ('386', 'bubuko', 'Percona Mysql Galera多读写集群部署生产环境实记', 'http://www.bubuko.com/infodetail-2875996.html', '', '2018-12-08 09:56:54', '0', '0', 'db', '很少在网上看到关于galera的生产应用实际样例的文章，此文章供大家参考。希望由此能把多节点数据库部署成功。galera和主从架构确实有了很多方便维护的地方，再也不用担心主从节点同步失效而带来数据丢失，数据不一致等问题。在生产用上galera架构以后数据库某个节点故障也不会再去锁表备份来达到主从可用，只需要重新修好节点重启数据库服务。剩下的就交给galera自动增量或者全量同步数据了。');
INSERT INTO `wait_work` VALUES ('387', 'bubuko', 'Percona Audit Log Plugin（mysql 审计）', 'http://www.bubuko.com/infodetail-2875995.html', '', '2018-12-08 09:56:54', '0', '0', 'db', '背景：当数据业务上或者其他的特殊情况时可能会进行审计，以便知道数据库当时所做的操作，今天给大家带来percona的审计插件PerconaAuditLogPlugin提供对特定服务器上执行的连接和查询活动的监视和记录。有关活动的信息将存储在XML日志文件中，其中每个事件将具有其NAME字段，其自己的唯一RECORD_ID字段和TIMESTAMP字段。此实现是MySQLEnterpriseAuditL');
INSERT INTO `wait_work` VALUES ('388', 'bubuko', 'mysql 5.7 Stage Tracking DDL进度跟踪', 'http://www.bubuko.com/infodetail-2875983.html', '', '2018-12-08 09:56:54', '0', '0', 'db', '在mysql 中一些大表做DDL,可能时间会很长，只能在processlist 中看到当前的进程，但是无法得知当前DDL操作的进度，不太直接，今天给大家介绍5.7的一个新功能Stage Tracking，这个功能可以让我们实时得知DDL的进度，在一定的业务场景中还是挺方便，话不多说，马上开车！');
