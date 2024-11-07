/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xinfengzhiguyouxigonglue
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xinfengzhiguyouxigonglue` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xinfengzhiguyouxigonglue`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/xinfengzhiguyouxigonglue/upload/1618922360025.jpg'),(2,'picture2','http://localhost:8080/xinfengzhiguyouxigonglue/upload/1618922364885.jpg'),(3,'picture3','http://localhost:8080/xinfengzhiguyouxigonglue/upload/1618922376552.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-20 19:36:27'),(2,'sex_types','性别',2,'女',NULL,'2021-04-20 19:36:27'),(3,'youxigonglue_types','游戏类型名称',1,'类型1',NULL,'2021-04-20 19:36:27'),(4,'youxigonglue_types','游戏类型名称',2,'类型2',NULL,'2021-04-20 19:36:27'),(5,'news_types','公告类型名称',1,'日常公告',NULL,'2021-04-20 19:36:27'),(6,'news_types','公告类型名称',2,'紧急公告',NULL,'2021-04-20 19:36:27');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618922568697 DEFAULT CHARSET=utf8 COMMENT='论坛信息';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (101,'2021-03-18 17:31:37','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(102,'2021-03-18 17:31:37','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(103,'2021-03-18 17:31:37','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(1618922558613,'2021-04-20 20:42:38','333333333333','<p>请输入内容3333333333333</p>',0,2,'222','开放'),(1618922568696,'2021-04-20 20:42:47',NULL,'请输入评论123123',1618922558613,2,'222',NULL);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616060207063 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (121,'2021-03-18 17:31:37',1,'用户名1','留言内容1','回复内容1'),(122,'2021-03-18 17:31:37',2,'用户名2','留言内容2','回复内容2'),(123,'2021-03-18 17:31:37',3,'用户名3','留言内容3','回复内容3'),(124,'2021-03-18 17:31:37',4,'用户名4','留言内容4','回复内容4'),(125,'2021-03-18 17:31:37',5,'用户名5','留言内容5','回复内容5'),(126,'2021-03-18 17:31:37',6,'用户名6','留言内容6','回复内容6'),(1616060207062,'2021-03-18 17:36:46',1616060050171,'1','留言留言留言留言留言留言留言留言留言留言','1111111111111');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告名称1',1,'http://localhost:8080/xinfengzhiguyouxigonglue/file/download?fileName=1618922338841.jpg','2021-04-20 20:39:02','公告详情1\r\n','2021-04-20 20:39:02'),(2,'公告名称2',2,'http://localhost:8080/xinfengzhiguyouxigonglue/file/download?fileName=1618922347165.jpg','2021-04-20 20:39:11','公告详情2\r\n','2021-04-20 20:39:11');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','va0fzcilxjemtw7ldybxzim2jwnzxfc1','2021-04-20 19:44:39','2021-04-20 21:47:26'),(2,1,'111','yonghu','用户','j9r9xl48xxxpgkbwd91e8pcwi7bjquax','2021-04-20 20:17:53','2021-04-20 21:43:07'),(3,2,'222','yonghu','用户','3emcpgzuqv8vcnhhc1desxynpzjyblh0','2021-04-20 20:39:50','2021-04-20 21:39:51');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'123123123123123112','12312312312','http://localhost:8080/xinfengzhiguyouxigonglue/file/download?fileName=1618922275105.jpg',NULL),(2,'222','123456','用户2',1,'410882200011064872','17789944562','http://localhost:8080/xinfengzhiguyouxigonglue/file/download?fileName=1618922287143.jpg','2021-04-20 20:38:08');

/*Table structure for table `youxigonglue` */

DROP TABLE IF EXISTS `youxigonglue`;

CREATE TABLE `youxigonglue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `youxigonglue_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `youxigonglue_types` int(200) DEFAULT NULL COMMENT '分类 Search111',
  `youxigonglue_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `youxigonglue_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `youxigonglue_content` text COMMENT '简介',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='游戏攻略';

/*Data for the table `youxigonglue` */

insert  into `youxigonglue`(`id`,`youxigonglue_name`,`youxigonglue_types`,`youxigonglue_photo`,`youxigonglue_file`,`youxigonglue_content`,`insert_time`,`create_time`) values (22,'原神',2,'http://localhost:8080/xinfengzhiguyouxigonglue/file/download?fileName=1618920367673.jpg','http://localhost:8080/xinfengzhiguyouxigonglue/file/download?fileName=1618920382095.doc','简介1\r\n','2021-04-20 20:06:29','2021-04-20 20:06:29'),(23,'爆枪英雄',2,'http://localhost:8080/xinfengzhiguyouxigonglue/file/download?fileName=1618920393596.jpg','http://localhost:8080/xinfengzhiguyouxigonglue/file/download?fileName=1618920418914.xls','简介2\r\n','2021-04-20 20:07:02','2021-04-20 20:07:02'),(24,'造梦西游',1,'http://localhost:8080/xinfengzhiguyouxigonglue/file/download?fileName=1618920443086.jpg','http://localhost:8080/xinfengzhiguyouxigonglue/file/download?fileName=1618920448681.rar','简介3\r\n','2021-04-20 20:07:29','2021-04-20 20:07:29');

/*Table structure for table `youxigonglue_collection` */

DROP TABLE IF EXISTS `youxigonglue_collection`;

CREATE TABLE `youxigonglue_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `youxigonglue_id` int(11) DEFAULT NULL COMMENT '攻略id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='攻略收藏';

/*Data for the table `youxigonglue_collection` */

insert  into `youxigonglue_collection`(`id`,`youxigonglue_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,24,2,'2021-04-20 20:40:11','2021-04-20 20:40:11');

/*Table structure for table `youxigonglue_liuyan` */

DROP TABLE IF EXISTS `youxigonglue_liuyan`;

CREATE TABLE `youxigonglue_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `youxigonglue_id` int(11) DEFAULT NULL COMMENT '攻略id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `youxigonglue_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='攻略留言';

/*Data for the table `youxigonglue_liuyan` */

insert  into `youxigonglue_liuyan`(`id`,`youxigonglue_id`,`yonghu_id`,`youxigonglue_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,24,2,'123123',NULL,'2021-04-20 20:40:04','2021-04-20 20:40:04'),(2,23,2,'2312312',NULL,'2021-04-20 20:40:17','2021-04-20 20:40:17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
