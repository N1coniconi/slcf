-- MySQL dump 10.13  Distrib 5.7.21, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: slcf
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) DEFAULT NULL COMMENT '标签名',
  `value` varchar(100) DEFAULT NULL COMMENT '数据值',
  `type` varchar(100) DEFAULT NULL COMMENT '类型',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `parent_id` bigint(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` int(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_del_flag` (`del_flag`),
  KEY `sys_dict_label` (`name`),
  KEY `sys_dict_value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict`
--

LOCK TABLES `sys_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '文件类型',
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件上传';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `time` int(11) DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,-1,'获取用户信息为空','登录',7,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:20:58'),(2,-1,'获取用户信息为空','登录',9,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:22:06'),(3,-1,'获取用户信息为空','登录',6,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:22:07'),(4,-1,'获取用户信息为空','登录',15,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:22:14'),(5,-1,'获取用户信息为空','登录',10,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:22:44'),(6,-1,'获取用户信息为空','登录',5,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:22:50'),(7,-1,'获取用户信息为空','登录',3,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:23:19'),(8,-1,'获取用户信息为空','登录',12,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:23:25'),(9,-1,'获取用户信息为空','登录',10,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:23:45'),(10,-1,'获取用户信息为空','登录',10,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:23:50'),(11,-1,'获取用户信息为空','登录',12,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:24:14'),(12,-1,'获取用户信息为空','登录',11,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:24:19'),(13,-1,'获取用户信息为空','登录',19,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:24:26'),(14,-1,'获取用户信息为空','登录',8,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:24:27'),(15,-1,'获取用户信息为空','登录',9,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:25:49'),(16,-1,'获取用户信息为空','登录',6,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:25:53'),(17,-1,'获取用户信息为空','登录',16,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:30:41'),(18,-1,'获取用户信息为空','登录',17,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:30:47'),(19,-1,'获取用户信息为空','登录',18,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:31:09'),(20,-1,'获取用户信息为空','登录',9,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:35:42'),(21,-1,'获取用户信息为空','登录',15,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:35:51'),(22,-1,'获取用户信息为空','登录',15,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:35:54'),(23,-1,'获取用户信息为空','登录',12,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:36:06'),(24,1,'admin','登录',23,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:38:17'),(25,1,'admin','请求访问主页',44,'com.huhao.springboot.system.controller.LoginController.index()',NULL,'127.0.0.1','2018-06-10 10:38:17'),(26,1,'admin','登录',9,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:38:52'),(27,1,'admin','请求访问主页',12,'com.huhao.springboot.system.controller.LoginController.index()',NULL,'127.0.0.1','2018-06-10 10:38:53'),(28,1,'admin','请求访问主页',8,'com.huhao.springboot.system.controller.LoginController.index()',NULL,'127.0.0.1','2018-06-10 10:38:54'),(29,-1,'获取用户信息为空','登录',14,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:39:29'),(30,-1,'获取用户信息为空','登录',3,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:39:35'),(31,-1,'获取用户信息为空','登录',5,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:39:45'),(32,1,'admin','请求访问主页',11,'com.huhao.springboot.system.controller.LoginController.index()',NULL,'127.0.0.1','2018-06-10 10:42:35'),(33,1,'admin','登录',6,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:42:38'),(34,1,'admin','请求访问主页',6,'com.huhao.springboot.system.controller.LoginController.index()',NULL,'127.0.0.1','2018-06-10 10:42:39'),(35,1,'admin','error',NULL,'http://127.0.0.1:8081/sys/user/personal','java.lang.NullPointerException',NULL,'2018-06-10 10:42:46'),(36,1,'admin','请求访问主页',7,'com.huhao.springboot.system.controller.LoginController.index()',NULL,'127.0.0.1','2018-06-10 10:42:54'),(37,1,'admin','请求访问主页',20,'com.huhao.springboot.system.controller.LoginController.index()',NULL,'127.0.0.1','2018-06-10 10:44:43'),(38,1,'admin','添加角色',2,'com.huhao.springboot.system.controller.RoleController.add()',NULL,'127.0.0.1','2018-06-10 10:45:00'),(39,1,'admin','添加用户',11,'com.huhao.springboot.system.controller.UserController.add()',NULL,'127.0.0.1','2018-06-10 10:45:09'),(40,1,'admin','保存用户',41,'com.huhao.springboot.system.controller.UserController.save()',NULL,'127.0.0.1','2018-06-10 10:45:38'),(41,138,'test','登录',4,'com.huhao.springboot.system.controller.LoginController.ajaxLogin()',NULL,'127.0.0.1','2018-06-10 10:46:08'),(42,138,'test','请求访问主页',27,'com.huhao.springboot.system.controller.LoginController.index()',NULL,'127.0.0.1','2018-06-10 10:46:08'),(43,138,'test','删除菜单',1,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:46:54'),(44,1,'admin','删除菜单',47,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:47:06'),(45,1,'admin','删除菜单',37,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:47:16'),(46,1,'admin','删除菜单',33,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:47:41'),(47,1,'admin','删除菜单',23,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:47:46'),(48,1,'admin','删除菜单',22,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:47:50'),(49,1,'admin','删除菜单',32,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:47:54'),(50,1,'admin','删除菜单',38,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:47:58'),(51,1,'admin','删除菜单',32,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:48:02'),(52,1,'admin','删除菜单',24,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:48:06'),(53,1,'admin','删除菜单',26,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:48:11'),(54,1,'admin','删除菜单',29,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:48:17'),(55,1,'admin','删除菜单',35,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:48:21'),(56,1,'admin','删除菜单',32,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:48:25'),(57,1,'admin','删除菜单',27,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:48:28'),(58,1,'admin','删除菜单',23,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:48:31'),(59,1,'admin','删除菜单',35,'com.huhao.springboot.system.controller.MenuController.remove()',NULL,'127.0.0.1','2018-06-10 10:48:33'),(60,1,'admin','请求访问主页',8,'com.huhao.springboot.system.controller.LoginController.index()',NULL,'127.0.0.1','2018-06-10 10:49:16'),(61,138,'test','请求访问主页',13,'com.huhao.springboot.system.controller.LoginController.index()',NULL,'127.0.0.1','2018-06-10 10:51:16'),(62,138,'test','编辑角色',4,'com.huhao.springboot.system.controller.RoleController.edit()',NULL,'127.0.0.1','2018-06-10 10:51:27'),(63,138,'test','添加菜单',0,'com.huhao.springboot.system.controller.MenuController.add()',NULL,'127.0.0.1','2018-06-10 10:51:40'),(64,138,'test','请求更改用户密码',0,'com.huhao.springboot.system.controller.UserController.resetPwd()',NULL,'127.0.0.1','2018-06-10 10:51:49'),(65,138,'test','error',NULL,'http://127.0.0.1:8081/sys/user/edit/138','java.lang.NullPointerException',NULL,'2018-06-10 10:51:54'),(66,138,'test','error',NULL,'http://127.0.0.1:8081/sys/user/edit/1','java.lang.NullPointerException',NULL,'2018-06-10 10:51:57'),(67,138,'test','编辑菜单',15,'com.huhao.springboot.system.controller.MenuController.edit()',NULL,'127.0.0.1','2018-06-10 10:52:18');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COMMENT='菜单管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,0,'基础管理','','',0,'fa fa-bars',0,'2017-08-09 22:49:47',NULL),(2,3,'系统菜单','sys/menu/','sys:menu:menu',1,'fa fa-th-list',2,'2017-08-09 22:55:15',NULL),(3,0,'系统管理',NULL,NULL,0,'fa fa-desktop',1,'2017-08-09 23:06:55','2017-08-14 14:13:43'),(6,3,'用户管理','sys/user/','sys:user:user',1,'fa fa-user',0,'2017-08-10 14:12:11',NULL),(7,3,'角色管理','sys/role','sys:role:role',1,'fa fa-paw',1,'2017-08-10 14:13:19',NULL),(12,6,'新增','','sys:user:add',2,'',0,'2017-08-14 10:51:35',NULL),(13,6,'编辑','','sys:user:edit',2,'',0,'2017-08-14 10:52:06',NULL),(14,6,'删除',NULL,'sys:user:remove',2,NULL,0,'2017-08-14 10:52:24',NULL),(15,7,'新增','','sys:role:add',2,'',0,'2017-08-14 10:56:37',NULL),(20,2,'新增','','sys:menu:add',2,'',0,'2017-08-14 10:59:32',NULL),(21,2,'编辑','','sys:menu:edit',2,'',0,'2017-08-14 10:59:56',NULL),(22,2,'删除','','sys:menu:remove',2,'',0,'2017-08-14 11:00:26',NULL),(24,6,'批量删除','','sys:user:batchRemove',2,'',0,'2017-08-14 17:27:18',NULL),(25,6,'停用',NULL,'sys:user:disable',2,NULL,0,'2017-08-14 17:27:43',NULL),(26,6,'重置密码','','sys:user:resetPwd',2,'',0,'2017-08-14 17:28:34',NULL),(27,91,'系统日志','common/log','common:log',1,'fa fa-warning',0,'2017-08-14 22:11:53',NULL),(28,27,'刷新',NULL,'sys:log:list',2,NULL,0,'2017-08-14 22:30:22',NULL),(29,27,'删除',NULL,'sys:log:remove',2,NULL,0,'2017-08-14 22:30:43',NULL),(30,27,'清空',NULL,'sys:log:clear',2,NULL,0,'2017-08-14 22:31:02',NULL),(48,77,'代码生成','common/generator','common:generator',1,'fa fa-code',3,NULL,NULL),(55,7,'编辑','','sys:role:edit',2,'',NULL,NULL,NULL),(56,7,'删除','','sys:role:remove',2,NULL,NULL,NULL,NULL),(57,91,'运行监控','/druid/index.html','',1,'fa fa-caret-square-o-right',1,NULL,NULL),(61,2,'批量删除','','sys:menu:batchRemove',2,NULL,NULL,NULL,NULL),(62,7,'批量删除','','sys:role:batchRemove',2,NULL,NULL,NULL,NULL),(71,1,'文件管理','/common/sysFile','common:sysFile:sysFile',1,'fa fa-folder-open',2,NULL,NULL),(72,77,'计划任务','common/job','common:taskScheduleJob',1,'fa fa-hourglass-1',4,NULL,NULL),(73,3,'部门管理','/system/sysDept','system:sysDept:sysDept',1,'fa fa-users',3,NULL,NULL),(74,73,'增加','/system/sysDept/add','system:sysDept:add',2,NULL,1,NULL,NULL),(75,73,'刪除','system/sysDept/remove','system:sysDept:remove',2,NULL,2,NULL,NULL),(76,73,'编辑','/system/sysDept/edit','system:sysDept:edit',2,NULL,3,NULL,NULL),(77,0,'系统工具','','',0,'fa fa-gear',4,NULL,NULL),(78,1,'数据字典','/common/dict','common:dict:dict',1,'fa fa-book',1,NULL,NULL),(79,78,'增加','/common/dict/add','common:dict:add',2,NULL,2,NULL,NULL),(80,78,'编辑','/common/dict/edit','common:dict:edit',2,NULL,2,NULL,NULL),(81,78,'删除','/common/dict/remove','common:dict:remove',2,'',3,NULL,NULL),(83,78,'批量删除','/common/dict/batchRemove','common:dict:batchRemove',2,'',4,NULL,NULL),(84,0,'办公管理','','',0,'fa fa-laptop',5,NULL,NULL),(85,84,'通知公告','oa/notify','oa:notify:notify',1,'fa fa-pencil-square',NULL,NULL,NULL),(86,85,'新增','oa/notify/add','oa:notify:add',2,'fa fa-plus',1,NULL,NULL),(87,85,'编辑','oa/notify/edit','oa:notify:edit',2,'fa fa-pencil-square-o',2,NULL,NULL),(88,85,'删除','oa/notify/remove','oa:notify:remove',2,'fa fa-minus',NULL,NULL,NULL),(89,85,'批量删除','oa/notify/batchRemove','oa:notify:batchRemove',2,'',NULL,NULL,NULL),(90,84,'我的通知','oa/notify/selfNotify','',1,'fa fa-envelope-square',NULL,NULL,NULL),(91,0,'系统监控','','',0,'fa fa-video-camera',5,NULL,NULL),(92,91,'在线用户','sys/online','',1,'fa fa-user',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `role_sign` varchar(100) DEFAULT NULL COMMENT '角色标识',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级用户角色','admin','拥有最高权限',2,'2017-08-12 00:43:52','2017-08-12 19:14:59');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3136 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (3073,1,101),(3074,1,99),(3075,1,95),(3076,1,92),(3077,1,57),(3078,1,30),(3079,1,29),(3080,1,28),(3081,1,90),(3082,1,89),(3083,1,88),(3084,1,87),(3085,1,86),(3086,1,72),(3087,1,48),(3088,1,103),(3089,1,68),(3090,1,60),(3091,1,59),(3092,1,58),(3093,1,51),(3094,1,76),(3095,1,75),(3096,1,74),(3097,1,62),(3098,1,56),(3099,1,55),(3100,1,15),(3101,1,26),(3102,1,25),(3103,1,24),(3104,1,14),(3105,1,13),(3106,1,12),(3107,1,61),(3108,1,22),(3109,1,21),(3110,1,20),(3111,1,83),(3112,1,81),(3113,1,80),(3114,1,79),(3115,1,71),(3116,1,96),(3117,1,94),(3118,1,93),(3119,1,27),(3120,1,91),(3121,1,85),(3122,1,84),(3123,1,77),(3124,1,102),(3125,1,50),(3126,1,73),(3127,1,7),(3128,1,6),(3129,1,2),(3130,1,3),(3131,1,78),(3132,1,1),(3133,1,104),(3134,1,49),(3135,1,-1);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_task`
--

DROP TABLE IF EXISTS `sys_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron表达式',
  `method_name` varchar(255) DEFAULT NULL COMMENT '任务调用的方法名',
  `is_concurrent` varchar(255) DEFAULT NULL COMMENT '任务是否有状态',
  `description` varchar(255) DEFAULT NULL COMMENT '任务描述',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `bean_class` varchar(255) DEFAULT NULL COMMENT '任务执行时调用哪个类的方法 包名+类名',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `job_status` varchar(255) DEFAULT NULL COMMENT '任务状态',
  `job_group` varchar(255) DEFAULT NULL COMMENT '任务分组',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `spring_bean` varchar(255) DEFAULT NULL COMMENT 'Spring bean',
  `job_name` varchar(255) DEFAULT NULL COMMENT '任务名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_task`
--

LOCK TABLES `sys_task` WRITE;
/*!40000 ALTER TABLE `sys_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `dept_id` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(255) DEFAULT NULL COMMENT '状态 0:禁用，1:正常',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `sex` bigint(32) DEFAULT NULL COMMENT '性别',
  `birth` datetime DEFAULT NULL COMMENT '出身日期',
  `pic_id` bigint(32) DEFAULT NULL,
  `live_address` varchar(500) DEFAULT NULL COMMENT '现居住地',
  `hobby` varchar(255) DEFAULT NULL COMMENT '爱好',
  `province` varchar(255) DEFAULT NULL COMMENT '省份',
  `city` varchar(255) DEFAULT NULL COMMENT '所在城市',
  `district` varchar(255) DEFAULT NULL COMMENT '所在地区',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','超级管理员','27bd386e70f280e24c2f4f2a549b82cf',6,'admin@example.com','17699999999',1,1,'2017-08-15 21:40:39','2017-08-15 21:41:00',96,'2017-12-14 00:00:00',208,'ccc','121;','北京市','北京市市辖区','东城区'),(138,'test','test','25bb7c42604b0e7aba7bcae50e7762a9',NULL,'test@qq.com',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1,1),(2,138,1);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-10 10:56:42
