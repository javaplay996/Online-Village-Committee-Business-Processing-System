/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wangshangjuweihuibanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wangshangjuweihuibanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wangshangjuweihuibanlixitong`;

/*Table structure for table `banshijilu` */

DROP TABLE IF EXISTS `banshijilu`;

CREATE TABLE `banshijilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `banshijilu_uuid_number` varchar(200) DEFAULT NULL COMMENT '办事记录编号',
  `banshijilu_name` varchar(200) DEFAULT NULL COMMENT '办事标题  Search111 ',
  `banshi_types` int(11) DEFAULT NULL COMMENT '办事类型 Search111',
  `banshi_time` timestamp NULL DEFAULT NULL COMMENT '办事时间',
  `banshijilu_content` text COMMENT '办事内容',
  `banshijieguo_types` int(11) DEFAULT NULL COMMENT '办事结果 Search111',
  `juweihui_content` text COMMENT '居委会回复',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='办事记录';

/*Data for the table `banshijilu` */

insert  into `banshijilu`(`id`,`yonghu_id`,`banshijilu_uuid_number`,`banshijilu_name`,`banshi_types`,`banshi_time`,`banshijilu_content`,`banshijieguo_types`,`juweihui_content`,`insert_time`,`create_time`) values (1,2,'1678504319222','办事标题1',2,'2023-03-11 11:11:59','办事内容1',4,'居委会回复1','2023-03-11 11:11:59','2023-03-11 11:11:59'),(2,2,'1678504319280','办事标题2',3,'2023-03-11 11:11:59','办事内容2',1,'居委会回复2','2023-03-11 11:11:59','2023-03-11 11:11:59'),(3,2,'1678504319224','办事标题3',2,'2023-03-11 11:11:59','办事内容3',1,'居委会回复3','2023-03-11 11:11:59','2023-03-11 11:11:59'),(4,3,'1678504319228','办事标题4',1,'2023-03-11 11:11:59','办事内容4',4,'居委会回复4','2023-03-11 11:11:59','2023-03-11 11:11:59'),(5,2,'1678504319248','办事标题5',2,'2023-03-11 11:11:59','办事内容5',2,'居委会回复5','2023-03-11 11:11:59','2023-03-11 11:11:59'),(6,2,'1678504319225','办事标题6',2,'2023-03-11 11:11:59','办事内容6',4,'居委会回复6','2023-03-11 11:11:59','2023-03-11 11:11:59'),(7,3,'1678504319268','办事标题7',4,'2023-03-11 11:11:59','办事内容7',3,'居委会回复7','2023-03-11 11:11:59','2023-03-11 11:11:59'),(8,1,'1678504319239','办事标题8',4,'2023-03-11 11:11:59','办事内容8',3,'居委会回复8','2023-03-11 11:11:59','2023-03-11 11:11:59'),(9,3,'1678504319293','办事标题9',2,'2023-03-11 11:11:59','办事内容9',1,'居委会回复9','2023-03-11 11:11:59','2023-03-11 11:11:59'),(10,1,'1678504319256','办事标题10',4,'2023-03-11 11:11:59','办事内容10',3,'居委会回复10','2023-03-11 11:11:59','2023-03-11 11:11:59'),(11,3,'1678504319239','办事标题11',3,'2023-03-11 11:11:59','办事内容11',2,'居委会回复11','2023-03-11 11:11:59','2023-03-11 11:11:59'),(12,1,'1678504319288','办事标题12',4,'2023-03-11 11:11:59','办事内容12',1,'居委会回复12','2023-03-11 11:11:59','2023-03-11 11:11:59'),(13,1,'1678504319216','办事标题13',4,'2023-03-11 11:11:59','办事内容13',1,'居委会回复13','2023-03-11 11:11:59','2023-03-11 11:11:59'),(14,2,'1678504319260','办事标题14',2,'2023-03-11 11:11:59','办事内容14',2,'居委会回复14','2023-03-11 11:11:59','2023-03-11 11:11:59'),(15,1,'1678506255660','标题111',2,'2023-03-11 11:44:22','<p>供电公司公司大概多少</p>',1,'<p>正常办理</p>','2023-03-11 11:44:32','2023-03-11 11:44:32');

/*Table structure for table `banshishenqing` */

