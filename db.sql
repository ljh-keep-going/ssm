/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wangshanggouwupingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wangshanggouwupingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wangshanggouwupingtai`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2022-03-05 09:38:53','2022-03-05 09:38:53','2022-03-05 09:38:53'),(2,1,'收货人2','17703786902','地址2',1,'2022-03-05 09:38:53','2022-03-05 09:38:53','2022-03-05 09:38:53'),(3,3,'收货人3','17703786903','地址3',1,'2022-03-05 09:38:53','2022-03-05 09:38:53','2022-03-05 09:38:53'),(4,2,'收货人4','17703786904','地址4',1,'2022-03-05 09:38:53','2022-03-05 09:38:53','2022-03-05 09:38:53'),(5,3,'收货人5','17703786905','地址5',2,'2022-03-05 09:38:53','2022-03-12 13:30:08','2022-03-05 09:38:53');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/wangshanggouwupingtai/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/wangshanggouwupingtai/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/wangshanggouwupingtai/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-05 09:37:46'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-05 09:37:46'),(3,'huiyuandengji_types','会员等级类型',1,'青铜会员',NULL,'0.98','2022-03-05 09:37:46'),(4,'huiyuandengji_types','会员等级类型',2,'白银会员',NULL,'0.96','2022-03-05 09:37:46'),(5,'huiyuandengji_types','会员等级类型',3,'黄金会员',NULL,'0.94','2022-03-05 09:37:46'),(6,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-05 09:37:46'),(7,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-05 09:37:46'),(8,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2022-03-05 09:37:46'),(9,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2022-03-05 09:37:46'),(10,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2022-03-05 09:37:46'),(11,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2022-03-05 09:37:46'),(12,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-05 09:37:46'),(13,'shangpin_order_types','订单类型',1,'已评价',NULL,NULL,'2022-03-05 09:37:46'),(14,'shangpin_order_types','订单类型',2,'退款',NULL,NULL,'2022-03-05 09:37:46'),(15,'shangpin_order_types','订单类型',3,'已支付',NULL,NULL,'2022-03-05 09:37:46'),(16,'shangpin_order_types','订单类型',4,'已发货',NULL,NULL,'2022-03-05 09:37:46'),(17,'shangpin_order_types','订单类型',5,'已收货',NULL,NULL,'2022-03-05 09:37:46'),(18,'shangpin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-03-05 09:37:46'),(19,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-03-05 09:37:46'),(20,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-03-05 09:37:46'),(21,'shangpin_types','商品类型',5,'商品类型5',NULL,NULL,'2022-03-05 11:10:19');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='留言版';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,3,'留言标题1','留言内容1','回复信息1','2022-03-05 09:38:53','2022-03-05 09:38:53','2022-03-05 09:38:53'),(2,3,'留言标题2','留言内容2','回复信息2','2022-03-05 09:38:53','2022-03-05 09:38:53','2022-03-05 09:38:53'),(3,1,'留言标题3','留言内容3','回复信息3','2022-03-05 09:38:53','2022-03-05 09:38:53','2022-03-05 09:38:53'),(4,2,'留言标题4','留言内容4','回复信息4','2022-03-05 09:38:53','2022-03-05 09:38:53','2022-03-05 09:38:53'),(5,2,'留言标题5','留言内容5','回复信息5','2022-03-05 09:38:53','2022-03-05 09:38:53','2022-03-05 09:38:53'),(6,1,'标题11','内容111',NULL,'2022-03-05 10:58:16',NULL,'2022-03-05 10:58:16'),(7,1,'留言111','内容1111','好sad','2022-03-05 11:08:38','2022-03-05 11:13:50','2022-03-05 11:08:38'),(8,3,'sad','1111','215','2022-03-12 13:28:51','2022-03-12 13:31:52','2022-03-12 13:28:51');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_price` int(11) DEFAULT NULL COMMENT '购买获得积分 ',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价 ',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `shangpin_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_name`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_price`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`shangxia_types`,`shangpin_delete`,`shangpin_content`,`create_time`) values (1,'商品名称1','http://localhost:8080/wangshanggouwupingtai/upload/shangpin1.jpg',4,101,304,'513.86','55.22',211,1,1,'商品简介1','2022-03-05 09:38:53'),(2,'商品名称2','http://localhost:8080/wangshanggouwupingtai/upload/shangpin2.jpg',1,98,182,'588.75','186.72',182,1,1,'商品简介2','2022-03-05 09:38:53'),(3,'商品名称3','http://localhost:8080/wangshanggouwupingtai/upload/shangpin3.jpg',3,97,232,'810.71','31.53',169,1,1,'商品简介3','2022-03-05 09:38:53'),(4,'商品名称4','http://localhost:8080/wangshanggouwupingtai/upload/shangpin4.jpg',4,98,78,'926.68','349.37',50,1,1,'商品简介4','2022-03-05 09:38:53'),(5,'商品名称5','http://localhost:8080/wangshanggouwupingtai/upload/shangpin5.jpg',1,105,463,'922.34','346.70',42,1,1,'<p>商品简介5</p>','2022-03-05 09:38:53');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2022-03-05 09:38:53','2022-03-05 09:38:53'),(2,2,2,1,'2022-03-05 09:38:53','2022-03-05 09:38:53'),(3,3,3,1,'2022-03-05 09:38:53','2022-03-05 09:38:53'),(4,4,3,1,'2022-03-05 09:38:53','2022-03-05 09:38:53'),(5,5,2,1,'2022-03-05 09:38:53','2022-03-05 09:38:53'),(6,2,1,1,'2022-03-05 11:09:28','2022-03-05 11:09:28'),(7,2,3,1,'2022-03-12 13:29:40','2022-03-12 13:29:40');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2022-03-05 09:38:53','回复信息1','2022-03-05 09:38:53','2022-03-05 09:38:53'),(2,2,3,'评价内容2','2022-03-05 09:38:53','回复信息2','2022-03-05 09:38:53','2022-03-05 09:38:53'),(3,3,2,'评价内容3','2022-03-05 09:38:53','回复信息3','2022-03-05 09:38:53','2022-03-05 09:38:53'),(4,4,3,'评价内容4','2022-03-05 09:38:53','回复信息4','2022-03-05 09:38:53','2022-03-05 09:38:53'),(5,5,2,'评价内容5','2022-03-05 09:38:53','回复信息5','2022-03-05 09:38:53','2022-03-05 09:38:53'),(6,4,1,'很好很好很好','2022-03-05 11:15:06','63524','2022-03-12 13:32:14','2022-03-05 11:15:06'),(7,4,3,'56494','2022-03-12 13:33:23',NULL,NULL,'2022-03-12 13:33:23');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收获地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1646449476236',2,3,1,3,'92.70',5,1,'2022-03-05 11:04:36','2022-03-05 11:04:36'),(2,'1646449749777',2,2,1,2,'365.97',4,1,'2022-03-05 11:09:10','2022-03-05 11:09:10'),(3,'1646449762162',2,2,1,1,'182.99',5,1,'2022-03-05 11:09:22','2022-03-05 11:09:22'),(4,'1646449762162',2,4,1,2,'684.77',1,1,'2022-03-05 11:09:22','2022-03-05 11:09:22'),(5,'1646449762162',2,3,1,3,'92.70',2,1,'2022-03-05 11:09:22','2022-03-05 11:09:22'),(6,'1647062971388',5,4,3,2,'684.77',3,1,'2022-03-12 13:29:31','2022-03-12 13:29:31'),(7,'1647063038529',5,2,3,1,'182.99',4,1,'2022-03-12 13:30:39','2022-03-12 13:30:39'),(8,'1647063038529',5,3,3,3,'92.70',4,1,'2022-03-12 13:30:39','2022-03-12 13:30:39'),(9,'1647063038529',5,4,3,2,'684.77',1,1,'2022-03-12 13:30:39','2022-03-12 13:30:39');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','nx7dwzmbolxy12osom8qjxq5hon9dzks','2022-03-05 09:54:06','2022-03-12 14:32:42'),(2,6,'admin','users','管理员','jgax19wdlxef7upqynuo1yu7s6yckp4o','2022-03-05 11:05:09','2022-03-12 14:31:01'),(3,3,'a3','yonghu','用户','402aska8pqzcch1bolvs3jzmc3622uwo','2022-03-12 13:28:37','2022-03-12 14:33:13');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int(11) DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_sum_jifen`,`yonghu_new_jifen`,`huiyuandengji_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/wangshanggouwupingtai/upload/yonghu1.jpg',1,'1@qq.com','8884.25','2211.68','1868.44',1,'2022-03-05 09:38:53'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/wangshanggouwupingtai/upload/yonghu2.jpg',1,'2@qq.com','528.51','677.31','26.65',1,'2022-03-05 09:38:53'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/wangshanggouwupingtai/upload/yonghu3.jpg',2,'3@qq.com','322.47','2110.00','1676.55',1,'2022-03-05 09:38:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