DROP TABLE IF EXISTS `banshishenqing`;

CREATE TABLE `banshishenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `banshishenqing_name` varchar(200) DEFAULT NULL COMMENT '申请办事标题  Search111 ',
  `banshishenqing_uuid_number` varchar(200) DEFAULT NULL COMMENT '办事申请编号',
  `banshi_types` int(11) DEFAULT NULL COMMENT '办事类型 Search111',
  `shenqingbanshi_time` date DEFAULT NULL COMMENT '申请办事日期',
  `banshishenqing_content` text COMMENT '申请办事详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `banshishenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `banshishenqing_yesno_text` text COMMENT '审核意见',
  `banshishenqing_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='办事申请';

/*Data for the table `banshishenqing` */

insert  into `banshishenqing`(`id`,`yonghu_id`,`banshishenqing_name`,`banshishenqing_uuid_number`,`banshi_types`,`shenqingbanshi_time`,`banshishenqing_content`,`insert_time`,`banshishenqing_yesno_types`,`banshishenqing_yesno_text`,`banshishenqing_shenhe_time`,`create_time`) values (1,2,'申请办事标题1','1678504319262',4,'2023-03-11','申请办事详情1','2023-03-11 11:11:59',1,NULL,NULL,'2023-03-11 11:11:59'),(2,1,'申请办事标题2','1678504319207',4,'2023-03-11','申请办事详情2','2023-03-11 11:11:59',1,NULL,NULL,'2023-03-11 11:11:59'),(3,1,'申请办事标题3','1678504319289',2,'2023-03-11','申请办事详情3','2023-03-11 11:11:59',1,NULL,NULL,'2023-03-11 11:11:59'),(4,1,'申请办事标题4','1678504319217',4,'2023-03-11','申请办事详情4','2023-03-11 11:11:59',1,NULL,NULL,'2023-03-11 11:11:59'),(5,1,'申请办事标题5','1678504319291',2,'2023-03-11','申请办事详情5','2023-03-11 11:11:59',1,NULL,NULL,'2023-03-11 11:11:59'),(6,2,'申请办事标题6','1678504319248',4,'2023-03-11','申请办事详情6','2023-03-11 11:11:59',1,NULL,NULL,'2023-03-11 11:11:59'),(7,3,'申请办事标题7','1678504319266',1,'2023-03-11','申请办事详情7','2023-03-11 11:11:59',1,NULL,NULL,'2023-03-11 11:11:59'),(8,2,'申请办事标题8','1678504319244',2,'2023-03-11','申请办事详情8','2023-03-11 11:11:59',1,NULL,NULL,'2023-03-11 11:11:59'),(9,2,'申请办事标题9','1678504319258',4,'2023-03-11','申请办事详情9','2023-03-11 11:11:59',1,NULL,NULL,'2023-03-11 11:11:59'),(10,2,'申请办事标题10','1678504319226',4,'2023-03-11','申请办事详情10','2023-03-11 11:11:59',1,NULL,NULL,'2023-03-11 11:11:59'),(11,3,'申请办事标题11','1678504319249',2,'2023-03-11','申请办事详情11','2023-03-11 11:11:59',1,NULL,NULL,'2023-03-11 11:11:59'),(12,3,'申请办事标题12','1678504319213',4,'2023-03-11','申请办事详情12','2023-03-11 11:11:59',1,NULL,NULL,'2023-03-11 11:11:59'),(13,2,'申请办事标题13','1678504319228',4,'2023-03-11','申请办事详情13','2023-03-11 11:11:59',1,NULL,NULL,'2023-03-11 11:11:59'),(14,1,'申请办事标题14','1678504319216',4,'2023-03-11','申请办事详情14','2023-03-11 11:11:59',3,'孤独颂歌','2023-03-11 11:48:01','2023-03-11 11:11:59'),(15,3,'标题11','1678506160855',1,'2023-03-17','搞活动方式个第三个','2023-03-11 11:42:49',2,'灌灌灌灌','2023-03-11 11:44:39','2023-03-11 11:42:49');

/*Table structure for table `butiehuodong` */

DROP TABLE IF EXISTS `butiehuodong`;

CREATE TABLE `butiehuodong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `butiehuodong_name` varchar(200) DEFAULT NULL COMMENT '补贴活动通告名称 Search111  ',
  `butiehuodong_photo` varchar(200) DEFAULT NULL COMMENT '补贴活动通告图片 ',
  `butiehuodong_types` int(11) NOT NULL COMMENT '补贴活动通告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '补贴活动通告发布时间 ',
  `butiehuodong_content` text COMMENT '补贴活动通告内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='补贴活动通告';

/*Data for the table `butiehuodong` */

insert  into `butiehuodong`(`id`,`butiehuodong_name`,`butiehuodong_photo`,`butiehuodong_types`,`insert_time`,`butiehuodong_content`,`create_time`) values (1,'补贴活动通告名称1','upload/butiehuodong1.jpg',1,'2023-03-11 11:11:59','补贴活动通告内容1','2023-03-11 11:11:59'),(2,'补贴活动通告名称2','upload/butiehuodong2.jpg',2,'2023-03-11 11:11:59','补贴活动通告内容2','2023-03-11 11:11:59'),(3,'补贴活动通告名称3','upload/butiehuodong3.jpg',2,'2023-03-11 11:11:59','补贴活动通告内容3','2023-03-11 11:11:59'),(4,'补贴活动通告名称4','upload/butiehuodong4.jpg',1,'2023-03-11 11:11:59','补贴活动通告内容4','2023-03-11 11:11:59'),(5,'补贴活动通告名称5','upload/butiehuodong5.jpg',2,'2023-03-11 11:11:59','补贴活动通告内容5','2023-03-11 11:11:59'),(6,'补贴活动通告名称6','upload/butiehuodong6.jpg',2,'2023-03-11 11:11:59','补贴活动通告内容6','2023-03-11 11:11:59'),(7,'补贴活动通告名称7','upload/butiehuodong7.jpg',2,'2023-03-11 11:11:59','补贴活动通告内容7','2023-03-11 11:11:59'),(8,'补贴活动通告名称8','upload/butiehuodong8.jpg',1,'2023-03-11 11:11:59','补贴活动通告内容8','2023-03-11 11:11:59'),(9,'补贴活动通告名称9','upload/butiehuodong9.jpg',2,'2023-03-11 11:11:59','补贴活动通告内容9','2023-03-11 11:11:59'),(10,'补贴活动通告名称10','upload/butiehuodong10.jpg',1,'2023-03-11 11:11:59','补贴活动通告内容10','2023-03-11 11:11:59'),(11,'补贴活动通告名称11','upload/butiehuodong11.jpg',2,'2023-03-11 11:11:59','补贴活动通告内容11','2023-03-11 11:11:59'),(12,'补贴活动通告名称12','upload/butiehuodong12.jpg',1,'2023-03-11 11:11:59','补贴活动通告内容12','2023-03-11 11:11:59'),(13,'补贴活动通告名称13','upload/butiehuodong13.jpg',2,'2023-03-11 11:11:59','补贴活动通告内容13','2023-03-11 11:11:59'),(14,'补贴活动通告名称14','upload/butiehuodong14.jpg',2,'2023-03-11 11:11:59','补贴活动通告内容14','2023-03-11 11:11:59');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dangyuanfazhanjilu` */

DROP TABLE IF EXISTS `dangyuanfazhanjilu`;

CREATE TABLE `dangyuanfazhanjilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dangyuanfazhanjilu_uuid_number` varchar(200) DEFAULT NULL COMMENT '党员发展编号',
  `dangyuanfazhanjilu_name` varchar(200) DEFAULT NULL COMMENT '发展标题  Search111 ',
  `dangyuanfazhanjilu_file` varchar(200) DEFAULT NULL COMMENT '入党文件',
  `dangyuanfazhanjilu_video` varchar(200) DEFAULT NULL COMMENT '入党宣誓视频',
  `dangyuanfazhanjilu_types` int(11) DEFAULT NULL COMMENT '发展类型 Search111',
  `fazhan_time` timestamp NULL DEFAULT NULL COMMENT '发展时间',
  `dangyuanfazhanjilu_content` text COMMENT '发展备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='党员发展';

/*Data for the table `dangyuanfazhanjilu` */

insert  into `dangyuanfazhanjilu`(`id`,`yonghu_id`,`dangyuanfazhanjilu_uuid_number`,`dangyuanfazhanjilu_name`,`dangyuanfazhanjilu_file`,`dangyuanfazhanjilu_video`,`dangyuanfazhanjilu_types`,`fazhan_time`,`dangyuanfazhanjilu_content`,`insert_time`,`create_time`) values (1,3,'1678504319279','发展标题1','upload/file.rar','upload/video.mp4',2,'2023-03-11 11:11:59','发展备注1','2023-03-11 11:11:59','2023-03-11 11:11:59'),(2,2,'1678504319220','发展标题2','upload/file.rar','upload/video.mp4',2,'2023-03-11 11:11:59','发展备注2','2023-03-11 11:11:59','2023-03-11 11:11:59'),(3,1,'1678504319279','发展标题3','upload/file.rar','upload/video.mp4',2,'2023-03-11 11:11:59','发展备注3','2023-03-11 11:11:59','2023-03-11 11:11:59'),(4,3,'1678504319251','发展标题4','upload/file.rar','upload/video.mp4',2,'2023-03-11 11:11:59','发展备注4','2023-03-11 11:11:59','2023-03-11 11:11:59'),(5,2,'1678504319309','发展标题5','upload/file.rar','upload/video.mp4',1,'2023-03-11 11:11:59','发展备注5','2023-03-11 11:11:59','2023-03-11 11:11:59'),(6,3,'1678504319300','发展标题6','upload/file.rar','upload/video.mp4',1,'2023-03-11 11:11:59','发展备注6','2023-03-11 11:11:59','2023-03-11 11:11:59'),(7,1,'1678504319282','发展标题7','upload/file.rar','upload/video.mp4',1,'2023-03-11 11:11:59','发展备注7','2023-03-11 11:11:59','2023-03-11 11:11:59'),(8,3,'1678504319292','发展标题8','upload/file.rar','upload/video.mp4',2,'2023-03-11 11:11:59','发展备注8','2023-03-11 11:11:59','2023-03-11 11:11:59'),(9,1,'1678504319268','发展标题9','upload/file.rar','upload/video.mp4',2,'2023-03-11 11:11:59','发展备注9','2023-03-11 11:11:59','2023-03-11 11:11:59'),(10,3,'1678504319267','发展标题10','upload/file.rar','upload/video.mp4',1,'2023-03-11 11:11:59','发展备注10','2023-03-11 11:11:59','2023-03-11 11:11:59'),(11,3,'1678504319292','发展标题11','upload/file.rar','upload/video.mp4',1,'2023-03-11 11:11:59','发展备注11','2023-03-11 11:11:59','2023-03-11 11:11:59'),(12,3,'1678504319281','发展标题12','upload/file.rar','upload/video.mp4',2,'2023-03-11 11:11:59','发展备注12','2023-03-11 11:11:59','2023-03-11 11:11:59'),(13,1,'1678504319214','发展标题13','upload/file.rar','upload/video.mp4',1,'2023-03-11 11:11:59','发展备注13','2023-03-11 11:11:59','2023-03-11 11:11:59'),(14,1,'1678504319273','发展标题14','upload/file.rar','upload/video.mp4',1,'2023-03-11 11:11:59','发展备注14','2023-03-11 11:11:59','2023-03-11 11:11:59'),(15,4,'1678506284785','标题111','/upload/1678506295279.doc','/upload/1678506297501.mp4',1,'2023-03-11 11:44:59','<p>好地方是固定</p>','2023-03-11 11:45:03','2023-03-11 11:45:03');

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-11 11:11:45'),(2,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-11 11:11:45'),(3,'butiehuodong_types','补贴活动通告类型',1,'补贴活动通告类型1',NULL,NULL,'2023-03-11 11:11:45'),(4,'butiehuodong_types','补贴活动通告类型',2,'补贴活动通告类型2',NULL,NULL,'2023-03-11 11:11:45'),(5,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-11 11:11:45'),(6,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-11 11:11:45'),(7,'wenhua_types','文化程度',1,'高中',NULL,NULL,'2023-03-11 11:11:45'),(8,'wenhua_types','文化程度',2,'大专',NULL,NULL,'2023-03-11 11:11:45'),(9,'wenhua_types','文化程度',3,'本科',NULL,NULL,'2023-03-11 11:11:45'),(10,'wenhua_types','文化程度',4,'研究生',NULL,NULL,'2023-03-11 11:11:45'),(11,'zhuangtai_types','状态',1,'群众',NULL,NULL,'2023-03-11 11:11:45'),(12,'zhuangtai_types','状态',2,'党员',NULL,NULL,'2023-03-11 11:11:45'),(13,'tudibiangeng_types','土地变更类型',1,'土地变更类型1',NULL,NULL,'2023-03-11 11:11:45'),(14,'tudibiangeng_types','土地变更类型',2,'土地变更类型2',NULL,NULL,'2023-03-11 11:11:45'),(15,'tudibiangeng_types','土地变更类型',3,'土地变更类型3',NULL,NULL,'2023-03-11 11:11:45'),(16,'tudibiangeng_types','土地变更类型',4,'土地变更类型4',NULL,NULL,'2023-03-11 11:11:45'),(17,'nongyebutie_types','农业补贴类型',1,'农业补贴类型1',NULL,NULL,'2023-03-11 11:11:45'),(18,'nongyebutie_types','农业补贴类型',2,'农业补贴类型2',NULL,NULL,'2023-03-11 11:11:45'),(19,'nongyebutie_types','农业补贴类型',3,'农业补贴类型3',NULL,NULL,'2023-03-11 11:11:45'),(20,'nongyebutie_types','农业补贴类型',4,'农业补贴类型4',NULL,NULL,'2023-03-11 11:11:45'),(21,'banshishenqing_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-11 11:11:46'),(22,'banshishenqing_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-03-11 11:11:46'),(23,'banshishenqing_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-11 11:11:46'),(24,'banshi_types','办事类型',1,'办事类型1',NULL,NULL,'2023-03-11 11:11:46'),(25,'banshi_types','办事类型',2,'办事类型2',NULL,NULL,'2023-03-11 11:11:46'),(26,'banshi_types','办事类型',3,'办事类型3',NULL,NULL,'2023-03-11 11:11:46'),(27,'banshi_types','办事类型',4,'办事类型4',NULL,NULL,'2023-03-11 11:11:46'),(28,'banshijieguo_types','办事结果',1,'已办',NULL,NULL,'2023-03-11 11:11:46'),(29,'banshijieguo_types','办事结果',2,'缺少资料',NULL,NULL,'2023-03-11 11:11:46'),(30,'banshijieguo_types','办事结果',3,'等待审核',NULL,NULL,'2023-03-11 11:11:46'),(31,'banshijieguo_types','办事结果',4,'其他',NULL,NULL,'2023-03-11 11:11:46'),(36,'dangyuanfazhanjilu_types','发展类型',1,'主动加入',NULL,NULL,'2023-03-11 11:11:46'),(37,'dangyuanfazhanjilu_types','发展类型',2,'宣传后加入',NULL,NULL,'2023-03-11 11:11:46'),(38,'wenhua_types','文化程度',5,'硕士',NULL,'','2023-03-11 11:43:56');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-11 11:11:59','公告详情1','2023-03-11 11:11:59'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-03-11 11:11:59','公告详情2','2023-03-11 11:11:59'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-03-11 11:11:59','公告详情3','2023-03-11 11:11:59'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-03-11 11:11:59','公告详情4','2023-03-11 11:11:59'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-03-11 11:11:59','公告详情5','2023-03-11 11:11:59'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-11 11:11:59','公告详情6','2023-03-11 11:11:59'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-03-11 11:11:59','公告详情7','2023-03-11 11:11:59'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-03-11 11:11:59','公告详情8','2023-03-11 11:11:59'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-11 11:11:59','公告详情9','2023-03-11 11:11:59'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-03-11 11:11:59','公告详情10','2023-03-11 11:11:59'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-11 11:11:59','公告详情11','2023-03-11 11:11:59'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-03-11 11:11:59','公告详情12','2023-03-11 11:11:59'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-11 11:11:59','公告详情13','2023-03-11 11:11:59'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-03-11 11:11:59','<p>公告详情14111</p>','2023-03-11 11:11:59');

/*Table structure for table `gongzuorenyuan` */

DROP TABLE IF EXISTS `gongzuorenyuan`;

CREATE TABLE `gongzuorenyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongzuorenyuan_name` varchar(200) DEFAULT NULL COMMENT '工作人员姓名 Search111 ',
  `gongzuorenyuan_phone` varchar(200) DEFAULT NULL COMMENT '工作人员手机号',
  `gongzuorenyuan_id_number` varchar(200) DEFAULT NULL COMMENT '工作人员身份证号',
  `gongzuorenyuan_photo` varchar(200) DEFAULT NULL COMMENT '工作人员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `gongzuorenyuan_email` varchar(200) DEFAULT NULL COMMENT '工作人员邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='工作人员';

/*Data for the table `gongzuorenyuan` */

insert  into `gongzuorenyuan`(`id`,`username`,`password`,`gongzuorenyuan_name`,`gongzuorenyuan_phone`,`gongzuorenyuan_id_number`,`gongzuorenyuan_photo`,`sex_types`,`gongzuorenyuan_email`,`create_time`) values (1,'a1','123456','工作人员姓名1','17703786901','410224199010102001','upload/gongzuorenyuan1.jpg',1,'1@qq.com','2023-03-11 11:11:59'),(2,'a2','123456','工作人员姓名2','17703786902','410224199010102002','upload/gongzuorenyuan2.jpg',1,'2@qq.com','2023-03-11 11:11:59'),(3,'a3','123456','工作人员姓名3','17703786903','410224199010102003','upload/gongzuorenyuan3.jpg',2,'3@qq.com','2023-03-11 11:11:59');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,3,'留言标题1','留言内容1','2023-03-11 11:11:59','回复信息1','2023-03-11 11:11:59','2023-03-11 11:11:59'),(2,3,'留言标题2','留言内容2','2023-03-11 11:11:59','回复信息2','2023-03-11 11:11:59','2023-03-11 11:11:59'),(3,3,'留言标题3','留言内容3','2023-03-11 11:11:59','回复信息3','2023-03-11 11:11:59','2023-03-11 11:11:59'),(4,2,'留言标题4','留言内容4','2023-03-11 11:11:59','回复信息4','2023-03-11 11:11:59','2023-03-11 11:11:59'),(5,3,'留言标题5','留言内容5','2023-03-11 11:11:59','回复信息5','2023-03-11 11:11:59','2023-03-11 11:11:59'),(6,2,'留言标题6','留言内容6','2023-03-11 11:11:59','回复信息6','2023-03-11 11:11:59','2023-03-11 11:11:59'),(7,3,'留言标题7','留言内容7','2023-03-11 11:11:59','回复信息7','2023-03-11 11:11:59','2023-03-11 11:11:59'),(8,3,'留言标题8','留言内容8','2023-03-11 11:11:59','回复信息8','2023-03-11 11:11:59','2023-03-11 11:11:59'),(9,3,'留言标题9','留言内容9','2023-03-11 11:11:59','回复信息9','2023-03-11 11:11:59','2023-03-11 11:11:59'),(10,3,'留言标题10','留言内容10','2023-03-11 11:11:59','回复信息10','2023-03-11 11:11:59','2023-03-11 11:11:59'),(11,1,'留言标题11','留言内容11','2023-03-11 11:11:59','回复信息11','2023-03-11 11:11:59','2023-03-11 11:11:59'),(12,3,'留言标题12','留言内容12','2023-03-11 11:11:59','回复信息12','2023-03-11 11:11:59','2023-03-11 11:11:59'),(13,1,'留言标题13','留言内容13','2023-03-11 11:11:59','回复信息13','2023-03-11 11:11:59','2023-03-11 11:11:59'),(14,1,'留言标题14','留言内容14','2023-03-11 11:11:59','回复信息14高公公','2023-03-11 11:48:19','2023-03-11 11:11:59'),(15,4,'标题1','5345311','2023-03-11 11:42:19','共和国刚','2023-03-11 11:46:00','2023-03-11 11:42:19');

/*Table structure for table `nongyebutie` */

DROP TABLE IF EXISTS `nongyebutie`;

CREATE TABLE `nongyebutie` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `nongyebutie_uuid_number` varchar(200) DEFAULT NULL COMMENT '农业补贴编号',
  `nongyebutie_name` varchar(200) DEFAULT NULL COMMENT '农业补贴标题  Search111 ',
  `nongyebutie_types` int(11) DEFAULT NULL COMMENT '农业补贴类型 Search111',
  `butie_jine` decimal(10,2) DEFAULT NULL COMMENT '补贴金额 ',
  `nongyebutie_time` timestamp NULL DEFAULT NULL COMMENT '补贴时间',
  `nongyebutie_content` text COMMENT '补贴内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='农业补贴';

/*Data for the table `nongyebutie` */

insert  into `nongyebutie`(`id`,`yonghu_id`,`nongyebutie_uuid_number`,`nongyebutie_name`,`nongyebutie_types`,`butie_jine`,`nongyebutie_time`,`nongyebutie_content`,`insert_time`,`create_time`) values (1,2,'1678504319248','农业补贴标题1',4,'830.61','2023-03-11 11:11:59','补贴内容1','2023-03-11 11:11:59','2023-03-11 11:11:59'),(2,2,'1678504319243','农业补贴标题2',4,'154.95','2023-03-11 11:11:59','补贴内容2','2023-03-11 11:11:59','2023-03-11 11:11:59'),(3,1,'1678504319249','农业补贴标题3',4,'477.91','2023-03-11 11:11:59','补贴内容3','2023-03-11 11:11:59','2023-03-11 11:11:59'),(4,3,'1678504319266','农业补贴标题4',1,'811.28','2023-03-11 11:11:59','补贴内容4','2023-03-11 11:11:59','2023-03-11 11:11:59'),(5,3,'1678504319281','农业补贴标题5',2,'496.85','2023-03-11 11:11:59','补贴内容5','2023-03-11 11:11:59','2023-03-11 11:11:59'),(6,3,'1678504319282','农业补贴标题6',2,'772.29','2023-03-11 11:11:59','补贴内容6','2023-03-11 11:11:59','2023-03-11 11:11:59'),(7,1,'1678504319232','农业补贴标题7',2,'278.79','2023-03-11 11:11:59','补贴内容7','2023-03-11 11:11:59','2023-03-11 11:11:59'),(8,2,'1678504319283','农业补贴标题8',3,'600.95','2023-03-11 11:11:59','补贴内容8','2023-03-11 11:11:59','2023-03-11 11:11:59'),(9,3,'1678504319270','农业补贴标题9',2,'522.40','2023-03-11 11:11:59','补贴内容9','2023-03-11 11:11:59','2023-03-11 11:11:59'),(10,1,'1678504319222','农业补贴标题10',3,'413.71','2023-03-11 11:11:59','补贴内容10','2023-03-11 11:11:59','2023-03-11 11:11:59'),(11,1,'1678504319230','农业补贴标题11',2,'953.28','2023-03-11 11:11:59','补贴内容11','2023-03-11 11:11:59','2023-03-11 11:11:59'),(12,1,'1678504319257','农业补贴标题12',2,'455.94','2023-03-11 11:11:59','补贴内容12','2023-03-11 11:11:59','2023-03-11 11:11:59'),(13,1,'1678504319254','农业补贴标题13',1,'266.79','2023-03-11 11:11:59','补贴内容13','2023-03-11 11:11:59','2023-03-11 11:11:59'),(14,1,'1678504319294','农业补贴标题14',3,'612.50','2023-03-11 11:11:59','补贴内容14','2023-03-11 11:11:59','2023-03-11 11:11:59');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','j1jdhwwb76vgugvjjr3chpmvl4xxtpzq','2023-03-11 11:14:58','2023-03-11 12:51:04'),(2,1,'a1','yonghu','用户','vgcz6637dxr7asy19lj2vtr4iq2jdnjl','2023-03-11 11:15:12','2023-03-11 12:27:59'),(3,4,'a5','yonghu','用户','dkr3394g99ru695ufvgi7xky0tw37ogu','2023-03-11 11:41:47','2023-03-11 12:41:48'),(4,3,'a3','yonghu','用户','bwbr2aihcn7j11i9jdwyzzlijqbbjulf','2023-03-11 11:42:31','2023-03-11 12:42:31'),(5,1,'a1','gongzuorenyuan','工作人员','3stbzns84mqkv6k9dv8nqb24smlymj5w','2023-03-11 11:47:49','2023-03-11 12:47:50');

/*Table structure for table `tudibiangeng` */

DROP TABLE IF EXISTS `tudibiangeng`;

CREATE TABLE `tudibiangeng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tudibiangeng_uuid_number` varchar(200) DEFAULT NULL COMMENT '土地变更编号',
  `tudibiangeng_name` varchar(200) DEFAULT NULL COMMENT '土地变更标题  Search111 ',
  `tudibiangeng_types` int(11) DEFAULT NULL COMMENT '土地变更类型 Search111',
  `tudibiangeng_address` varchar(200) DEFAULT NULL COMMENT '土地位置',
  `tudibiangeng_time` timestamp NULL DEFAULT NULL COMMENT '变更时间',
  `tudibiangeng_content` text COMMENT '变更内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='土地变更';

/*Data for the table `tudibiangeng` */

insert  into `tudibiangeng`(`id`,`yonghu_id`,`tudibiangeng_uuid_number`,`tudibiangeng_name`,`tudibiangeng_types`,`tudibiangeng_address`,`tudibiangeng_time`,`tudibiangeng_content`,`insert_time`,`create_time`) values (1,1,'1678504319283','土地变更标题1',1,'土地位置1','2023-03-11 11:11:59','变更内容1','2023-03-11 11:11:59','2023-03-11 11:11:59'),(2,2,'1678504319273','土地变更标题2',2,'土地位置2','2023-03-11 11:11:59','变更内容2','2023-03-11 11:11:59','2023-03-11 11:11:59'),(3,1,'1678504319287','土地变更标题3',3,'土地位置3','2023-03-11 11:11:59','变更内容3','2023-03-11 11:11:59','2023-03-11 11:11:59'),(4,3,'1678504319251','土地变更标题4',1,'土地位置4','2023-03-11 11:11:59','变更内容4','2023-03-11 11:11:59','2023-03-11 11:11:59'),(5,1,'1678504319255','土地变更标题5',3,'土地位置5','2023-03-11 11:11:59','变更内容5','2023-03-11 11:11:59','2023-03-11 11:11:59'),(6,2,'1678504319264','土地变更标题6',3,'土地位置6','2023-03-11 11:11:59','变更内容6','2023-03-11 11:11:59','2023-03-11 11:11:59'),(7,3,'1678504319229','土地变更标题7',2,'土地位置7','2023-03-11 11:11:59','变更内容7','2023-03-11 11:11:59','2023-03-11 11:11:59'),(8,1,'1678504319272','土地变更标题8',1,'土地位置8','2023-03-11 11:11:59','变更内容8','2023-03-11 11:11:59','2023-03-11 11:11:59'),(9,3,'1678504319230','土地变更标题9',1,'土地位置9','2023-03-11 11:11:59','变更内容9','2023-03-11 11:11:59','2023-03-11 11:11:59'),(10,1,'1678504319296','土地变更标题10',4,'土地位置10','2023-03-11 11:11:59','变更内容10','2023-03-11 11:11:59','2023-03-11 11:11:59'),(11,2,'1678504319302','土地变更标题11',4,'土地位置11','2023-03-11 11:11:59','变更内容11','2023-03-11 11:11:59','2023-03-11 11:11:59'),(12,2,'1678504319233','土地变更标题12',3,'土地位置12','2023-03-11 11:11:59','变更内容12','2023-03-11 11:11:59','2023-03-11 11:11:59'),(13,2,'1678504319279','土地变更标题13',1,'土地位置13','2023-03-11 11:11:59','变更内容13','2023-03-11 11:11:59','2023-03-11 11:11:59'),(14,1,'1678504319262','土地变更标题14',2,'土地位置14','2023-03-11 11:11:59','变更内容14','2023-03-11 11:11:59','2023-03-11 11:11:59');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-11 11:11:45');

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
  `wenhua_types` int(11) DEFAULT NULL COMMENT '文化程度',
  `zhuangtai_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`wenhua_types`,`zhuangtai_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,4,1,'1@qq.com','2023-03-11 11:11:59'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,1,1,'2@qq.com','2023-03-11 11:11:59'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,3,1,'3@qq.com','2023-03-11 11:11:59'),(4,'a5','123456','张5','17788889999','444888999966666665','upload/1678506114837.jpg',2,2,2,'5@qq.com','2023-03-11 11:41:42');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
