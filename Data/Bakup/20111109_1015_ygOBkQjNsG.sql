-- Y-cityCMS SQL Dump
-- Time:2011-11-09 10:16:11
-- http://www.y-city.net.cn 

-- 
-- 表的结构 `ycity_ad`
-- 
CREATE TABLE `ycity_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '名称',
  `category_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '广告分类',
  `title_style` text NOT NULL COMMENT '标题样式',
  `title_style_serialize` text NOT NULL COMMENT '标题样式序列化',
  `ad_type` char(10) NOT NULL DEFAULT 'text' COMMENT '广告类型',
  `link_url` varchar(255) NOT NULL COMMENT '链接地址',
  `description` text NOT NULL COMMENT '简介',
  `code_body` text NOT NULL COMMENT '代码内容',
  `height` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '高度',
  `width` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '宽度',
  `text_body` text NOT NULL COMMENT '文字广告内容',
  `font_size` varchar(255) NOT NULL COMMENT '文字大小',
  `attach_file` varchar(50) NOT NULL COMMENT '附件名称',
  `attach_ext` varchar(50) NOT NULL COMMENT '附件类型',
  `attach_alt` varchar(255) NOT NULL COMMENT 'alt 文字',
  `display_order` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序数值，越小排得越前',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='广告';
-- 
-- 导出表中的数据 `ycity_ad`
--
INSERT INTO `ycity_ad` VALUES ('1','test1','33','color:#800080;font-weight:bold;TEXT-DECORATION: underline','a:3:{s:5:\"color\";s:7:\"#800080\";s:4:\"bold\";s:4:\"bold\";s:9:\"underline\";s:9:\"underline\";}','image','http://www.y-city.net.cn','test','test','0','0','','12px','Ad/4b89c936da4e9.jpg','','test','0','0','1267282184','1267324636');
INSERT INTO `ycity_ad` VALUES ('2','test2','33','','','image','http://www.y-city.net.cn','','','0','0','','12px','Ad/4b89c945afdab.jpg','','','0','0','1267321157','0');
INSERT INTO `ycity_ad` VALUES ('3','test3','33','','','image','http://www.y-city.net.cn','','','0','0','','12px','Ad/4b89c96059ba3.jpg','','','0','0','1267321184','1267793689');
-- 
-- 表的结构 `ycity_admin`
-- 
CREATE TABLE `ycity_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '角色组',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `realname` varchar(50) NOT NULL COMMENT '真实姓名',
  `notepad` text NOT NULL COMMENT '备忘录',
  `sex` char(5) NOT NULL DEFAULT '男' COMMENT '性别',
  `telephone` varchar(50) NOT NULL COMMENT '电话',
  `mobile_telephone` varchar(50) NOT NULL COMMENT '手机',
  `fax` varchar(50) NOT NULL COMMENT 'FAX',
  `web_url` varchar(100) NOT NULL COMMENT '网址',
  `email` varchar(50) NOT NULL COMMENT '电子邮件',
  `qq` varchar(50) NOT NULL COMMENT 'QQ',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '地址',
  `login_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='管理员';
-- 
-- 导出表中的数据 `ycity_admin`
--
INSERT INTO `ycity_admin` VALUES ('1','1','admin','74c43b7ec689955c9c1517294e92500f','admin','dad','男','05560000000','13900000000','05560000000','http://www.y-city.net.cn','y_city@qeeyang.com','5565907','','1','1306847872','1306847872','1306847872');
-- 
-- 表的结构 `ycity_admin_log`
-- 
CREATE TABLE `ycity_admin_log` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(3) unsigned NOT NULL COMMENT '用户ID',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户',
  `action` text NOT NULL COMMENT 'URI',
  `ip` char(15) NOT NULL DEFAULT '127.0.0.1' COMMENT 'IP',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1710 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='管理员操作日志';
-- 
-- 导出表中的数据 `ycity_admin_log`
--
INSERT INTO `ycity_admin_log` VALUES ('3','1','admin','/zhaoming/admin.php/Index/index.html','127.0.0.1','1306848096');
INSERT INTO `ycity_admin_log` VALUES ('4','1','admin','/zhaoming/admin.php/Ad/index.html','127.0.0.1','1306848215');
INSERT INTO `ycity_admin_log` VALUES ('5','1','admin','/zhaoming/admin.php/Case/index.html','127.0.0.1','1306848266');
INSERT INTO `ycity_admin_log` VALUES ('6','1','admin','/zhaoming/admin.php/Case/index.html','127.0.0.1','1306848283');
INSERT INTO `ycity_admin_log` VALUES ('7','1','admin','/zhaoming/admin.php/Case/index.html','127.0.0.1','1306848303');
INSERT INTO `ycity_admin_log` VALUES ('8','1','admin','/zhaoming/admin.php/Case/index.html','127.0.0.1','1306848306');
INSERT INTO `ycity_admin_log` VALUES ('9','1','admin','/zhaoming/admin.php/Case/index.html','127.0.0.1','1306848372');
INSERT INTO `ycity_admin_log` VALUES ('10','1','admin','/zhaoming/admin.php/Case/index.html','127.0.0.1','1306848731');
INSERT INTO `ycity_admin_log` VALUES ('11','1','admin','/zhaoming/admin.php/Case/index.html','127.0.0.1','1306848842');
INSERT INTO `ycity_admin_log` VALUES ('12','1','admin','/zhaoming/admin.php/Case/index.html','127.0.0.1','1306848871');
INSERT INTO `ycity_admin_log` VALUES ('13','1','admin','/zhaoming/admin.php/Case/doInsert.html (¼','127.0.0.1','1306848985');
INSERT INTO `ycity_admin_log` VALUES ('14','1','admin','/zhaoming/admin.php/Case','127.0.0.1','1306848989');
INSERT INTO `ycity_admin_log` VALUES ('15','1','admin','/ycity/admin.php','127.0.0.1','1310003002');
INSERT INTO `ycity_admin_log` VALUES ('16','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1310003027');
INSERT INTO `ycity_admin_log` VALUES ('17','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1310003038');
INSERT INTO `ycity_admin_log` VALUES ('18','1','admin','/ycity/admin.php','127.0.0.1','1310528975');
INSERT INTO `ycity_admin_log` VALUES ('19','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1310528979');
INSERT INTO `ycity_admin_log` VALUES ('20','1','admin','/ycity/admin.php/Config/doCore.html (编辑内核配置)','127.0.0.1','1310528991');
INSERT INTO `ycity_admin_log` VALUES ('21','1','admin','/ycity/admin.php/Config','127.0.0.1','1310528995');
INSERT INTO `ycity_admin_log` VALUES ('22','1','admin','/ycity/admin.php/Config','127.0.0.1','1310528995');
INSERT INTO `ycity_admin_log` VALUES ('23','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310528999');
INSERT INTO `ycity_admin_log` VALUES ('24','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310529001');
INSERT INTO `ycity_admin_log` VALUES ('25','1','admin','/ycity/admin.php/Page/index.html','127.0.0.1','1310529016');
INSERT INTO `ycity_admin_log` VALUES ('26','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310536512');
INSERT INTO `ycity_admin_log` VALUES ('27','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310536515');
INSERT INTO `ycity_admin_log` VALUES ('28','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310536527');
INSERT INTO `ycity_admin_log` VALUES ('29','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310536772');
INSERT INTO `ycity_admin_log` VALUES ('30','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1310536810');
INSERT INTO `ycity_admin_log` VALUES ('31','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1310536813');
INSERT INTO `ycity_admin_log` VALUES ('32','1','admin','/ycity/admin.php/Config/doModify.html (编辑系统配置)','127.0.0.1','1310536832');
INSERT INTO `ycity_admin_log` VALUES ('33','1','admin','/ycity/admin.php/Config','127.0.0.1','1310536834');
INSERT INTO `ycity_admin_log` VALUES ('34','1','admin','/ycity/admin.php/Config/doCore.html (编辑内核配置)','127.0.0.1','1310537319');
INSERT INTO `ycity_admin_log` VALUES ('35','1','admin','/ycity/admin.php/Config','127.0.0.1','1310537321');
INSERT INTO `ycity_admin_log` VALUES ('36','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310537325');
INSERT INTO `ycity_admin_log` VALUES ('37','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310537329');
INSERT INTO `ycity_admin_log` VALUES ('38','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1310538268');
INSERT INTO `ycity_admin_log` VALUES ('39','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1310538474');
INSERT INTO `ycity_admin_log` VALUES ('40','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310538531');
INSERT INTO `ycity_admin_log` VALUES ('41','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1310539412');
INSERT INTO `ycity_admin_log` VALUES ('42','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310539499');
INSERT INTO `ycity_admin_log` VALUES ('43','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310539518');
INSERT INTO `ycity_admin_log` VALUES ('44','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310539524');
INSERT INTO `ycity_admin_log` VALUES ('45','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310539526');
INSERT INTO `ycity_admin_log` VALUES ('46','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1310540035');
INSERT INTO `ycity_admin_log` VALUES ('47','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1310540072');
INSERT INTO `ycity_admin_log` VALUES ('48','1','admin','/ycity/admin.php/Config/doModify.html (编辑系统配置)','127.0.0.1','1310540093');
INSERT INTO `ycity_admin_log` VALUES ('49','1','admin','/ycity/admin.php/Config','127.0.0.1','1310540095');
INSERT INTO `ycity_admin_log` VALUES ('50','1','admin','/ycity/admin.php/Config/doCore.html (编辑内核配置)','127.0.0.1','1310542656');
INSERT INTO `ycity_admin_log` VALUES ('51','1','admin','/ycity/admin.php/Config','127.0.0.1','1310542659');
INSERT INTO `ycity_admin_log` VALUES ('52','1','admin','/ycity/admin.php/Config','127.0.0.1','1310542663');
INSERT INTO `ycity_admin_log` VALUES ('53','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310542668');
INSERT INTO `ycity_admin_log` VALUES ('54','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310542670');
INSERT INTO `ycity_admin_log` VALUES ('55','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310542674');
INSERT INTO `ycity_admin_log` VALUES ('56','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310542713');
INSERT INTO `ycity_admin_log` VALUES ('57','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1310542716');
INSERT INTO `ycity_admin_log` VALUES ('58','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310542721');
INSERT INTO `ycity_admin_log` VALUES ('59','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310542725');
INSERT INTO `ycity_admin_log` VALUES ('60','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1310542734');
INSERT INTO `ycity_admin_log` VALUES ('61','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1310543152');
INSERT INTO `ycity_admin_log` VALUES ('62','1','admin','/ycity/admin.php/Config/doCore.html (编辑内核配置)','127.0.0.1','1310543165');
INSERT INTO `ycity_admin_log` VALUES ('63','1','admin','/ycity/admin.php/Config','127.0.0.1','1310543167');
INSERT INTO `ycity_admin_log` VALUES ('64','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310543172');
INSERT INTO `ycity_admin_log` VALUES ('65','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310543174');
INSERT INTO `ycity_admin_log` VALUES ('66','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310543178');
INSERT INTO `ycity_admin_log` VALUES ('67','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310543203');
INSERT INTO `ycity_admin_log` VALUES ('68','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310543206');
INSERT INTO `ycity_admin_log` VALUES ('69','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1310543211');
INSERT INTO `ycity_admin_log` VALUES ('70','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1310543311');
INSERT INTO `ycity_admin_log` VALUES ('71','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310543313');
INSERT INTO `ycity_admin_log` VALUES ('72','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310543315');
INSERT INTO `ycity_admin_log` VALUES ('73','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310543319');
INSERT INTO `ycity_admin_log` VALUES ('74','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310543354');
INSERT INTO `ycity_admin_log` VALUES ('75','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1310543368');
INSERT INTO `ycity_admin_log` VALUES ('76','1','admin','/ycity/admin.php','127.0.0.1','1310614292');
INSERT INTO `ycity_admin_log` VALUES ('77','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1310615350');
INSERT INTO `ycity_admin_log` VALUES ('78','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1310615508');
INSERT INTO `ycity_admin_log` VALUES ('79','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1310615783');
INSERT INTO `ycity_admin_log` VALUES ('80','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1310615811');
INSERT INTO `ycity_admin_log` VALUES ('81','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310615814');
INSERT INTO `ycity_admin_log` VALUES ('82','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310615817');
INSERT INTO `ycity_admin_log` VALUES ('83','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310615825');
INSERT INTO `ycity_admin_log` VALUES ('84','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1310615829');
INSERT INTO `ycity_admin_log` VALUES ('85','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1310626375');
INSERT INTO `ycity_admin_log` VALUES ('86','1','admin','/ycity/admin.php/Category/doCommand.html (删除: 5)','127.0.0.1','1310626387');
INSERT INTO `ycity_admin_log` VALUES ('87','1','admin','/ycity/admin.php/Category','127.0.0.1','1310626389');
INSERT INTO `ycity_admin_log` VALUES ('88','1','admin','/ycity/admin.php/Category/doCommand.html (删除: 4)','127.0.0.1','1310626397');
INSERT INTO `ycity_admin_log` VALUES ('89','1','admin','/ycity/admin.php/Category','127.0.0.1','1310626399');
INSERT INTO `ycity_admin_log` VALUES ('90','1','admin','/ycity/admin.php/Category/doModify.html (编辑:2)','127.0.0.1','1310626428');
INSERT INTO `ycity_admin_log` VALUES ('91','1','admin','/ycity/admin.php/Category','127.0.0.1','1310626430');
INSERT INTO `ycity_admin_log` VALUES ('92','1','admin','/ycity/admin.php/Category/doModify.html (编辑:3)','127.0.0.1','1310626437');
INSERT INTO `ycity_admin_log` VALUES ('93','1','admin','/ycity/admin.php/Category','127.0.0.1','1310626439');
INSERT INTO `ycity_admin_log` VALUES ('94','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310626645');
INSERT INTO `ycity_admin_log` VALUES ('95','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310626647');
INSERT INTO `ycity_admin_log` VALUES ('96','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310627370');
INSERT INTO `ycity_admin_log` VALUES ('97','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310627426');
INSERT INTO `ycity_admin_log` VALUES ('98','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310627456');
INSERT INTO `ycity_admin_log` VALUES ('99','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310627512');
INSERT INTO `ycity_admin_log` VALUES ('100','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310627699');
INSERT INTO `ycity_admin_log` VALUES ('101','1','admin','/ycity/admin.php/Page/index.html','127.0.0.1','1310627898');
INSERT INTO `ycity_admin_log` VALUES ('102','1','admin','/ycity/admin.php/Page/doModify.html (编辑:2)','127.0.0.1','1310629914');
INSERT INTO `ycity_admin_log` VALUES ('103','1','admin','/ycity/admin.php/Page','127.0.0.1','1310629917');
INSERT INTO `ycity_admin_log` VALUES ('104','1','admin','/ycity/admin.php/Page/doModify.html (编辑:3)','127.0.0.1','1310629938');
INSERT INTO `ycity_admin_log` VALUES ('105','1','admin','/ycity/admin.php/Page','127.0.0.1','1310629941');
INSERT INTO `ycity_admin_log` VALUES ('106','1','admin','/ycity/admin.php/Page/doInsert.html (提交录入:4)','127.0.0.1','1310629998');
INSERT INTO `ycity_admin_log` VALUES ('107','1','admin','/ycity/admin.php/Page','127.0.0.1','1310630002');
INSERT INTO `ycity_admin_log` VALUES ('108','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310630798');
INSERT INTO `ycity_admin_log` VALUES ('109','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1310646060');
INSERT INTO `ycity_admin_log` VALUES ('110','1','admin','/ycity/admin.php/Config/doCore.html (编辑内核配置)','127.0.0.1','1310646065');
INSERT INTO `ycity_admin_log` VALUES ('111','1','admin','/ycity/admin.php/Config','127.0.0.1','1310646067');
INSERT INTO `ycity_admin_log` VALUES ('112','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310646070');
INSERT INTO `ycity_admin_log` VALUES ('113','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310651013');
INSERT INTO `ycity_admin_log` VALUES ('114','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310651015');
INSERT INTO `ycity_admin_log` VALUES ('115','1','admin','/ycity/admin.php','127.0.0.1','1310715468');
INSERT INTO `ycity_admin_log` VALUES ('116','1','admin','/ycity/admin.php/Case/index.html','127.0.0.1','1310715816');
INSERT INTO `ycity_admin_log` VALUES ('117','1','admin','/ycity/admin.php/Case/index.html','127.0.0.1','1310715910');
INSERT INTO `ycity_admin_log` VALUES ('118','1','admin','/ycity/admin.php/Case/index.html','127.0.0.1','1310715924');
INSERT INTO `ycity_admin_log` VALUES ('119','1','admin','/ycity/admin.php/Case/index.html','127.0.0.1','1310715927');
INSERT INTO `ycity_admin_log` VALUES ('120','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1310715973');
INSERT INTO `ycity_admin_log` VALUES ('121','1','admin','/ycity/admin.php/Notice/index.html','127.0.0.1','1310715998');
INSERT INTO `ycity_admin_log` VALUES ('122','1','admin','/ycity/admin.php/Case/index.html','127.0.0.1','1310716154');
INSERT INTO `ycity_admin_log` VALUES ('123','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1310716352');
INSERT INTO `ycity_admin_log` VALUES ('124','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310717572');
INSERT INTO `ycity_admin_log` VALUES ('125','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310717575');
INSERT INTO `ycity_admin_log` VALUES ('126','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310718008');
INSERT INTO `ycity_admin_log` VALUES ('127','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310718380');
INSERT INTO `ycity_admin_log` VALUES ('128','1','admin','/ycity/admin.php/','127.0.0.1','1310959826');
INSERT INTO `ycity_admin_log` VALUES ('129','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1310959834');
INSERT INTO `ycity_admin_log` VALUES ('130','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310959838');
INSERT INTO `ycity_admin_log` VALUES ('131','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310970823');
INSERT INTO `ycity_admin_log` VALUES ('132','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310970962');
INSERT INTO `ycity_admin_log` VALUES ('133','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310971022');
INSERT INTO `ycity_admin_log` VALUES ('134','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310971070');
INSERT INTO `ycity_admin_log` VALUES ('135','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310971101');
INSERT INTO `ycity_admin_log` VALUES ('136','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310971271');
INSERT INTO `ycity_admin_log` VALUES ('137','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310971327');
INSERT INTO `ycity_admin_log` VALUES ('138','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310972363');
INSERT INTO `ycity_admin_log` VALUES ('139','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1310972759');
INSERT INTO `ycity_admin_log` VALUES ('140','1','admin','/ycity/admin.php/','127.0.0.1','1310972761');
INSERT INTO `ycity_admin_log` VALUES ('141','1','admin','/ycity/admin.php/','127.0.0.1','1311061471');
INSERT INTO `ycity_admin_log` VALUES ('142','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1311061474');
INSERT INTO `ycity_admin_log` VALUES ('143','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1311061477');
INSERT INTO `ycity_admin_log` VALUES ('144','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1311061480');
INSERT INTO `ycity_admin_log` VALUES ('145','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1311061614');
INSERT INTO `ycity_admin_log` VALUES ('146','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1311062891');
INSERT INTO `ycity_admin_log` VALUES ('147','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1311062922');
INSERT INTO `ycity_admin_log` VALUES ('148','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1311063048');
INSERT INTO `ycity_admin_log` VALUES ('149','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1311063050');
INSERT INTO `ycity_admin_log` VALUES ('150','1','admin','/ycity/admin.php/Template/index.html','127.0.0.1','1311063121');
INSERT INTO `ycity_admin_log` VALUES ('151','1','admin','/ycity/admin.php/','127.0.0.1','1311231861');
INSERT INTO `ycity_admin_log` VALUES ('152','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1311231866');
INSERT INTO `ycity_admin_log` VALUES ('153','1','admin','/ycity/admin.php/','127.0.0.1','1311413640');
INSERT INTO `ycity_admin_log` VALUES ('154','1','admin','/ycity/admin.php/Page/index.html','127.0.0.1','1311413648');
INSERT INTO `ycity_admin_log` VALUES ('155','1','admin','/ycity/admin.php/Page/doInsert.html (提交录入:5)','127.0.0.1','1311413850');
INSERT INTO `ycity_admin_log` VALUES ('156','1','admin','/ycity/admin.php/Page','127.0.0.1','1311413853');
INSERT INTO `ycity_admin_log` VALUES ('157','1','admin','/ycity/admin.php/Page/doModify.html (编辑:5)','127.0.0.1','1311413932');
INSERT INTO `ycity_admin_log` VALUES ('158','1','admin','/ycity/admin.php/Page','127.0.0.1','1311413936');
INSERT INTO `ycity_admin_log` VALUES ('159','1','admin','/ycity/admin.php','127.0.0.1','1311573766');
INSERT INTO `ycity_admin_log` VALUES ('160','1','admin','/ycity/admin.php/Label/lists.html','127.0.0.1','1311573844');
INSERT INTO `ycity_admin_log` VALUES ('161','1','admin','/ycity/admin.php','127.0.0.1','1317277286');
INSERT INTO `ycity_admin_log` VALUES ('162','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1317277290');
INSERT INTO `ycity_admin_log` VALUES ('163','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317277293');
INSERT INTO `ycity_admin_log` VALUES ('164','1','admin','/ycity/admin.php/Config/doCore.html (编辑内核配置)','127.0.0.1','1317277300');
INSERT INTO `ycity_admin_log` VALUES ('165','1','admin','/ycity/admin.php/Config','127.0.0.1','1317277302');
INSERT INTO `ycity_admin_log` VALUES ('166','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317277311');
INSERT INTO `ycity_admin_log` VALUES ('167','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317278252');
INSERT INTO `ycity_admin_log` VALUES ('168','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317278375');
INSERT INTO `ycity_admin_log` VALUES ('169','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317278655');
INSERT INTO `ycity_admin_log` VALUES ('170','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317278968');
INSERT INTO `ycity_admin_log` VALUES ('171','1','admin','/ycity/admin.php/','127.0.0.1','1317278984');
INSERT INTO `ycity_admin_log` VALUES ('172','1','admin','/ycity/admin.php','127.0.0.1','1317279061');
INSERT INTO `ycity_admin_log` VALUES ('173','1','admin','/ycity/admin.php','127.0.0.1','1317279233');
INSERT INTO `ycity_admin_log` VALUES ('174','1','admin','/ycity/admin.php','127.0.0.1','1317279264');
INSERT INTO `ycity_admin_log` VALUES ('175','1','admin','/ycity/admin.php','127.0.0.1','1317279338');
INSERT INTO `ycity_admin_log` VALUES ('176','1','admin','/ycity/admin.php','127.0.0.1','1317279410');
INSERT INTO `ycity_admin_log` VALUES ('177','1','admin','/ycity/admin.php','127.0.0.1','1317279486');
INSERT INTO `ycity_admin_log` VALUES ('178','1','admin','/ycity/admin.php','127.0.0.1','1317279509');
INSERT INTO `ycity_admin_log` VALUES ('179','1','admin','/ycity/admin.php','127.0.0.1','1317279681');
INSERT INTO `ycity_admin_log` VALUES ('180','1','admin','/ycity/admin.php','127.0.0.1','1317279772');
INSERT INTO `ycity_admin_log` VALUES ('181','1','admin','/ycity/admin.php','127.0.0.1','1317280093');
INSERT INTO `ycity_admin_log` VALUES ('182','1','admin','/ycity/admin.php','127.0.0.1','1317280146');
INSERT INTO `ycity_admin_log` VALUES ('183','1','admin','/ycity/admin.php','127.0.0.1','1317280169');
INSERT INTO `ycity_admin_log` VALUES ('184','1','admin','/ycity/admin.php','127.0.0.1','1317280234');
INSERT INTO `ycity_admin_log` VALUES ('185','1','admin','/ycity/admin.php','127.0.0.1','1317280487');
INSERT INTO `ycity_admin_log` VALUES ('186','1','admin','/ycity/admin.php','127.0.0.1','1317280504');
INSERT INTO `ycity_admin_log` VALUES ('187','1','admin','/ycity/admin.php','127.0.0.1','1317280581');
INSERT INTO `ycity_admin_log` VALUES ('188','1','admin','/ycity/admin.php','127.0.0.1','1317280783');
INSERT INTO `ycity_admin_log` VALUES ('189','1','admin','/ycity/admin.php','127.0.0.1','1317280810');
INSERT INTO `ycity_admin_log` VALUES ('190','1','admin','/ycity/admin.php','127.0.0.1','1317280855');
INSERT INTO `ycity_admin_log` VALUES ('191','1','admin','/ycity/admin.php','127.0.0.1','1317280903');
INSERT INTO `ycity_admin_log` VALUES ('192','1','admin','/ycity/admin.php','127.0.0.1','1317280918');
INSERT INTO `ycity_admin_log` VALUES ('193','1','admin','/ycity/admin.php','127.0.0.1','1317281027');
INSERT INTO `ycity_admin_log` VALUES ('194','1','admin','/ycity/admin.php','127.0.0.1','1317281094');
INSERT INTO `ycity_admin_log` VALUES ('195','1','admin','/ycity/admin.php','127.0.0.1','1317281098');
INSERT INTO `ycity_admin_log` VALUES ('196','1','admin','/ycity/admin.php','127.0.0.1','1317284895');
INSERT INTO `ycity_admin_log` VALUES ('197','1','admin','/ycity/admin.php','127.0.0.1','1317285006');
INSERT INTO `ycity_admin_log` VALUES ('198','1','admin','/ycity/admin.php','127.0.0.1','1317285023');
INSERT INTO `ycity_admin_log` VALUES ('199','1','admin','/ycity/admin.php','127.0.0.1','1317285032');
INSERT INTO `ycity_admin_log` VALUES ('200','1','admin','/ycity/admin.php','127.0.0.1','1317285059');
INSERT INTO `ycity_admin_log` VALUES ('201','1','admin','/ycity/admin.php','127.0.0.1','1317285119');
INSERT INTO `ycity_admin_log` VALUES ('202','1','admin','/ycity/admin.php','127.0.0.1','1317285135');
INSERT INTO `ycity_admin_log` VALUES ('203','1','admin','/ycity/admin.php','127.0.0.1','1317285202');
INSERT INTO `ycity_admin_log` VALUES ('204','1','admin','/ycity/admin.php','127.0.0.1','1317285215');
INSERT INTO `ycity_admin_log` VALUES ('205','1','admin','/ycity/admin.php','127.0.0.1','1317285228');
INSERT INTO `ycity_admin_log` VALUES ('206','1','admin','/ycity/admin.php','127.0.0.1','1317285240');
INSERT INTO `ycity_admin_log` VALUES ('207','1','admin','/ycity/admin.php','127.0.0.1','1317285280');
INSERT INTO `ycity_admin_log` VALUES ('208','1','admin','/ycity/admin.php','127.0.0.1','1317285338');
INSERT INTO `ycity_admin_log` VALUES ('209','1','admin','/ycity/admin.php','127.0.0.1','1317285371');
INSERT INTO `ycity_admin_log` VALUES ('210','1','admin','/ycity/admin.php','127.0.0.1','1317285390');
INSERT INTO `ycity_admin_log` VALUES ('211','1','admin','/ycity/admin.php','127.0.0.1','1317285392');
INSERT INTO `ycity_admin_log` VALUES ('212','1','admin','/ycity/admin.php','127.0.0.1','1317285431');
INSERT INTO `ycity_admin_log` VALUES ('213','1','admin','/ycity/admin.php','127.0.0.1','1317285458');
INSERT INTO `ycity_admin_log` VALUES ('214','1','admin','/ycity/admin.php','127.0.0.1','1317285501');
INSERT INTO `ycity_admin_log` VALUES ('215','1','admin','/ycity/admin.php','127.0.0.1','1317285512');
INSERT INTO `ycity_admin_log` VALUES ('216','1','admin','/ycity/admin.php','127.0.0.1','1317285670');
INSERT INTO `ycity_admin_log` VALUES ('217','1','admin','/ycity/admin.php','127.0.0.1','1317285689');
INSERT INTO `ycity_admin_log` VALUES ('218','1','admin','/ycity/admin.php','127.0.0.1','1317285717');
INSERT INTO `ycity_admin_log` VALUES ('219','1','admin','/ycity/admin.php','127.0.0.1','1317285736');
INSERT INTO `ycity_admin_log` VALUES ('220','1','admin','/ycity/admin.php','127.0.0.1','1317285790');
INSERT INTO `ycity_admin_log` VALUES ('221','1','admin','/ycity/admin.php','127.0.0.1','1317288700');
INSERT INTO `ycity_admin_log` VALUES ('222','1','admin','/ycity/admin.php','127.0.0.1','1317288863');
INSERT INTO `ycity_admin_log` VALUES ('223','1','admin','/ycity/admin.php','127.0.0.1','1317288937');
INSERT INTO `ycity_admin_log` VALUES ('224','1','admin','/ycity/admin.php','127.0.0.1','1317288957');
INSERT INTO `ycity_admin_log` VALUES ('225','1','admin','/ycity/admin.php','127.0.0.1','1317289011');
INSERT INTO `ycity_admin_log` VALUES ('226','1','admin','/ycity/admin.php','127.0.0.1','1317289024');
INSERT INTO `ycity_admin_log` VALUES ('227','1','admin','/ycity/admin.php','127.0.0.1','1317289075');
INSERT INTO `ycity_admin_log` VALUES ('228','1','admin','/ycity/admin.php','127.0.0.1','1317289091');
INSERT INTO `ycity_admin_log` VALUES ('229','1','admin','/ycity/admin.php','127.0.0.1','1317289145');
INSERT INTO `ycity_admin_log` VALUES ('230','1','admin','/ycity/admin.php','127.0.0.1','1317289898');
INSERT INTO `ycity_admin_log` VALUES ('231','1','admin','/ycity/admin.php','127.0.0.1','1317289920');
INSERT INTO `ycity_admin_log` VALUES ('232','1','admin','/ycity/admin.php','127.0.0.1','1317290207');
INSERT INTO `ycity_admin_log` VALUES ('233','1','admin','/ycity/admin.php','127.0.0.1','1317290247');
INSERT INTO `ycity_admin_log` VALUES ('234','1','admin','/ycity/admin.php','127.0.0.1','1317290283');
INSERT INTO `ycity_admin_log` VALUES ('235','1','admin','/ycity/admin.php','127.0.0.1','1317290301');
INSERT INTO `ycity_admin_log` VALUES ('236','1','admin','/ycity/admin.php','127.0.0.1','1317290324');
INSERT INTO `ycity_admin_log` VALUES ('237','1','admin','/ycity/admin.php','127.0.0.1','1317290333');
INSERT INTO `ycity_admin_log` VALUES ('238','1','admin','/ycity/admin.php','127.0.0.1','1317290374');
INSERT INTO `ycity_admin_log` VALUES ('239','1','admin','/ycity/admin.php','127.0.0.1','1317290406');
INSERT INTO `ycity_admin_log` VALUES ('240','1','admin','/ycity/admin.php','127.0.0.1','1317290414');
INSERT INTO `ycity_admin_log` VALUES ('241','1','admin','/ycity/admin.php','127.0.0.1','1317290440');
INSERT INTO `ycity_admin_log` VALUES ('242','1','admin','/ycity/admin.php','127.0.0.1','1317290575');
INSERT INTO `ycity_admin_log` VALUES ('243','1','admin','/ycity/admin.php','127.0.0.1','1317290595');
INSERT INTO `ycity_admin_log` VALUES ('244','1','admin','/ycity/admin.php','127.0.0.1','1317290603');
INSERT INTO `ycity_admin_log` VALUES ('245','1','admin','/ycity/admin.php','127.0.0.1','1317290613');
INSERT INTO `ycity_admin_log` VALUES ('246','1','admin','/ycity/admin.php','127.0.0.1','1317290662');
INSERT INTO `ycity_admin_log` VALUES ('247','1','admin','/ycity/admin.php','127.0.0.1','1317290678');
INSERT INTO `ycity_admin_log` VALUES ('248','1','admin','/ycity/admin.php','127.0.0.1','1317290871');
INSERT INTO `ycity_admin_log` VALUES ('249','1','admin','/ycity/admin.php','127.0.0.1','1317291010');
INSERT INTO `ycity_admin_log` VALUES ('250','1','admin','/ycity/admin.php','127.0.0.1','1317291105');
INSERT INTO `ycity_admin_log` VALUES ('251','1','admin','/ycity/admin.php','127.0.0.1','1317291127');
INSERT INTO `ycity_admin_log` VALUES ('252','1','admin','/ycity/admin.php','127.0.0.1','1317291194');
INSERT INTO `ycity_admin_log` VALUES ('253','1','admin','/ycity/admin.php','127.0.0.1','1317291211');
INSERT INTO `ycity_admin_log` VALUES ('254','1','admin','/ycity/admin.php','127.0.0.1','1317291290');
INSERT INTO `ycity_admin_log` VALUES ('255','1','admin','/ycity/admin.php','127.0.0.1','1317291463');
INSERT INTO `ycity_admin_log` VALUES ('256','1','admin','/ycity/admin.php','127.0.0.1','1317291538');
INSERT INTO `ycity_admin_log` VALUES ('257','1','admin','/ycity/admin.php','127.0.0.1','1317291559');
INSERT INTO `ycity_admin_log` VALUES ('258','1','admin','/ycity/admin.php','127.0.0.1','1317291605');
INSERT INTO `ycity_admin_log` VALUES ('259','1','admin','/ycity/admin.php','127.0.0.1','1317304150');
INSERT INTO `ycity_admin_log` VALUES ('260','1','admin','/ycity/admin.php','127.0.0.1','1317304225');
INSERT INTO `ycity_admin_log` VALUES ('261','1','admin','/ycity/admin.php','127.0.0.1','1317304270');
INSERT INTO `ycity_admin_log` VALUES ('262','1','admin','/ycity/admin.php','127.0.0.1','1317304433');
INSERT INTO `ycity_admin_log` VALUES ('263','1','admin','/ycity/admin.php','127.0.0.1','1317304486');
INSERT INTO `ycity_admin_log` VALUES ('264','1','admin','/ycity/admin.php','127.0.0.1','1317304512');
INSERT INTO `ycity_admin_log` VALUES ('265','1','admin','/ycity/admin.php','127.0.0.1','1317304561');
INSERT INTO `ycity_admin_log` VALUES ('266','1','admin','/ycity/admin.php','127.0.0.1','1317304575');
INSERT INTO `ycity_admin_log` VALUES ('267','1','admin','/ycity/admin.php','127.0.0.1','1317355854');
INSERT INTO `ycity_admin_log` VALUES ('268','1','admin','/ycity/admin.php','127.0.0.1','1317366755');
INSERT INTO `ycity_admin_log` VALUES ('269','1','admin','/ycity/admin.php','127.0.0.1','1317367199');
INSERT INTO `ycity_admin_log` VALUES ('270','1','admin','/ycity/admin.php','127.0.0.1','1317367608');
INSERT INTO `ycity_admin_log` VALUES ('271','1','admin','/ycity/admin.php','127.0.0.1','1317367630');
INSERT INTO `ycity_admin_log` VALUES ('272','1','admin','/ycity/admin.php/Template/index.html','127.0.0.1','1317367876');
INSERT INTO `ycity_admin_log` VALUES ('273','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1317367998');
INSERT INTO `ycity_admin_log` VALUES ('274','1','admin','/ycity/admin.php','127.0.0.1','1317368085');
INSERT INTO `ycity_admin_log` VALUES ('275','1','admin','/ycity/admin.php/Template/index.html','127.0.0.1','1317368175');
INSERT INTO `ycity_admin_log` VALUES ('276','1','admin','/ycity/admin.php/Case/index.html','127.0.0.1','1317368197');
INSERT INTO `ycity_admin_log` VALUES ('277','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317368346');
INSERT INTO `ycity_admin_log` VALUES ('278','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317368352');
INSERT INTO `ycity_admin_log` VALUES ('279','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317368748');
INSERT INTO `ycity_admin_log` VALUES ('280','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317369143');
INSERT INTO `ycity_admin_log` VALUES ('281','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317369264');
INSERT INTO `ycity_admin_log` VALUES ('282','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317369284');
INSERT INTO `ycity_admin_log` VALUES ('283','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317369320');
INSERT INTO `ycity_admin_log` VALUES ('284','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317369384');
INSERT INTO `ycity_admin_log` VALUES ('285','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317369475');
INSERT INTO `ycity_admin_log` VALUES ('286','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317369481');
INSERT INTO `ycity_admin_log` VALUES ('287','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317369497');
INSERT INTO `ycity_admin_log` VALUES ('288','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317371039');
INSERT INTO `ycity_admin_log` VALUES ('289','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317371085');
INSERT INTO `ycity_admin_log` VALUES ('290','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317371097');
INSERT INTO `ycity_admin_log` VALUES ('291','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317371268');
INSERT INTO `ycity_admin_log` VALUES ('292','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317381761');
INSERT INTO `ycity_admin_log` VALUES ('293','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317381778');
INSERT INTO `ycity_admin_log` VALUES ('294','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317381803');
INSERT INTO `ycity_admin_log` VALUES ('295','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317381815');
INSERT INTO `ycity_admin_log` VALUES ('296','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317381855');
INSERT INTO `ycity_admin_log` VALUES ('297','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317381870');
INSERT INTO `ycity_admin_log` VALUES ('298','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317381910');
INSERT INTO `ycity_admin_log` VALUES ('299','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317381926');
INSERT INTO `ycity_admin_log` VALUES ('300','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317381930');
INSERT INTO `ycity_admin_log` VALUES ('301','1','admin','/ycity/admin.php','127.0.0.1','1317381956');
INSERT INTO `ycity_admin_log` VALUES ('302','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317382035');
INSERT INTO `ycity_admin_log` VALUES ('303','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317382284');
INSERT INTO `ycity_admin_log` VALUES ('304','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317382332');
INSERT INTO `ycity_admin_log` VALUES ('305','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317382477');
INSERT INTO `ycity_admin_log` VALUES ('306','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317382512');
INSERT INTO `ycity_admin_log` VALUES ('307','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317382547');
INSERT INTO `ycity_admin_log` VALUES ('308','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317382676');
INSERT INTO `ycity_admin_log` VALUES ('309','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317382717');
INSERT INTO `ycity_admin_log` VALUES ('310','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317382729');
INSERT INTO `ycity_admin_log` VALUES ('311','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317382752');
INSERT INTO `ycity_admin_log` VALUES ('312','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317382760');
INSERT INTO `ycity_admin_log` VALUES ('313','1','admin','/ycity/admin.php','127.0.0.1','1317382767');
INSERT INTO `ycity_admin_log` VALUES ('314','1','admin','/ycity/admin.php','127.0.0.1','1317382824');
INSERT INTO `ycity_admin_log` VALUES ('315','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383255');
INSERT INTO `ycity_admin_log` VALUES ('316','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383286');
INSERT INTO `ycity_admin_log` VALUES ('317','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383339');
INSERT INTO `ycity_admin_log` VALUES ('318','1','admin','/ycity/admin.php','127.0.0.1','1317383350');
INSERT INTO `ycity_admin_log` VALUES ('319','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383355');
INSERT INTO `ycity_admin_log` VALUES ('320','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383365');
INSERT INTO `ycity_admin_log` VALUES ('321','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383410');
INSERT INTO `ycity_admin_log` VALUES ('322','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383426');
INSERT INTO `ycity_admin_log` VALUES ('323','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383450');
INSERT INTO `ycity_admin_log` VALUES ('324','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383490');
INSERT INTO `ycity_admin_log` VALUES ('325','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383559');
INSERT INTO `ycity_admin_log` VALUES ('326','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383620');
INSERT INTO `ycity_admin_log` VALUES ('327','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383625');
INSERT INTO `ycity_admin_log` VALUES ('328','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383683');
INSERT INTO `ycity_admin_log` VALUES ('329','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383759');
INSERT INTO `ycity_admin_log` VALUES ('330','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383808');
INSERT INTO `ycity_admin_log` VALUES ('331','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317383989');
INSERT INTO `ycity_admin_log` VALUES ('332','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317384049');
INSERT INTO `ycity_admin_log` VALUES ('333','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317384092');
INSERT INTO `ycity_admin_log` VALUES ('334','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317384106');
INSERT INTO `ycity_admin_log` VALUES ('335','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317384188');
INSERT INTO `ycity_admin_log` VALUES ('336','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317384214');
INSERT INTO `ycity_admin_log` VALUES ('337','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317384300');
INSERT INTO `ycity_admin_log` VALUES ('338','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317384334');
INSERT INTO `ycity_admin_log` VALUES ('339','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317384519');
INSERT INTO `ycity_admin_log` VALUES ('340','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317384555');
INSERT INTO `ycity_admin_log` VALUES ('341','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317384585');
INSERT INTO `ycity_admin_log` VALUES ('342','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317384616');
INSERT INTO `ycity_admin_log` VALUES ('343','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317384773');
INSERT INTO `ycity_admin_log` VALUES ('344','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317384916');
INSERT INTO `ycity_admin_log` VALUES ('345','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317384976');
INSERT INTO `ycity_admin_log` VALUES ('346','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317384992');
INSERT INTO `ycity_admin_log` VALUES ('347','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317385030');
INSERT INTO `ycity_admin_log` VALUES ('348','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317385060');
INSERT INTO `ycity_admin_log` VALUES ('349','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317385209');
INSERT INTO `ycity_admin_log` VALUES ('350','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317385231');
INSERT INTO `ycity_admin_log` VALUES ('351','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317385916');
INSERT INTO `ycity_admin_log` VALUES ('352','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317386408');
INSERT INTO `ycity_admin_log` VALUES ('353','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317386412');
INSERT INTO `ycity_admin_log` VALUES ('354','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317386433');
INSERT INTO `ycity_admin_log` VALUES ('355','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317386523');
INSERT INTO `ycity_admin_log` VALUES ('356','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317386668');
INSERT INTO `ycity_admin_log` VALUES ('357','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317386710');
INSERT INTO `ycity_admin_log` VALUES ('358','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317386742');
INSERT INTO `ycity_admin_log` VALUES ('359','1','admin','/ycity/admin.php/','127.0.0.1','1317557211');
INSERT INTO `ycity_admin_log` VALUES ('360','1','admin','/ycity/admin.php/','127.0.0.1','1317557336');
INSERT INTO `ycity_admin_log` VALUES ('361','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317557347');
INSERT INTO `ycity_admin_log` VALUES ('362','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317557399');
INSERT INTO `ycity_admin_log` VALUES ('363','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317557457');
INSERT INTO `ycity_admin_log` VALUES ('364','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317558085');
INSERT INTO `ycity_admin_log` VALUES ('365','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317558167');
INSERT INTO `ycity_admin_log` VALUES ('366','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317558180');
INSERT INTO `ycity_admin_log` VALUES ('367','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317558192');
INSERT INTO `ycity_admin_log` VALUES ('368','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317558217');
INSERT INTO `ycity_admin_log` VALUES ('369','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317558270');
INSERT INTO `ycity_admin_log` VALUES ('370','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317558647');
INSERT INTO `ycity_admin_log` VALUES ('371','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317558660');
INSERT INTO `ycity_admin_log` VALUES ('372','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317558685');
INSERT INTO `ycity_admin_log` VALUES ('373','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317558786');
INSERT INTO `ycity_admin_log` VALUES ('374','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317558797');
INSERT INTO `ycity_admin_log` VALUES ('375','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317558812');
INSERT INTO `ycity_admin_log` VALUES ('376','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317558962');
INSERT INTO `ycity_admin_log` VALUES ('377','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317558976');
INSERT INTO `ycity_admin_log` VALUES ('378','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317558989');
INSERT INTO `ycity_admin_log` VALUES ('379','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317562617');
INSERT INTO `ycity_admin_log` VALUES ('380','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317562702');
INSERT INTO `ycity_admin_log` VALUES ('381','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317562718');
INSERT INTO `ycity_admin_log` VALUES ('382','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317562755');
INSERT INTO `ycity_admin_log` VALUES ('383','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317563088');
INSERT INTO `ycity_admin_log` VALUES ('384','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317563253');
INSERT INTO `ycity_admin_log` VALUES ('385','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317563313');
INSERT INTO `ycity_admin_log` VALUES ('386','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317563346');
INSERT INTO `ycity_admin_log` VALUES ('387','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317563554');
INSERT INTO `ycity_admin_log` VALUES ('388','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317563587');
INSERT INTO `ycity_admin_log` VALUES ('389','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317563712');
INSERT INTO `ycity_admin_log` VALUES ('390','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317563720');
INSERT INTO `ycity_admin_log` VALUES ('391','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317563782');
INSERT INTO `ycity_admin_log` VALUES ('392','1','admin','/ycity/admin.php/','127.0.0.1','1317607791');
INSERT INTO `ycity_admin_log` VALUES ('393','1','admin','/ycity/admin.php','127.0.0.1','1317607844');
INSERT INTO `ycity_admin_log` VALUES ('394','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317607901');
INSERT INTO `ycity_admin_log` VALUES ('395','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317607910');
INSERT INTO `ycity_admin_log` VALUES ('396','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608117');
INSERT INTO `ycity_admin_log` VALUES ('397','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608138');
INSERT INTO `ycity_admin_log` VALUES ('398','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608151');
INSERT INTO `ycity_admin_log` VALUES ('399','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608162');
INSERT INTO `ycity_admin_log` VALUES ('400','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608179');
INSERT INTO `ycity_admin_log` VALUES ('401','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608195');
INSERT INTO `ycity_admin_log` VALUES ('402','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608206');
INSERT INTO `ycity_admin_log` VALUES ('403','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608217');
INSERT INTO `ycity_admin_log` VALUES ('404','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608226');
INSERT INTO `ycity_admin_log` VALUES ('405','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608326');
INSERT INTO `ycity_admin_log` VALUES ('406','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608404');
INSERT INTO `ycity_admin_log` VALUES ('407','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608444');
INSERT INTO `ycity_admin_log` VALUES ('408','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608468');
INSERT INTO `ycity_admin_log` VALUES ('409','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608479');
INSERT INTO `ycity_admin_log` VALUES ('410','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608506');
INSERT INTO `ycity_admin_log` VALUES ('411','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608530');
INSERT INTO `ycity_admin_log` VALUES ('412','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608558');
INSERT INTO `ycity_admin_log` VALUES ('413','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608578');
INSERT INTO `ycity_admin_log` VALUES ('414','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608596');
INSERT INTO `ycity_admin_log` VALUES ('415','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608616');
INSERT INTO `ycity_admin_log` VALUES ('416','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608674');
INSERT INTO `ycity_admin_log` VALUES ('417','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608689');
INSERT INTO `ycity_admin_log` VALUES ('418','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608698');
INSERT INTO `ycity_admin_log` VALUES ('419','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608712');
INSERT INTO `ycity_admin_log` VALUES ('420','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608749');
INSERT INTO `ycity_admin_log` VALUES ('421','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608775');
INSERT INTO `ycity_admin_log` VALUES ('422','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608799');
INSERT INTO `ycity_admin_log` VALUES ('423','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317608823');
INSERT INTO `ycity_admin_log` VALUES ('424','1','admin','/ycity/admin.php/Config/doModify.html (编辑系统配置)','127.0.0.1','1317635577');
INSERT INTO `ycity_admin_log` VALUES ('425','1','admin','/ycity/admin.php/Config','127.0.0.1','1317635579');
INSERT INTO `ycity_admin_log` VALUES ('426','1','admin','/ycity/admin.php/Config','127.0.0.1','1317639404');
INSERT INTO `ycity_admin_log` VALUES ('427','1','admin','/ycity/admin.php/Config','127.0.0.1','1317639623');
INSERT INTO `ycity_admin_log` VALUES ('428','1','admin','/ycity/admin.php/Config','127.0.0.1','1317639653');
INSERT INTO `ycity_admin_log` VALUES ('429','1','admin','/ycity/admin.php/Config','127.0.0.1','1317639665');
INSERT INTO `ycity_admin_log` VALUES ('430','1','admin','/ycity/admin.php/Config','127.0.0.1','1317639740');
INSERT INTO `ycity_admin_log` VALUES ('431','1','admin','/ycity/admin.php/Config','127.0.0.1','1317639875');
INSERT INTO `ycity_admin_log` VALUES ('432','1','admin','/ycity/admin.php/Config','127.0.0.1','1317639889');
INSERT INTO `ycity_admin_log` VALUES ('433','1','admin','/ycity/admin.php/Config','127.0.0.1','1317639930');
INSERT INTO `ycity_admin_log` VALUES ('434','1','admin','/ycity/admin.php/Config','127.0.0.1','1317639942');
INSERT INTO `ycity_admin_log` VALUES ('435','1','admin','/ycity/admin.php/Config','127.0.0.1','1317639961');
INSERT INTO `ycity_admin_log` VALUES ('436','1','admin','/ycity/admin.php/Config','127.0.0.1','1317645085');
INSERT INTO `ycity_admin_log` VALUES ('437','1','admin','/ycity/admin.php/Config','127.0.0.1','1317645300');
INSERT INTO `ycity_admin_log` VALUES ('438','1','admin','/ycity/admin.php/Config','127.0.0.1','1317645337');
INSERT INTO `ycity_admin_log` VALUES ('439','1','admin','/ycity/admin.php/Config','127.0.0.1','1317645359');
INSERT INTO `ycity_admin_log` VALUES ('440','1','admin','/ycity/admin.php/Config','127.0.0.1','1317645425');
INSERT INTO `ycity_admin_log` VALUES ('441','1','admin','/ycity/admin.php/Config','127.0.0.1','1317645443');
INSERT INTO `ycity_admin_log` VALUES ('442','1','admin','/ycity/admin.php/Config','127.0.0.1','1317645488');
INSERT INTO `ycity_admin_log` VALUES ('443','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317645505');
INSERT INTO `ycity_admin_log` VALUES ('444','1','admin','/ycity/admin.php/Config','127.0.0.1','1317645583');
INSERT INTO `ycity_admin_log` VALUES ('445','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317645640');
INSERT INTO `ycity_admin_log` VALUES ('446','1','admin','/ycity/admin.php/Config','127.0.0.1','1317645893');
INSERT INTO `ycity_admin_log` VALUES ('447','1','admin','/ycity/admin.php/Config','127.0.0.1','1317645953');
INSERT INTO `ycity_admin_log` VALUES ('448','1','admin','/ycity/admin.php/Config/doModify.html (编辑系统配置)','127.0.0.1','1317645963');
INSERT INTO `ycity_admin_log` VALUES ('449','1','admin','/ycity/admin.php/Config','127.0.0.1','1317645965');
INSERT INTO `ycity_admin_log` VALUES ('450','1','admin','/ycity/admin.php/Config/doModify.html (编辑系统配置)','127.0.0.1','1317645970');
INSERT INTO `ycity_admin_log` VALUES ('451','1','admin','/ycity/admin.php/Config','127.0.0.1','1317645972');
INSERT INTO `ycity_admin_log` VALUES ('452','1','admin','/ycity/admin.php/Config/doModify.html (编辑系统配置)','127.0.0.1','1317645978');
INSERT INTO `ycity_admin_log` VALUES ('453','1','admin','/ycity/admin.php/Config','127.0.0.1','1317645981');
INSERT INTO `ycity_admin_log` VALUES ('454','1','admin','/ycity/admin.php/Config/doModify.html (编辑系统配置)','127.0.0.1','1317645986');
INSERT INTO `ycity_admin_log` VALUES ('455','1','admin','/ycity/admin.php/Config','127.0.0.1','1317645988');
INSERT INTO `ycity_admin_log` VALUES ('456','1','admin','/ycity/admin.php/Config/doModify.html (编辑系统配置)','127.0.0.1','1317645994');
INSERT INTO `ycity_admin_log` VALUES ('457','1','admin','/ycity/admin.php/Config','127.0.0.1','1317645996');
INSERT INTO `ycity_admin_log` VALUES ('458','1','admin','/ycity/admin.php/Config/doModify.html (编辑系统配置)','127.0.0.1','1317646008');
INSERT INTO `ycity_admin_log` VALUES ('459','1','admin','/ycity/admin.php/Config','127.0.0.1','1317646010');
INSERT INTO `ycity_admin_log` VALUES ('460','1','admin','/ycity/admin.php/Config/doModify.html (编辑系统配置)','127.0.0.1','1317646018');
INSERT INTO `ycity_admin_log` VALUES ('461','1','admin','/ycity/admin.php/Config','127.0.0.1','1317646020');
INSERT INTO `ycity_admin_log` VALUES ('462','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317648354');
INSERT INTO `ycity_admin_log` VALUES ('463','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317648542');
INSERT INTO `ycity_admin_log` VALUES ('464','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317648589');
INSERT INTO `ycity_admin_log` VALUES ('465','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317648864');
INSERT INTO `ycity_admin_log` VALUES ('466','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317648875');
INSERT INTO `ycity_admin_log` VALUES ('467','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317648984');
INSERT INTO `ycity_admin_log` VALUES ('468','1','admin','/ycity/admin.php','127.0.0.1','1317714902');
INSERT INTO `ycity_admin_log` VALUES ('469','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317714991');
INSERT INTO `ycity_admin_log` VALUES ('470','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317715241');
INSERT INTO `ycity_admin_log` VALUES ('471','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317715273');
INSERT INTO `ycity_admin_log` VALUES ('472','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317715301');
INSERT INTO `ycity_admin_log` VALUES ('473','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317715367');
INSERT INTO `ycity_admin_log` VALUES ('474','1','admin','/ycity/admin.php/Core/doCore.html (编辑内核配置)','127.0.0.1','1317715372');
INSERT INTO `ycity_admin_log` VALUES ('475','1','admin','/ycity/admin.php/Core','127.0.0.1','1317715375');
INSERT INTO `ycity_admin_log` VALUES ('476','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1317715391');
INSERT INTO `ycity_admin_log` VALUES ('477','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1317715449');
INSERT INTO `ycity_admin_log` VALUES ('478','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1317715470');
INSERT INTO `ycity_admin_log` VALUES ('479','1','admin','/ycity/admin.php','127.0.0.1','1317715505');
INSERT INTO `ycity_admin_log` VALUES ('480','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1317715510');
INSERT INTO `ycity_admin_log` VALUES ('481','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1317715530');
INSERT INTO `ycity_admin_log` VALUES ('482','1','admin','/ycity/admin.php/Config/core.html','127.0.0.1','1317715550');
INSERT INTO `ycity_admin_log` VALUES ('483','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317715559');
INSERT INTO `ycity_admin_log` VALUES ('484','1','admin','/ycity/admin.php/Core','127.0.0.1','1317715567');
INSERT INTO `ycity_admin_log` VALUES ('485','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317715584');
INSERT INTO `ycity_admin_log` VALUES ('486','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317715596');
INSERT INTO `ycity_admin_log` VALUES ('487','1','admin','/ycity/admin.php/Configindex','127.0.0.1','1317715605');
INSERT INTO `ycity_admin_log` VALUES ('488','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1317715635');
INSERT INTO `ycity_admin_log` VALUES ('489','1','admin','/ycity/admin.php/Config','127.0.0.1','1317715735');
INSERT INTO `ycity_admin_log` VALUES ('490','1','admin','/ycity/admin.php/Core/','127.0.0.1','1317715744');
INSERT INTO `ycity_admin_log` VALUES ('491','1','admin','/ycity/admin.php/Core/','127.0.0.1','1317715770');
INSERT INTO `ycity_admin_log` VALUES ('492','1','admin','/ycity/admin.php/Core/','127.0.0.1','1317716271');
INSERT INTO `ycity_admin_log` VALUES ('493','1','admin','/ycity/admin.php/Core/','127.0.0.1','1317716467');
INSERT INTO `ycity_admin_log` VALUES ('494','1','admin','/ycity/admin.php/Core/','127.0.0.1','1317716536');
INSERT INTO `ycity_admin_log` VALUES ('495','1','admin','/ycity/admin.php/Core/','127.0.0.1','1317716577');
INSERT INTO `ycity_admin_log` VALUES ('496','1','admin','/ycity/admin.php/Core/','127.0.0.1','1317716598');
INSERT INTO `ycity_admin_log` VALUES ('497','1','admin','/ycity/admin.php/Core/','127.0.0.1','1317716614');
INSERT INTO `ycity_admin_log` VALUES ('498','1','admin','/ycity/admin.php/Core/','127.0.0.1','1317716635');
INSERT INTO `ycity_admin_log` VALUES ('499','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317716642');
INSERT INTO `ycity_admin_log` VALUES ('500','1','admin','/ycity/admin.php/Core/','127.0.0.1','1317716686');
INSERT INTO `ycity_admin_log` VALUES ('501','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317716691');
INSERT INTO `ycity_admin_log` VALUES ('502','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317716716');
INSERT INTO `ycity_admin_log` VALUES ('503','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317717012');
INSERT INTO `ycity_admin_log` VALUES ('504','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317717409');
INSERT INTO `ycity_admin_log` VALUES ('505','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317717799');
INSERT INTO `ycity_admin_log` VALUES ('506','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317717858');
INSERT INTO `ycity_admin_log` VALUES ('507','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317717909');
INSERT INTO `ycity_admin_log` VALUES ('508','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317717926');
INSERT INTO `ycity_admin_log` VALUES ('509','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317717953');
INSERT INTO `ycity_admin_log` VALUES ('510','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317717981');
INSERT INTO `ycity_admin_log` VALUES ('511','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317718069');
INSERT INTO `ycity_admin_log` VALUES ('512','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317718409');
INSERT INTO `ycity_admin_log` VALUES ('513','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317718539');
INSERT INTO `ycity_admin_log` VALUES ('514','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317718585');
INSERT INTO `ycity_admin_log` VALUES ('515','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317718604');
INSERT INTO `ycity_admin_log` VALUES ('516','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317718647');
INSERT INTO `ycity_admin_log` VALUES ('517','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317718700');
INSERT INTO `ycity_admin_log` VALUES ('518','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317718749');
INSERT INTO `ycity_admin_log` VALUES ('519','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317718789');
INSERT INTO `ycity_admin_log` VALUES ('520','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317718813');
INSERT INTO `ycity_admin_log` VALUES ('521','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1317718878');
INSERT INTO `ycity_admin_log` VALUES ('522','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317718881');
INSERT INTO `ycity_admin_log` VALUES ('523','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317718885');
INSERT INTO `ycity_admin_log` VALUES ('524','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317718929');
INSERT INTO `ycity_admin_log` VALUES ('525','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317718930');
INSERT INTO `ycity_admin_log` VALUES ('526','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317718975');
INSERT INTO `ycity_admin_log` VALUES ('527','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317729800');
INSERT INTO `ycity_admin_log` VALUES ('528','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317729818');
INSERT INTO `ycity_admin_log` VALUES ('529','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317731701');
INSERT INTO `ycity_admin_log` VALUES ('530','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317731720');
INSERT INTO `ycity_admin_log` VALUES ('531','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732046');
INSERT INTO `ycity_admin_log` VALUES ('532','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732057');
INSERT INTO `ycity_admin_log` VALUES ('533','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732085');
INSERT INTO `ycity_admin_log` VALUES ('534','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732100');
INSERT INTO `ycity_admin_log` VALUES ('535','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732142');
INSERT INTO `ycity_admin_log` VALUES ('536','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732197');
INSERT INTO `ycity_admin_log` VALUES ('537','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732209');
INSERT INTO `ycity_admin_log` VALUES ('538','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732259');
INSERT INTO `ycity_admin_log` VALUES ('539','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732263');
INSERT INTO `ycity_admin_log` VALUES ('540','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732360');
INSERT INTO `ycity_admin_log` VALUES ('541','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732455');
INSERT INTO `ycity_admin_log` VALUES ('542','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732524');
INSERT INTO `ycity_admin_log` VALUES ('543','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732726');
INSERT INTO `ycity_admin_log` VALUES ('544','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732760');
INSERT INTO `ycity_admin_log` VALUES ('545','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732787');
INSERT INTO `ycity_admin_log` VALUES ('546','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732796');
INSERT INTO `ycity_admin_log` VALUES ('547','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732872');
INSERT INTO `ycity_admin_log` VALUES ('548','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732888');
INSERT INTO `ycity_admin_log` VALUES ('549','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317732938');
INSERT INTO `ycity_admin_log` VALUES ('550','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317733018');
INSERT INTO `ycity_admin_log` VALUES ('551','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317733289');
INSERT INTO `ycity_admin_log` VALUES ('552','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317733296');
INSERT INTO `ycity_admin_log` VALUES ('553','1','admin','/ycity/admin.php/Core/doCore.html (编辑内核配置)','127.0.0.1','1317733300');
INSERT INTO `ycity_admin_log` VALUES ('554','1','admin','/ycity/admin.php/Core','127.0.0.1','1317733303');
INSERT INTO `ycity_admin_log` VALUES ('555','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317733307');
INSERT INTO `ycity_admin_log` VALUES ('556','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317733329');
INSERT INTO `ycity_admin_log` VALUES ('557','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317733354');
INSERT INTO `ycity_admin_log` VALUES ('558','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317733566');
INSERT INTO `ycity_admin_log` VALUES ('559','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317733637');
INSERT INTO `ycity_admin_log` VALUES ('560','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317733665');
INSERT INTO `ycity_admin_log` VALUES ('561','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317733684');
INSERT INTO `ycity_admin_log` VALUES ('562','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317733754');
INSERT INTO `ycity_admin_log` VALUES ('563','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317733992');
INSERT INTO `ycity_admin_log` VALUES ('564','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317734026');
INSERT INTO `ycity_admin_log` VALUES ('565','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317736444');
INSERT INTO `ycity_admin_log` VALUES ('566','1','admin','/ycity/admin.php/','127.0.0.1','1317786659');
INSERT INTO `ycity_admin_log` VALUES ('567','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317786666');
INSERT INTO `ycity_admin_log` VALUES ('568','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317788458');
INSERT INTO `ycity_admin_log` VALUES ('569','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317788507');
INSERT INTO `ycity_admin_log` VALUES ('570','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317788573');
INSERT INTO `ycity_admin_log` VALUES ('571','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317788840');
INSERT INTO `ycity_admin_log` VALUES ('572','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317789629');
INSERT INTO `ycity_admin_log` VALUES ('573','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317789644');
INSERT INTO `ycity_admin_log` VALUES ('574','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317789666');
INSERT INTO `ycity_admin_log` VALUES ('575','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317789729');
INSERT INTO `ycity_admin_log` VALUES ('576','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317797941');
INSERT INTO `ycity_admin_log` VALUES ('577','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317798058');
INSERT INTO `ycity_admin_log` VALUES ('578','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317798116');
INSERT INTO `ycity_admin_log` VALUES ('579','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317798120');
INSERT INTO `ycity_admin_log` VALUES ('580','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317798132');
INSERT INTO `ycity_admin_log` VALUES ('581','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317798142');
INSERT INTO `ycity_admin_log` VALUES ('582','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317798146');
INSERT INTO `ycity_admin_log` VALUES ('583','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317798152');
INSERT INTO `ycity_admin_log` VALUES ('584','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317798159');
INSERT INTO `ycity_admin_log` VALUES ('585','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317798191');
INSERT INTO `ycity_admin_log` VALUES ('586','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317798260');
INSERT INTO `ycity_admin_log` VALUES ('587','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317798265');
INSERT INTO `ycity_admin_log` VALUES ('588','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317798268');
INSERT INTO `ycity_admin_log` VALUES ('589','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317798274');
INSERT INTO `ycity_admin_log` VALUES ('590','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317798278');
INSERT INTO `ycity_admin_log` VALUES ('591','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317798282');
INSERT INTO `ycity_admin_log` VALUES ('592','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317798284');
INSERT INTO `ycity_admin_log` VALUES ('593','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317798294');
INSERT INTO `ycity_admin_log` VALUES ('594','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317798301');
INSERT INTO `ycity_admin_log` VALUES ('595','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317798304');
INSERT INTO `ycity_admin_log` VALUES ('596','1','admin','/ycity/admin.php/','127.0.0.1','1317819353');
INSERT INTO `ycity_admin_log` VALUES ('597','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317819384');
INSERT INTO `ycity_admin_log` VALUES ('598','1','admin','/ycity/admin.php','127.0.0.1','1317819566');
INSERT INTO `ycity_admin_log` VALUES ('599','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317819569');
INSERT INTO `ycity_admin_log` VALUES ('600','1','admin','/ycity/admin.php/Module/doModify.html','127.0.0.1','1317820370');
INSERT INTO `ycity_admin_log` VALUES ('601','1','admin','/ycity/admin.php/Module','127.0.0.1','1317820373');
INSERT INTO `ycity_admin_log` VALUES ('602','1','admin','/ycity/admin.php/Module/doModify.html','127.0.0.1','1317820380');
INSERT INTO `ycity_admin_log` VALUES ('603','1','admin','/ycity/admin.php/Module','127.0.0.1','1317820383');
INSERT INTO `ycity_admin_log` VALUES ('604','1','admin','/ycity/admin.php/Module/doModify.html','127.0.0.1','1317820390');
INSERT INTO `ycity_admin_log` VALUES ('605','1','admin','/ycity/admin.php/Module','127.0.0.1','1317820392');
INSERT INTO `ycity_admin_log` VALUES ('606','1','admin','/ycity/admin.php/','127.0.0.1','1317872401');
INSERT INTO `ycity_admin_log` VALUES ('607','1','admin','/ycity/admin.php','127.0.0.1','1317872431');
INSERT INTO `ycity_admin_log` VALUES ('608','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317872440');
INSERT INTO `ycity_admin_log` VALUES ('609','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317878598');
INSERT INTO `ycity_admin_log` VALUES ('610','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317878654');
INSERT INTO `ycity_admin_log` VALUES ('611','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317881666');
INSERT INTO `ycity_admin_log` VALUES ('612','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317881677');
INSERT INTO `ycity_admin_log` VALUES ('613','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317881950');
INSERT INTO `ycity_admin_log` VALUES ('614','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317883736');
INSERT INTO `ycity_admin_log` VALUES ('615','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317883740');
INSERT INTO `ycity_admin_log` VALUES ('616','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317883744');
INSERT INTO `ycity_admin_log` VALUES ('617','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317883749');
INSERT INTO `ycity_admin_log` VALUES ('618','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317883756');
INSERT INTO `ycity_admin_log` VALUES ('619','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317883805');
INSERT INTO `ycity_admin_log` VALUES ('620','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317883822');
INSERT INTO `ycity_admin_log` VALUES ('621','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317884368');
INSERT INTO `ycity_admin_log` VALUES ('622','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317886703');
INSERT INTO `ycity_admin_log` VALUES ('623','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317886846');
INSERT INTO `ycity_admin_log` VALUES ('624','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317886883');
INSERT INTO `ycity_admin_log` VALUES ('625','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317886903');
INSERT INTO `ycity_admin_log` VALUES ('626','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887035');
INSERT INTO `ycity_admin_log` VALUES ('627','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887047');
INSERT INTO `ycity_admin_log` VALUES ('628','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887108');
INSERT INTO `ycity_admin_log` VALUES ('629','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317887223');
INSERT INTO `ycity_admin_log` VALUES ('630','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887226');
INSERT INTO `ycity_admin_log` VALUES ('631','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887283');
INSERT INTO `ycity_admin_log` VALUES ('632','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887321');
INSERT INTO `ycity_admin_log` VALUES ('633','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887332');
INSERT INTO `ycity_admin_log` VALUES ('634','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887401');
INSERT INTO `ycity_admin_log` VALUES ('635','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887415');
INSERT INTO `ycity_admin_log` VALUES ('636','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887468');
INSERT INTO `ycity_admin_log` VALUES ('637','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887503');
INSERT INTO `ycity_admin_log` VALUES ('638','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887516');
INSERT INTO `ycity_admin_log` VALUES ('639','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887683');
INSERT INTO `ycity_admin_log` VALUES ('640','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887706');
INSERT INTO `ycity_admin_log` VALUES ('641','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887737');
INSERT INTO `ycity_admin_log` VALUES ('642','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887773');
INSERT INTO `ycity_admin_log` VALUES ('643','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887780');
INSERT INTO `ycity_admin_log` VALUES ('644','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887882');
INSERT INTO `ycity_admin_log` VALUES ('645','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887932');
INSERT INTO `ycity_admin_log` VALUES ('646','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317887974');
INSERT INTO `ycity_admin_log` VALUES ('647','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317888012');
INSERT INTO `ycity_admin_log` VALUES ('648','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317888066');
INSERT INTO `ycity_admin_log` VALUES ('649','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317888160');
INSERT INTO `ycity_admin_log` VALUES ('650','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317888197');
INSERT INTO `ycity_admin_log` VALUES ('651','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317888207');
INSERT INTO `ycity_admin_log` VALUES ('652','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317888228');
INSERT INTO `ycity_admin_log` VALUES ('653','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317888240');
INSERT INTO `ycity_admin_log` VALUES ('654','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317900562');
INSERT INTO `ycity_admin_log` VALUES ('655','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317900570');
INSERT INTO `ycity_admin_log` VALUES ('656','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317900590');
INSERT INTO `ycity_admin_log` VALUES ('657','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317900798');
INSERT INTO `ycity_admin_log` VALUES ('658','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317900831');
INSERT INTO `ycity_admin_log` VALUES ('659','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317900840');
INSERT INTO `ycity_admin_log` VALUES ('660','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317900883');
INSERT INTO `ycity_admin_log` VALUES ('661','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317900940');
INSERT INTO `ycity_admin_log` VALUES ('662','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317900951');
INSERT INTO `ycity_admin_log` VALUES ('663','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317900955');
INSERT INTO `ycity_admin_log` VALUES ('664','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317900958');
INSERT INTO `ycity_admin_log` VALUES ('665','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317900960');
INSERT INTO `ycity_admin_log` VALUES ('666','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317901098');
INSERT INTO `ycity_admin_log` VALUES ('667','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317901142');
INSERT INTO `ycity_admin_log` VALUES ('668','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317901205');
INSERT INTO `ycity_admin_log` VALUES ('669','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317901260');
INSERT INTO `ycity_admin_log` VALUES ('670','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317901305');
INSERT INTO `ycity_admin_log` VALUES ('671','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317901365');
INSERT INTO `ycity_admin_log` VALUES ('672','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317901431');
INSERT INTO `ycity_admin_log` VALUES ('673','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317901529');
INSERT INTO `ycity_admin_log` VALUES ('674','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317901532');
INSERT INTO `ycity_admin_log` VALUES ('675','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317901574');
INSERT INTO `ycity_admin_log` VALUES ('676','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317901582');
INSERT INTO `ycity_admin_log` VALUES ('677','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317901588');
INSERT INTO `ycity_admin_log` VALUES ('678','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317901591');
INSERT INTO `ycity_admin_log` VALUES ('679','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317901594');
INSERT INTO `ycity_admin_log` VALUES ('680','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317901618');
INSERT INTO `ycity_admin_log` VALUES ('681','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317901896');
INSERT INTO `ycity_admin_log` VALUES ('682','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317901904');
INSERT INTO `ycity_admin_log` VALUES ('683','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317901927');
INSERT INTO `ycity_admin_log` VALUES ('684','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317901943');
INSERT INTO `ycity_admin_log` VALUES ('685','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317901992');
INSERT INTO `ycity_admin_log` VALUES ('686','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317902061');
INSERT INTO `ycity_admin_log` VALUES ('687','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317902131');
INSERT INTO `ycity_admin_log` VALUES ('688','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317902149');
INSERT INTO `ycity_admin_log` VALUES ('689','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317902198');
INSERT INTO `ycity_admin_log` VALUES ('690','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317902228');
INSERT INTO `ycity_admin_log` VALUES ('691','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317902311');
INSERT INTO `ycity_admin_log` VALUES ('692','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317902351');
INSERT INTO `ycity_admin_log` VALUES ('693','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317902405');
INSERT INTO `ycity_admin_log` VALUES ('694','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317902460');
INSERT INTO `ycity_admin_log` VALUES ('695','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317902521');
INSERT INTO `ycity_admin_log` VALUES ('696','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317902596');
INSERT INTO `ycity_admin_log` VALUES ('697','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317902614');
INSERT INTO `ycity_admin_log` VALUES ('698','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317902647');
INSERT INTO `ycity_admin_log` VALUES ('699','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317903262');
INSERT INTO `ycity_admin_log` VALUES ('700','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317903279');
INSERT INTO `ycity_admin_log` VALUES ('701','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317903465');
INSERT INTO `ycity_admin_log` VALUES ('702','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317903468');
INSERT INTO `ycity_admin_log` VALUES ('703','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317903614');
INSERT INTO `ycity_admin_log` VALUES ('704','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317903873');
INSERT INTO `ycity_admin_log` VALUES ('705','1','admin','/ycity/admin.php/Theme/template/theme/test.html','127.0.0.1','1317903877');
INSERT INTO `ycity_admin_log` VALUES ('706','1','admin','/ycity/admin.php/Theme/template/theme/test.html','127.0.0.1','1317903900');
INSERT INTO `ycity_admin_log` VALUES ('707','1','admin','/ycity/admin.php/Theme/template/theme/default.html','127.0.0.1','1317903913');
INSERT INTO `ycity_admin_log` VALUES ('708','1','admin','/ycity/admin.php/Theme/template/theme/default.html','127.0.0.1','1317903992');
INSERT INTO `ycity_admin_log` VALUES ('709','1','admin','/ycity/admin.php/Theme/template/theme/default.html','127.0.0.1','1317903996');
INSERT INTO `ycity_admin_log` VALUES ('710','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317904023');
INSERT INTO `ycity_admin_log` VALUES ('711','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317904105');
INSERT INTO `ycity_admin_log` VALUES ('712','1','admin','/ycity/admin.php/Theme/template/theme/default.html','127.0.0.1','1317904127');
INSERT INTO `ycity_admin_log` VALUES ('713','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317904130');
INSERT INTO `ycity_admin_log` VALUES ('714','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317904133');
INSERT INTO `ycity_admin_log` VALUES ('715','1','admin','/ycity/admin.php/Theme/template/theme/test.html','127.0.0.1','1317904135');
INSERT INTO `ycity_admin_log` VALUES ('716','1','admin','/ycity/admin.php/Theme/template/theme/default.html','127.0.0.1','1317904138');
INSERT INTO `ycity_admin_log` VALUES ('717','1','admin','/ycity/admin.php/Theme/template/theme/default.html','127.0.0.1','1317904142');
INSERT INTO `ycity_admin_log` VALUES ('718','1','admin','/ycity/admin.php/Theme/template/theme/default.html','127.0.0.1','1317904168');
INSERT INTO `ycity_admin_log` VALUES ('719','1','admin','/ycity/admin.php/Theme/template/theme/test.html','127.0.0.1','1317904187');
INSERT INTO `ycity_admin_log` VALUES ('720','1','admin','/ycity/admin.php/Theme/template/theme/test.html','127.0.0.1','1317904202');
INSERT INTO `ycity_admin_log` VALUES ('721','1','admin','/ycity/admin.php/Theme/template/theme/default.html','127.0.0.1','1317904207');
INSERT INTO `ycity_admin_log` VALUES ('722','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317904226');
INSERT INTO `ycity_admin_log` VALUES ('723','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317904242');
INSERT INTO `ycity_admin_log` VALUES ('724','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317904251');
INSERT INTO `ycity_admin_log` VALUES ('725','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317904289');
INSERT INTO `ycity_admin_log` VALUES ('726','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317904337');
INSERT INTO `ycity_admin_log` VALUES ('727','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317904342');
INSERT INTO `ycity_admin_log` VALUES ('728','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317904356');
INSERT INTO `ycity_admin_log` VALUES ('729','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317904367');
INSERT INTO `ycity_admin_log` VALUES ('730','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317904398');
INSERT INTO `ycity_admin_log` VALUES ('731','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317904402');
INSERT INTO `ycity_admin_log` VALUES ('732','1','admin','/ycity/admin.php/Theme/template/theme/test.html','127.0.0.1','1317904408');
INSERT INTO `ycity_admin_log` VALUES ('733','1','admin','/ycity/admin.php/Theme/template/theme/test.html','127.0.0.1','1317904416');
INSERT INTO `ycity_admin_log` VALUES ('734','1','admin','/ycity/admin.php/Theme/template/theme/default.html','127.0.0.1','1317904420');
INSERT INTO `ycity_admin_log` VALUES ('735','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317904423');
INSERT INTO `ycity_admin_log` VALUES ('736','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317904425');
INSERT INTO `ycity_admin_log` VALUES ('737','1','admin','/ycity/admin.php/Theme/template/theme/default.html','127.0.0.1','1317907400');
INSERT INTO `ycity_admin_log` VALUES ('738','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317907832');
INSERT INTO `ycity_admin_log` VALUES ('739','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317907941');
INSERT INTO `ycity_admin_log` VALUES ('740','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317907967');
INSERT INTO `ycity_admin_log` VALUES ('741','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317908097');
INSERT INTO `ycity_admin_log` VALUES ('742','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317908100');
INSERT INTO `ycity_admin_log` VALUES ('743','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317908104');
INSERT INTO `ycity_admin_log` VALUES ('744','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317908112');
INSERT INTO `ycity_admin_log` VALUES ('745','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317908116');
INSERT INTO `ycity_admin_log` VALUES ('746','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317908130');
INSERT INTO `ycity_admin_log` VALUES ('747','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317908144');
INSERT INTO `ycity_admin_log` VALUES ('748','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317908148');
INSERT INTO `ycity_admin_log` VALUES ('749','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317908152');
INSERT INTO `ycity_admin_log` VALUES ('750','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317908178');
INSERT INTO `ycity_admin_log` VALUES ('751','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317908182');
INSERT INTO `ycity_admin_log` VALUES ('752','1','admin','/ycity/admin.php/Theme','127.0.0.1','1317908190');
INSERT INTO `ycity_admin_log` VALUES ('753','1','admin','/ycity/admin.php/Theme','127.0.0.1','1317908198');
INSERT INTO `ycity_admin_log` VALUES ('754','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1317908321');
INSERT INTO `ycity_admin_log` VALUES ('755','1','admin','/ycity/admin.php/Download/index.html','127.0.0.1','1317908350');
INSERT INTO `ycity_admin_log` VALUES ('756','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317908356');
INSERT INTO `ycity_admin_log` VALUES ('757','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317908363');
INSERT INTO `ycity_admin_log` VALUES ('758','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317908390');
INSERT INTO `ycity_admin_log` VALUES ('759','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317908416');
INSERT INTO `ycity_admin_log` VALUES ('760','1','admin','/ycity/admin.php/','127.0.0.1','1317951401');
INSERT INTO `ycity_admin_log` VALUES ('761','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317951600');
INSERT INTO `ycity_admin_log` VALUES ('762','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317953518');
INSERT INTO `ycity_admin_log` VALUES ('763','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317953523');
INSERT INTO `ycity_admin_log` VALUES ('764','1','admin','/ycity/admin.php','127.0.0.1','1317956593');
INSERT INTO `ycity_admin_log` VALUES ('765','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317956611');
INSERT INTO `ycity_admin_log` VALUES ('766','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317956665');
INSERT INTO `ycity_admin_log` VALUES ('767','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317956674');
INSERT INTO `ycity_admin_log` VALUES ('768','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317956962');
INSERT INTO `ycity_admin_log` VALUES ('769','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317956966');
INSERT INTO `ycity_admin_log` VALUES ('770','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317957425');
INSERT INTO `ycity_admin_log` VALUES ('771','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317957543');
INSERT INTO `ycity_admin_log` VALUES ('772','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317957586');
INSERT INTO `ycity_admin_log` VALUES ('773','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317958360');
INSERT INTO `ycity_admin_log` VALUES ('774','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317958528');
INSERT INTO `ycity_admin_log` VALUES ('775','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317958612');
INSERT INTO `ycity_admin_log` VALUES ('776','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317958639');
INSERT INTO `ycity_admin_log` VALUES ('777','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317958734');
INSERT INTO `ycity_admin_log` VALUES ('778','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317958796');
INSERT INTO `ycity_admin_log` VALUES ('779','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317958837');
INSERT INTO `ycity_admin_log` VALUES ('780','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317958863');
INSERT INTO `ycity_admin_log` VALUES ('781','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317959051');
INSERT INTO `ycity_admin_log` VALUES ('782','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317959121');
INSERT INTO `ycity_admin_log` VALUES ('783','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317959162');
INSERT INTO `ycity_admin_log` VALUES ('784','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317959185');
INSERT INTO `ycity_admin_log` VALUES ('785','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317959311');
INSERT INTO `ycity_admin_log` VALUES ('786','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317959317');
INSERT INTO `ycity_admin_log` VALUES ('787','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317959376');
INSERT INTO `ycity_admin_log` VALUES ('788','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317959390');
INSERT INTO `ycity_admin_log` VALUES ('789','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317959417');
INSERT INTO `ycity_admin_log` VALUES ('790','1','admin','/ycity/admin.php/Admin/doCommand.html (批量更新: 1 影响 1 条记录)','127.0.0.1','1317959434');
INSERT INTO `ycity_admin_log` VALUES ('791','1','admin','/ycity/admin.php/Admin','127.0.0.1','1317959437');
INSERT INTO `ycity_admin_log` VALUES ('792','1','admin','/ycity/admin.php/Admin/doCommand.html (批量更新: 1 影响 1 条记录)','127.0.0.1','1317959441');
INSERT INTO `ycity_admin_log` VALUES ('793','1','admin','/ycity/admin.php/Admin','127.0.0.1','1317959444');
INSERT INTO `ycity_admin_log` VALUES ('794','1','admin','/ycity/admin.php/Admin','127.0.0.1','1317959462');
INSERT INTO `ycity_admin_log` VALUES ('795','1','admin','/ycity/admin.php/Admin','127.0.0.1','1317970102');
INSERT INTO `ycity_admin_log` VALUES ('796','1','admin','/ycity/admin.php/Admin','127.0.0.1','1317970173');
INSERT INTO `ycity_admin_log` VALUES ('797','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317970226');
INSERT INTO `ycity_admin_log` VALUES ('798','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317970245');
INSERT INTO `ycity_admin_log` VALUES ('799','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317972590');
INSERT INTO `ycity_admin_log` VALUES ('800','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317972658');
INSERT INTO `ycity_admin_log` VALUES ('801','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317972660');
INSERT INTO `ycity_admin_log` VALUES ('802','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317972668');
INSERT INTO `ycity_admin_log` VALUES ('803','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317972677');
INSERT INTO `ycity_admin_log` VALUES ('804','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317972695');
INSERT INTO `ycity_admin_log` VALUES ('805','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317972736');
INSERT INTO `ycity_admin_log` VALUES ('806','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317972745');
INSERT INTO `ycity_admin_log` VALUES ('807','1','admin','/ycity/admin.php/Theme/template.html','127.0.0.1','1317972749');
INSERT INTO `ycity_admin_log` VALUES ('808','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317972752');
INSERT INTO `ycity_admin_log` VALUES ('809','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317972756');
INSERT INTO `ycity_admin_log` VALUES ('810','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317972871');
INSERT INTO `ycity_admin_log` VALUES ('811','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317973099');
INSERT INTO `ycity_admin_log` VALUES ('812','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317973187');
INSERT INTO `ycity_admin_log` VALUES ('813','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317973217');
INSERT INTO `ycity_admin_log` VALUES ('814','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317973279');
INSERT INTO `ycity_admin_log` VALUES ('815','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317973357');
INSERT INTO `ycity_admin_log` VALUES ('816','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317973375');
INSERT INTO `ycity_admin_log` VALUES ('817','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317993229');
INSERT INTO `ycity_admin_log` VALUES ('818','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317993254');
INSERT INTO `ycity_admin_log` VALUES ('819','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317993274');
INSERT INTO `ycity_admin_log` VALUES ('820','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317993278');
INSERT INTO `ycity_admin_log` VALUES ('821','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317993280');
INSERT INTO `ycity_admin_log` VALUES ('822','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317993361');
INSERT INTO `ycity_admin_log` VALUES ('823','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317993400');
INSERT INTO `ycity_admin_log` VALUES ('824','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317993412');
INSERT INTO `ycity_admin_log` VALUES ('825','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317993433');
INSERT INTO `ycity_admin_log` VALUES ('826','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317993459');
INSERT INTO `ycity_admin_log` VALUES ('827','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317993470');
INSERT INTO `ycity_admin_log` VALUES ('828','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317993522');
INSERT INTO `ycity_admin_log` VALUES ('829','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317993567');
INSERT INTO `ycity_admin_log` VALUES ('830','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317993585');
INSERT INTO `ycity_admin_log` VALUES ('831','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317993589');
INSERT INTO `ycity_admin_log` VALUES ('832','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317993601');
INSERT INTO `ycity_admin_log` VALUES ('833','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317993768');
INSERT INTO `ycity_admin_log` VALUES ('834','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317994059');
INSERT INTO `ycity_admin_log` VALUES ('835','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317994068');
INSERT INTO `ycity_admin_log` VALUES ('836','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317994081');
INSERT INTO `ycity_admin_log` VALUES ('837','1','admin','/ycity/admin.php/AdminRole/doModify.html (编辑:3)','127.0.0.1','1317994448');
INSERT INTO `ycity_admin_log` VALUES ('838','1','admin','/ycity/admin.php/AdminRole','127.0.0.1','1317994451');
INSERT INTO `ycity_admin_log` VALUES ('839','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317994529');
INSERT INTO `ycity_admin_log` VALUES ('840','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1317994554');
INSERT INTO `ycity_admin_log` VALUES ('841','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1317994652');
INSERT INTO `ycity_admin_log` VALUES ('842','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1317994655');
INSERT INTO `ycity_admin_log` VALUES ('843','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1317994660');
INSERT INTO `ycity_admin_log` VALUES ('844','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1317994663');
INSERT INTO `ycity_admin_log` VALUES ('845','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1317994666');
INSERT INTO `ycity_admin_log` VALUES ('846','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1317994673');
INSERT INTO `ycity_admin_log` VALUES ('847','1','admin','/ycity/admin.php/','127.0.0.1','1318037593');
INSERT INTO `ycity_admin_log` VALUES ('848','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318037608');
INSERT INTO `ycity_admin_log` VALUES ('849','1','admin','/ycity/admin.php','127.0.0.1','1318038896');
INSERT INTO `ycity_admin_log` VALUES ('850','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318038904');
INSERT INTO `ycity_admin_log` VALUES ('851','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318038985');
INSERT INTO `ycity_admin_log` VALUES ('852','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1318038987');
INSERT INTO `ycity_admin_log` VALUES ('853','1','admin','/ycity/admin.php','127.0.0.1','1318471233');
INSERT INTO `ycity_admin_log` VALUES ('854','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318471482');
INSERT INTO `ycity_admin_log` VALUES ('855','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318471489');
INSERT INTO `ycity_admin_log` VALUES ('856','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318471893');
INSERT INTO `ycity_admin_log` VALUES ('857','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318471950');
INSERT INTO `ycity_admin_log` VALUES ('858','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318472024');
INSERT INTO `ycity_admin_log` VALUES ('859','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318472266');
INSERT INTO `ycity_admin_log` VALUES ('860','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318472385');
INSERT INTO `ycity_admin_log` VALUES ('861','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318472508');
INSERT INTO `ycity_admin_log` VALUES ('862','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318472509');
INSERT INTO `ycity_admin_log` VALUES ('863','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1318472531');
INSERT INTO `ycity_admin_log` VALUES ('864','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1318472534');
INSERT INTO `ycity_admin_log` VALUES ('865','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1318472538');
INSERT INTO `ycity_admin_log` VALUES ('866','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1318472875');
INSERT INTO `ycity_admin_log` VALUES ('867','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1318486800');
INSERT INTO `ycity_admin_log` VALUES ('868','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1318486813');
INSERT INTO `ycity_admin_log` VALUES ('869','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1318486819');
INSERT INTO `ycity_admin_log` VALUES ('870','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1318486823');
INSERT INTO `ycity_admin_log` VALUES ('871','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318486828');
INSERT INTO `ycity_admin_log` VALUES ('872','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318486861');
INSERT INTO `ycity_admin_log` VALUES ('873','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318486963');
INSERT INTO `ycity_admin_log` VALUES ('874','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318486987');
INSERT INTO `ycity_admin_log` VALUES ('875','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318487011');
INSERT INTO `ycity_admin_log` VALUES ('876','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318487028');
INSERT INTO `ycity_admin_log` VALUES ('877','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318487042');
INSERT INTO `ycity_admin_log` VALUES ('878','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318487063');
INSERT INTO `ycity_admin_log` VALUES ('879','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318487069');
INSERT INTO `ycity_admin_log` VALUES ('880','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318487523');
INSERT INTO `ycity_admin_log` VALUES ('881','1','admin','/ycity/admin.php','127.0.0.1','1318488458');
INSERT INTO `ycity_admin_log` VALUES ('882','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1318488490');
INSERT INTO `ycity_admin_log` VALUES ('883','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318488523');
INSERT INTO `ycity_admin_log` VALUES ('884','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318488548');
INSERT INTO `ycity_admin_log` VALUES ('885','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318488712');
INSERT INTO `ycity_admin_log` VALUES ('886','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318488730');
INSERT INTO `ycity_admin_log` VALUES ('887','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318488780');
INSERT INTO `ycity_admin_log` VALUES ('888','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318488838');
INSERT INTO `ycity_admin_log` VALUES ('889','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318488854');
INSERT INTO `ycity_admin_log` VALUES ('890','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318488874');
INSERT INTO `ycity_admin_log` VALUES ('891','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318488896');
INSERT INTO `ycity_admin_log` VALUES ('892','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318489721');
INSERT INTO `ycity_admin_log` VALUES ('893','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318489744');
INSERT INTO `ycity_admin_log` VALUES ('894','1','admin','/ycity/admin.php/Admin/doCommand/operate/delete/id/2.html (删除: 2)','127.0.0.1','1318489791');
INSERT INTO `ycity_admin_log` VALUES ('895','1','admin','/ycity/admin.php/Admin','127.0.0.1','1318489794');
INSERT INTO `ycity_admin_log` VALUES ('896','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318489804');
INSERT INTO `ycity_admin_log` VALUES ('897','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318489833');
INSERT INTO `ycity_admin_log` VALUES ('898','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318489851');
INSERT INTO `ycity_admin_log` VALUES ('899','1','admin','/ycity/admin.php/Menu/doCommand/operate/delete/id/2.html (删除: 2)','127.0.0.1','1318489858');
INSERT INTO `ycity_admin_log` VALUES ('900','1','admin','/ycity/admin.php/Menu','127.0.0.1','1318489860');
INSERT INTO `ycity_admin_log` VALUES ('901','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318489908');
INSERT INTO `ycity_admin_log` VALUES ('902','1','admin','/ycity/admin.php/AdminRole/index.html','127.0.0.1','1318489922');
INSERT INTO `ycity_admin_log` VALUES ('903','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318489932');
INSERT INTO `ycity_admin_log` VALUES ('904','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318489945');
INSERT INTO `ycity_admin_log` VALUES ('905','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318490008');
INSERT INTO `ycity_admin_log` VALUES ('906','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318490126');
INSERT INTO `ycity_admin_log` VALUES ('907','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318490151');
INSERT INTO `ycity_admin_log` VALUES ('908','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318490357');
INSERT INTO `ycity_admin_log` VALUES ('909','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318494229');
INSERT INTO `ycity_admin_log` VALUES ('910','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318494242');
INSERT INTO `ycity_admin_log` VALUES ('911','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318494457');
INSERT INTO `ycity_admin_log` VALUES ('912','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318494497');
INSERT INTO `ycity_admin_log` VALUES ('913','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318494501');
INSERT INTO `ycity_admin_log` VALUES ('914','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318494517');
INSERT INTO `ycity_admin_log` VALUES ('915','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318507407');
INSERT INTO `ycity_admin_log` VALUES ('916','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318507895');
INSERT INTO `ycity_admin_log` VALUES ('917','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318507933');
INSERT INTO `ycity_admin_log` VALUES ('918','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318507987');
INSERT INTO `ycity_admin_log` VALUES ('919','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318508014');
INSERT INTO `ycity_admin_log` VALUES ('920','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318508118');
INSERT INTO `ycity_admin_log` VALUES ('921','1','admin','/ycity/admin.php/Ad/0/Public/Admin/accepted_48.png','127.0.0.1','1318508119');
INSERT INTO `ycity_admin_log` VALUES ('922','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318508208');
INSERT INTO `ycity_admin_log` VALUES ('923','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1318508209');
INSERT INTO `ycity_admin_log` VALUES ('924','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318508212');
INSERT INTO `ycity_admin_log` VALUES ('925','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318508988');
INSERT INTO `ycity_admin_log` VALUES ('926','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509013');
INSERT INTO `ycity_admin_log` VALUES ('927','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509030');
INSERT INTO `ycity_admin_log` VALUES ('928','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509052');
INSERT INTO `ycity_admin_log` VALUES ('929','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509068');
INSERT INTO `ycity_admin_log` VALUES ('930','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509077');
INSERT INTO `ycity_admin_log` VALUES ('931','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509108');
INSERT INTO `ycity_admin_log` VALUES ('932','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509149');
INSERT INTO `ycity_admin_log` VALUES ('933','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509189');
INSERT INTO `ycity_admin_log` VALUES ('934','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509332');
INSERT INTO `ycity_admin_log` VALUES ('935','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509416');
INSERT INTO `ycity_admin_log` VALUES ('936','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509427');
INSERT INTO `ycity_admin_log` VALUES ('937','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509438');
INSERT INTO `ycity_admin_log` VALUES ('938','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509486');
INSERT INTO `ycity_admin_log` VALUES ('939','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509495');
INSERT INTO `ycity_admin_log` VALUES ('940','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509513');
INSERT INTO `ycity_admin_log` VALUES ('941','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509523');
INSERT INTO `ycity_admin_log` VALUES ('942','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509544');
INSERT INTO `ycity_admin_log` VALUES ('943','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318509595');
INSERT INTO `ycity_admin_log` VALUES ('944','1','admin','/ycity/admin.php','127.0.0.1','1318557592');
INSERT INTO `ycity_admin_log` VALUES ('945','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318557601');
INSERT INTO `ycity_admin_log` VALUES ('946','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1318559991');
INSERT INTO `ycity_admin_log` VALUES ('947','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318560005');
INSERT INTO `ycity_admin_log` VALUES ('948','1','admin','/ycity/admin.php','127.0.0.1','1318560183');
INSERT INTO `ycity_admin_log` VALUES ('949','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318560189');
INSERT INTO `ycity_admin_log` VALUES ('950','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318578432');
INSERT INTO `ycity_admin_log` VALUES ('951','1','admin','/ycity/admin.php','127.0.0.1','1318816812');
INSERT INTO `ycity_admin_log` VALUES ('952','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318816872');
INSERT INTO `ycity_admin_log` VALUES ('953','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318816901');
INSERT INTO `ycity_admin_log` VALUES ('954','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318816944');
INSERT INTO `ycity_admin_log` VALUES ('955','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318816948');
INSERT INTO `ycity_admin_log` VALUES ('956','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318816951');
INSERT INTO `ycity_admin_log` VALUES ('957','1','admin','/ycity/admin.php','127.0.0.1','1318818820');
INSERT INTO `ycity_admin_log` VALUES ('958','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318820126');
INSERT INTO `ycity_admin_log` VALUES ('959','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318820512');
INSERT INTO `ycity_admin_log` VALUES ('960','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318820631');
INSERT INTO `ycity_admin_log` VALUES ('961','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1318821221');
INSERT INTO `ycity_admin_log` VALUES ('962','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318821225');
INSERT INTO `ycity_admin_log` VALUES ('963','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1318821275');
INSERT INTO `ycity_admin_log` VALUES ('964','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318822495');
INSERT INTO `ycity_admin_log` VALUES ('965','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318822501');
INSERT INTO `ycity_admin_log` VALUES ('966','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318825039');
INSERT INTO `ycity_admin_log` VALUES ('967','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318825100');
INSERT INTO `ycity_admin_log` VALUES ('968','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318825134');
INSERT INTO `ycity_admin_log` VALUES ('969','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318825145');
INSERT INTO `ycity_admin_log` VALUES ('970','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1318834973');
INSERT INTO `ycity_admin_log` VALUES ('971','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1318834975');
INSERT INTO `ycity_admin_log` VALUES ('972','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318835009');
INSERT INTO `ycity_admin_log` VALUES ('973','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1318835120');
INSERT INTO `ycity_admin_log` VALUES ('974','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1318835145');
INSERT INTO `ycity_admin_log` VALUES ('975','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1318835214');
INSERT INTO `ycity_admin_log` VALUES ('976','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1318835216');
INSERT INTO `ycity_admin_log` VALUES ('977','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1318835218');
INSERT INTO `ycity_admin_log` VALUES ('978','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318835225');
INSERT INTO `ycity_admin_log` VALUES ('979','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318835293');
INSERT INTO `ycity_admin_log` VALUES ('980','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318835435');
INSERT INTO `ycity_admin_log` VALUES ('981','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318835493');
INSERT INTO `ycity_admin_log` VALUES ('982','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318835524');
INSERT INTO `ycity_admin_log` VALUES ('983','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318835613');
INSERT INTO `ycity_admin_log` VALUES ('984','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318835631');
INSERT INTO `ycity_admin_log` VALUES ('985','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318835639');
INSERT INTO `ycity_admin_log` VALUES ('986','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318835705');
INSERT INTO `ycity_admin_log` VALUES ('987','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318835716');
INSERT INTO `ycity_admin_log` VALUES ('988','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318835729');
INSERT INTO `ycity_admin_log` VALUES ('989','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318835925');
INSERT INTO `ycity_admin_log` VALUES ('990','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836041');
INSERT INTO `ycity_admin_log` VALUES ('991','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836153');
INSERT INTO `ycity_admin_log` VALUES ('992','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836172');
INSERT INTO `ycity_admin_log` VALUES ('993','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836203');
INSERT INTO `ycity_admin_log` VALUES ('994','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836245');
INSERT INTO `ycity_admin_log` VALUES ('995','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836292');
INSERT INTO `ycity_admin_log` VALUES ('996','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836315');
INSERT INTO `ycity_admin_log` VALUES ('997','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836445');
INSERT INTO `ycity_admin_log` VALUES ('998','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836484');
INSERT INTO `ycity_admin_log` VALUES ('999','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836493');
INSERT INTO `ycity_admin_log` VALUES ('1000','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836507');
INSERT INTO `ycity_admin_log` VALUES ('1001','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836552');
INSERT INTO `ycity_admin_log` VALUES ('1002','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836570');
INSERT INTO `ycity_admin_log` VALUES ('1003','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836576');
INSERT INTO `ycity_admin_log` VALUES ('1004','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836585');
INSERT INTO `ycity_admin_log` VALUES ('1005','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836589');
INSERT INTO `ycity_admin_log` VALUES ('1006','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836604');
INSERT INTO `ycity_admin_log` VALUES ('1007','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836611');
INSERT INTO `ycity_admin_log` VALUES ('1008','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836685');
INSERT INTO `ycity_admin_log` VALUES ('1009','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836703');
INSERT INTO `ycity_admin_log` VALUES ('1010','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836712');
INSERT INTO `ycity_admin_log` VALUES ('1011','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836732');
INSERT INTO `ycity_admin_log` VALUES ('1012','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836797');
INSERT INTO `ycity_admin_log` VALUES ('1013','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836876');
INSERT INTO `ycity_admin_log` VALUES ('1014','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836898');
INSERT INTO `ycity_admin_log` VALUES ('1015','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318836900');
INSERT INTO `ycity_admin_log` VALUES ('1016','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318838474');
INSERT INTO `ycity_admin_log` VALUES ('1017','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318839461');
INSERT INTO `ycity_admin_log` VALUES ('1018','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318839509');
INSERT INTO `ycity_admin_log` VALUES ('1019','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318839519');
INSERT INTO `ycity_admin_log` VALUES ('1020','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318839551');
INSERT INTO `ycity_admin_log` VALUES ('1021','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318839914');
INSERT INTO `ycity_admin_log` VALUES ('1022','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318839923');
INSERT INTO `ycity_admin_log` VALUES ('1023','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318840426');
INSERT INTO `ycity_admin_log` VALUES ('1024','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1318840432');
INSERT INTO `ycity_admin_log` VALUES ('1025','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318840437');
INSERT INTO `ycity_admin_log` VALUES ('1026','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1318840521');
INSERT INTO `ycity_admin_log` VALUES ('1027','1','admin','/ycity/admin.php/Module/index.html','127.0.0.1','1318840523');
INSERT INTO `ycity_admin_log` VALUES ('1028','1','admin','/ycity/admin.php/Theme/index.html','127.0.0.1','1318840530');
INSERT INTO `ycity_admin_log` VALUES ('1029','1','admin','/ycity/admin.php','127.0.0.1','1318919855');
INSERT INTO `ycity_admin_log` VALUES ('1030','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318919862');
INSERT INTO `ycity_admin_log` VALUES ('1031','1','admin','/ycity/admin.php','127.0.0.1','1318919904');
INSERT INTO `ycity_admin_log` VALUES ('1032','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318920488');
INSERT INTO `ycity_admin_log` VALUES ('1033','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318920640');
INSERT INTO `ycity_admin_log` VALUES ('1034','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318920656');
INSERT INTO `ycity_admin_log` VALUES ('1035','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318920689');
INSERT INTO `ycity_admin_log` VALUES ('1036','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318920773');
INSERT INTO `ycity_admin_log` VALUES ('1037','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318920787');
INSERT INTO `ycity_admin_log` VALUES ('1038','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318920808');
INSERT INTO `ycity_admin_log` VALUES ('1039','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318920903');
INSERT INTO `ycity_admin_log` VALUES ('1040','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318920953');
INSERT INTO `ycity_admin_log` VALUES ('1041','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318920993');
INSERT INTO `ycity_admin_log` VALUES ('1042','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318921002');
INSERT INTO `ycity_admin_log` VALUES ('1043','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318921024');
INSERT INTO `ycity_admin_log` VALUES ('1044','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318921058');
INSERT INTO `ycity_admin_log` VALUES ('1045','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318921069');
INSERT INTO `ycity_admin_log` VALUES ('1046','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318921107');
INSERT INTO `ycity_admin_log` VALUES ('1047','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318921162');
INSERT INTO `ycity_admin_log` VALUES ('1048','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318921218');
INSERT INTO `ycity_admin_log` VALUES ('1049','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318921222');
INSERT INTO `ycity_admin_log` VALUES ('1050','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318921226');
INSERT INTO `ycity_admin_log` VALUES ('1051','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318921329');
INSERT INTO `ycity_admin_log` VALUES ('1052','1','admin','/ycity/admin.php/Feedback/index/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1318921388');
INSERT INTO `ycity_admin_log` VALUES ('1053','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318921611');
INSERT INTO `ycity_admin_log` VALUES ('1054','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318921680');
INSERT INTO `ycity_admin_log` VALUES ('1055','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318921728');
INSERT INTO `ycity_admin_log` VALUES ('1056','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318921836');
INSERT INTO `ycity_admin_log` VALUES ('1057','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318921881');
INSERT INTO `ycity_admin_log` VALUES ('1058','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318921902');
INSERT INTO `ycity_admin_log` VALUES ('1059','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318921917');
INSERT INTO `ycity_admin_log` VALUES ('1060','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318921948');
INSERT INTO `ycity_admin_log` VALUES ('1061','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318921956');
INSERT INTO `ycity_admin_log` VALUES ('1062','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922122');
INSERT INTO `ycity_admin_log` VALUES ('1063','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922143');
INSERT INTO `ycity_admin_log` VALUES ('1064','1','admin','/ycity/admin.php','127.0.0.1','1318922169');
INSERT INTO `ycity_admin_log` VALUES ('1065','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318922176');
INSERT INTO `ycity_admin_log` VALUES ('1066','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922330');
INSERT INTO `ycity_admin_log` VALUES ('1067','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922407');
INSERT INTO `ycity_admin_log` VALUES ('1068','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922440');
INSERT INTO `ycity_admin_log` VALUES ('1069','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922451');
INSERT INTO `ycity_admin_log` VALUES ('1070','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922511');
INSERT INTO `ycity_admin_log` VALUES ('1071','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922570');
INSERT INTO `ycity_admin_log` VALUES ('1072','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922634');
INSERT INTO `ycity_admin_log` VALUES ('1073','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922717');
INSERT INTO `ycity_admin_log` VALUES ('1074','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922728');
INSERT INTO `ycity_admin_log` VALUES ('1075','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922877');
INSERT INTO `ycity_admin_log` VALUES ('1076','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922898');
INSERT INTO `ycity_admin_log` VALUES ('1077','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922912');
INSERT INTO `ycity_admin_log` VALUES ('1078','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922925');
INSERT INTO `ycity_admin_log` VALUES ('1079','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318922960');
INSERT INTO `ycity_admin_log` VALUES ('1080','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318923006');
INSERT INTO `ycity_admin_log` VALUES ('1081','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318923053');
INSERT INTO `ycity_admin_log` VALUES ('1082','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318923069');
INSERT INTO `ycity_admin_log` VALUES ('1083','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318923081');
INSERT INTO `ycity_admin_log` VALUES ('1084','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318923181');
INSERT INTO `ycity_admin_log` VALUES ('1085','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318923209');
INSERT INTO `ycity_admin_log` VALUES ('1086','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318926425');
INSERT INTO `ycity_admin_log` VALUES ('1087','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318926454');
INSERT INTO `ycity_admin_log` VALUES ('1088','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318926531');
INSERT INTO `ycity_admin_log` VALUES ('1089','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318926536');
INSERT INTO `ycity_admin_log` VALUES ('1090','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318926567');
INSERT INTO `ycity_admin_log` VALUES ('1091','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318926596');
INSERT INTO `ycity_admin_log` VALUES ('1092','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318926617');
INSERT INTO `ycity_admin_log` VALUES ('1093','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318926619');
INSERT INTO `ycity_admin_log` VALUES ('1094','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318926720');
INSERT INTO `ycity_admin_log` VALUES ('1095','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318926727');
INSERT INTO `ycity_admin_log` VALUES ('1096','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318926769');
INSERT INTO `ycity_admin_log` VALUES ('1097','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1318926783');
INSERT INTO `ycity_admin_log` VALUES ('1098','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318930137');
INSERT INTO `ycity_admin_log` VALUES ('1099','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1318930162');
INSERT INTO `ycity_admin_log` VALUES ('1100','1','admin','/ycity/admin.php','127.0.0.1','1319082197');
INSERT INTO `ycity_admin_log` VALUES ('1101','1','admin','/ycity/admin.php','127.0.0.1','1319092136');
INSERT INTO `ycity_admin_log` VALUES ('1102','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319101270');
INSERT INTO `ycity_admin_log` VALUES ('1103','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319101280');
INSERT INTO `ycity_admin_log` VALUES ('1104','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319101284');
INSERT INTO `ycity_admin_log` VALUES ('1105','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319101296');
INSERT INTO `ycity_admin_log` VALUES ('1106','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1319101337');
INSERT INTO `ycity_admin_log` VALUES ('1107','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319101436');
INSERT INTO `ycity_admin_log` VALUES ('1108','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319101707');
INSERT INTO `ycity_admin_log` VALUES ('1109','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319101714');
INSERT INTO `ycity_admin_log` VALUES ('1110','1','admin','/ycity/admin.php/Feedback','127.0.0.1','1319101721');
INSERT INTO `ycity_admin_log` VALUES ('1111','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319111449');
INSERT INTO `ycity_admin_log` VALUES ('1112','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319111541');
INSERT INTO `ycity_admin_log` VALUES ('1113','1','admin','/ycity/admin.php','127.0.0.1','1319159505');
INSERT INTO `ycity_admin_log` VALUES ('1114','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319159636');
INSERT INTO `ycity_admin_log` VALUES ('1115','1','admin','/ycity/admin.php','127.0.0.1','1319159717');
INSERT INTO `ycity_admin_log` VALUES ('1116','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319159721');
INSERT INTO `ycity_admin_log` VALUES ('1117','1','admin','/ycity/admin.php/Menu/index.html','127.0.0.1','1319163014');
INSERT INTO `ycity_admin_log` VALUES ('1118','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319163068');
INSERT INTO `ycity_admin_log` VALUES ('1119','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319163083');
INSERT INTO `ycity_admin_log` VALUES ('1120','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319163211');
INSERT INTO `ycity_admin_log` VALUES ('1121','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319163276');
INSERT INTO `ycity_admin_log` VALUES ('1122','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319163438');
INSERT INTO `ycity_admin_log` VALUES ('1123','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319163518');
INSERT INTO `ycity_admin_log` VALUES ('1124','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319163671');
INSERT INTO `ycity_admin_log` VALUES ('1125','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319163775');
INSERT INTO `ycity_admin_log` VALUES ('1126','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319163887');
INSERT INTO `ycity_admin_log` VALUES ('1127','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319163921');
INSERT INTO `ycity_admin_log` VALUES ('1128','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319163949');
INSERT INTO `ycity_admin_log` VALUES ('1129','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319163955');
INSERT INTO `ycity_admin_log` VALUES ('1130','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319164162');
INSERT INTO `ycity_admin_log` VALUES ('1131','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319164219');
INSERT INTO `ycity_admin_log` VALUES ('1132','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319164538');
INSERT INTO `ycity_admin_log` VALUES ('1133','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319164543');
INSERT INTO `ycity_admin_log` VALUES ('1134','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319165345');
INSERT INTO `ycity_admin_log` VALUES ('1135','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319182229');
INSERT INTO `ycity_admin_log` VALUES ('1136','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319182315');
INSERT INTO `ycity_admin_log` VALUES ('1137','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319182332');
INSERT INTO `ycity_admin_log` VALUES ('1138','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319182342');
INSERT INTO `ycity_admin_log` VALUES ('1139','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319182361');
INSERT INTO `ycity_admin_log` VALUES ('1140','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319182372');
INSERT INTO `ycity_admin_log` VALUES ('1141','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319182431');
INSERT INTO `ycity_admin_log` VALUES ('1142','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319182465');
INSERT INTO `ycity_admin_log` VALUES ('1143','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319182735');
INSERT INTO `ycity_admin_log` VALUES ('1144','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319182750');
INSERT INTO `ycity_admin_log` VALUES ('1145','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319184973');
INSERT INTO `ycity_admin_log` VALUES ('1146','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319184981');
INSERT INTO `ycity_admin_log` VALUES ('1147','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319185012');
INSERT INTO `ycity_admin_log` VALUES ('1148','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319185049');
INSERT INTO `ycity_admin_log` VALUES ('1149','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319185134');
INSERT INTO `ycity_admin_log` VALUES ('1150','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319185146');
INSERT INTO `ycity_admin_log` VALUES ('1151','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319185580');
INSERT INTO `ycity_admin_log` VALUES ('1152','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319185601');
INSERT INTO `ycity_admin_log` VALUES ('1153','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1319185739');
INSERT INTO `ycity_admin_log` VALUES ('1154','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1319185815');
INSERT INTO `ycity_admin_log` VALUES ('1155','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319185823');
INSERT INTO `ycity_admin_log` VALUES ('1156','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319187236');
INSERT INTO `ycity_admin_log` VALUES ('1157','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319187249');
INSERT INTO `ycity_admin_log` VALUES ('1158','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1319187256');
INSERT INTO `ycity_admin_log` VALUES ('1159','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319187277');
INSERT INTO `ycity_admin_log` VALUES ('1160','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319187295');
INSERT INTO `ycity_admin_log` VALUES ('1161','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1319187302');
INSERT INTO `ycity_admin_log` VALUES ('1162','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319187307');
INSERT INTO `ycity_admin_log` VALUES ('1163','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319187311');
INSERT INTO `ycity_admin_log` VALUES ('1164','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319195653');
INSERT INTO `ycity_admin_log` VALUES ('1165','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319197102');
INSERT INTO `ycity_admin_log` VALUES ('1166','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319197307');
INSERT INTO `ycity_admin_log` VALUES ('1167','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319197335');
INSERT INTO `ycity_admin_log` VALUES ('1168','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319197341');
INSERT INTO `ycity_admin_log` VALUES ('1169','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1319197412');
INSERT INTO `ycity_admin_log` VALUES ('1170','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319267748');
INSERT INTO `ycity_admin_log` VALUES ('1171','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1319268122');
INSERT INTO `ycity_admin_log` VALUES ('1172','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1319268130');
INSERT INTO `ycity_admin_log` VALUES ('1173','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1319268140');
INSERT INTO `ycity_admin_log` VALUES ('1174','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1319269330');
INSERT INTO `ycity_admin_log` VALUES ('1175','1','admin','/ycity/admin.php/Job/doModify.html (编辑:8)','127.0.0.1','1319274914');
INSERT INTO `ycity_admin_log` VALUES ('1176','1','admin','/ycity/admin.php/Job','127.0.0.1','1319274916');
INSERT INTO `ycity_admin_log` VALUES ('1177','1','admin','/ycity/admin.php/Job/doModify.html (编辑:8)','127.0.0.1','1319274933');
INSERT INTO `ycity_admin_log` VALUES ('1178','1','admin','/ycity/admin.php/Job','127.0.0.1','1319274936');
INSERT INTO `ycity_admin_log` VALUES ('1179','1','admin','/ycity/admin.php/Job','127.0.0.1','1319274937');
INSERT INTO `ycity_admin_log` VALUES ('1180','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1319281302');
INSERT INTO `ycity_admin_log` VALUES ('1181','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319290873');
INSERT INTO `ycity_admin_log` VALUES ('1182','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319298485');
INSERT INTO `ycity_admin_log` VALUES ('1183','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319298536');
INSERT INTO `ycity_admin_log` VALUES ('1184','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319298543');
INSERT INTO `ycity_admin_log` VALUES ('1185','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319298587');
INSERT INTO `ycity_admin_log` VALUES ('1186','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319298615');
INSERT INTO `ycity_admin_log` VALUES ('1187','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319298630');
INSERT INTO `ycity_admin_log` VALUES ('1188','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319298680');
INSERT INTO `ycity_admin_log` VALUES ('1189','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319300406');
INSERT INTO `ycity_admin_log` VALUES ('1190','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319300503');
INSERT INTO `ycity_admin_log` VALUES ('1191','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319300609');
INSERT INTO `ycity_admin_log` VALUES ('1192','1','admin','/ycity/admin.php/Job/resumeDetail/id/1.html','127.0.0.1','1319300619');
INSERT INTO `ycity_admin_log` VALUES ('1193','1','admin','/ycity/admin.php/Job/resumeModify.html (更新简历:1)','127.0.0.1','1319300660');
INSERT INTO `ycity_admin_log` VALUES ('1194','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319300664');
INSERT INTO `ycity_admin_log` VALUES ('1195','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319300669');
INSERT INTO `ycity_admin_log` VALUES ('1196','1','admin','/ycity/admin.php/Job/resumeDetail/id/1.html','127.0.0.1','1319300678');
INSERT INTO `ycity_admin_log` VALUES ('1197','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319300686');
INSERT INTO `ycity_admin_log` VALUES ('1198','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319300748');
INSERT INTO `ycity_admin_log` VALUES ('1199','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319300809');
INSERT INTO `ycity_admin_log` VALUES ('1200','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319300830');
INSERT INTO `ycity_admin_log` VALUES ('1201','1','admin','/ycity/admin.php/Job/resumeDetail/id/1.html','127.0.0.1','1319300862');
INSERT INTO `ycity_admin_log` VALUES ('1202','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319300874');
INSERT INTO `ycity_admin_log` VALUES ('1203','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319300890');
INSERT INTO `ycity_admin_log` VALUES ('1204','1','admin','/ycity/admin.php/Job/resume/id/5.html','127.0.0.1','1319300894');
INSERT INTO `ycity_admin_log` VALUES ('1205','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319300898');
INSERT INTO `ycity_admin_log` VALUES ('1206','1','admin','/ycity/admin.php/Job/resume/id/5.html','127.0.0.1','1319300942');
INSERT INTO `ycity_admin_log` VALUES ('1207','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319300948');
INSERT INTO `ycity_admin_log` VALUES ('1208','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319300978');
INSERT INTO `ycity_admin_log` VALUES ('1209','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301029');
INSERT INTO `ycity_admin_log` VALUES ('1210','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301102');
INSERT INTO `ycity_admin_log` VALUES ('1211','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301129');
INSERT INTO `ycity_admin_log` VALUES ('1212','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301155');
INSERT INTO `ycity_admin_log` VALUES ('1213','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301197');
INSERT INTO `ycity_admin_log` VALUES ('1214','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301214');
INSERT INTO `ycity_admin_log` VALUES ('1215','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301223');
INSERT INTO `ycity_admin_log` VALUES ('1216','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301243');
INSERT INTO `ycity_admin_log` VALUES ('1217','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301291');
INSERT INTO `ycity_admin_log` VALUES ('1218','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301386');
INSERT INTO `ycity_admin_log` VALUES ('1219','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301401');
INSERT INTO `ycity_admin_log` VALUES ('1220','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301421');
INSERT INTO `ycity_admin_log` VALUES ('1221','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301454');
INSERT INTO `ycity_admin_log` VALUES ('1222','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301464');
INSERT INTO `ycity_admin_log` VALUES ('1223','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301476');
INSERT INTO `ycity_admin_log` VALUES ('1224','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301506');
INSERT INTO `ycity_admin_log` VALUES ('1225','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301539');
INSERT INTO `ycity_admin_log` VALUES ('1226','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301625');
INSERT INTO `ycity_admin_log` VALUES ('1227','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301678');
INSERT INTO `ycity_admin_log` VALUES ('1228','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301690');
INSERT INTO `ycity_admin_log` VALUES ('1229','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301712');
INSERT INTO `ycity_admin_log` VALUES ('1230','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301735');
INSERT INTO `ycity_admin_log` VALUES ('1231','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301758');
INSERT INTO `ycity_admin_log` VALUES ('1232','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301770');
INSERT INTO `ycity_admin_log` VALUES ('1233','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301792');
INSERT INTO `ycity_admin_log` VALUES ('1234','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319301824');
INSERT INTO `ycity_admin_log` VALUES ('1235','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319301831');
INSERT INTO `ycity_admin_log` VALUES ('1236','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319301922');
INSERT INTO `ycity_admin_log` VALUES ('1237','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319301938');
INSERT INTO `ycity_admin_log` VALUES ('1238','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319301981');
INSERT INTO `ycity_admin_log` VALUES ('1239','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319301993');
INSERT INTO `ycity_admin_log` VALUES ('1240','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319302025');
INSERT INTO `ycity_admin_log` VALUES ('1241','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319302133');
INSERT INTO `ycity_admin_log` VALUES ('1242','1','admin','/ycity/admin.php/Config/index.html','127.0.0.1','1319302257');
INSERT INTO `ycity_admin_log` VALUES ('1243','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1319302263');
INSERT INTO `ycity_admin_log` VALUES ('1244','1','admin','/ycity/admin.php/Core/doCore.html (编辑内核配置)','127.0.0.1','1319302267');
INSERT INTO `ycity_admin_log` VALUES ('1245','1','admin','/ycity/admin.php/Core','127.0.0.1','1319302269');
INSERT INTO `ycity_admin_log` VALUES ('1246','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1319302272');
INSERT INTO `ycity_admin_log` VALUES ('1247','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1319302285');
INSERT INTO `ycity_admin_log` VALUES ('1248','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1319302316');
INSERT INTO `ycity_admin_log` VALUES ('1249','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319302323');
INSERT INTO `ycity_admin_log` VALUES ('1250','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319302343');
INSERT INTO `ycity_admin_log` VALUES ('1251','1','admin','/ycity/admin.php/Job/resume/id/8.html','127.0.0.1','1319302349');
INSERT INTO `ycity_admin_log` VALUES ('1252','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319302371');
INSERT INTO `ycity_admin_log` VALUES ('1253','1','admin','/ycity/admin.php/Job/resume/id/5.html','127.0.0.1','1319302375');
INSERT INTO `ycity_admin_log` VALUES ('1254','1','admin','/ycity/admin.php/Job/resumeDetail/id/1.html','127.0.0.1','1319305715');
INSERT INTO `ycity_admin_log` VALUES ('1255','1','admin','/ycity/admin.php/Job/resumeDetail/id/1.html','127.0.0.1','1319305856');
INSERT INTO `ycity_admin_log` VALUES ('1256','1','admin','/ycity/admin.php/Job/resumeDetail/id/1.html','127.0.0.1','1319305875');
INSERT INTO `ycity_admin_log` VALUES ('1257','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319305897');
INSERT INTO `ycity_admin_log` VALUES ('1258','1','admin','/ycity/admin.php/Job/resumeDetail/id/1.html','127.0.0.1','1319305903');
INSERT INTO `ycity_admin_log` VALUES ('1259','1','admin','/ycity/admin.php/Job/resumeDetail/id/1.html','127.0.0.1','1319305997');
INSERT INTO `ycity_admin_log` VALUES ('1260','1','admin','/ycity/admin.php/Job','127.0.0.1','1319306031');
INSERT INTO `ycity_admin_log` VALUES ('1261','1','admin','/ycity/admin.php/Job/resume/id/8.html','127.0.0.1','1319306036');
INSERT INTO `ycity_admin_log` VALUES ('1262','1','admin','/ycity/admin.php/Job','127.0.0.1','1319306040');
INSERT INTO `ycity_admin_log` VALUES ('1263','1','admin','/ycity/admin.php/Job','127.0.0.1','1319306051');
INSERT INTO `ycity_admin_log` VALUES ('1264','1','admin','/ycity/admin.php/Job','127.0.0.1','1319306198');
INSERT INTO `ycity_admin_log` VALUES ('1265','1','admin','/ycity/admin.php/Job/resumeDetail/id/1.html','127.0.0.1','1319306202');
INSERT INTO `ycity_admin_log` VALUES ('1266','1','admin','/ycity/admin.php/Job/resumeDetail/id/1.html','127.0.0.1','1319306883');
INSERT INTO `ycity_admin_log` VALUES ('1267','1','admin','/ycity/admin.php/Job/resumeDetail/id/1.html','127.0.0.1','1319306993');
INSERT INTO `ycity_admin_log` VALUES ('1268','1','admin','/ycity/admin.php/Job/resumeDetail/id/1.html','127.0.0.1','1319307270');
INSERT INTO `ycity_admin_log` VALUES ('1269','1','admin','/ycity/admin.php/Job/resumeDetail/id/1.html','127.0.0.1','1319307286');
INSERT INTO `ycity_admin_log` VALUES ('1270','1','admin','/ycity/admin.php/Job/resumeDetail/id/1.html','127.0.0.1','1319307325');
INSERT INTO `ycity_admin_log` VALUES ('1271','1','admin','/ycity/admin.php/Job/resumeDetail/id/1.html','127.0.0.1','1319307361');
INSERT INTO `ycity_admin_log` VALUES ('1272','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319307391');
INSERT INTO `ycity_admin_log` VALUES ('1273','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319307472');
INSERT INTO `ycity_admin_log` VALUES ('1274','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319307476');
INSERT INTO `ycity_admin_log` VALUES ('1275','1','admin','/ycity/admin.php','127.0.0.1','1319338880');
INSERT INTO `ycity_admin_log` VALUES ('1276','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319345542');
INSERT INTO `ycity_admin_log` VALUES ('1277','1','admin','/ycity/admin.php','127.0.0.1','1319346751');
INSERT INTO `ycity_admin_log` VALUES ('1278','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319346758');
INSERT INTO `ycity_admin_log` VALUES ('1279','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319346815');
INSERT INTO `ycity_admin_log` VALUES ('1280','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319346818');
INSERT INTO `ycity_admin_log` VALUES ('1281','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319359870');
INSERT INTO `ycity_admin_log` VALUES ('1282','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319359885');
INSERT INTO `ycity_admin_log` VALUES ('1283','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319360401');
INSERT INTO `ycity_admin_log` VALUES ('1284','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319360422');
INSERT INTO `ycity_admin_log` VALUES ('1285','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319360467');
INSERT INTO `ycity_admin_log` VALUES ('1286','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319360683');
INSERT INTO `ycity_admin_log` VALUES ('1287','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319360718');
INSERT INTO `ycity_admin_log` VALUES ('1288','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319360728');
INSERT INTO `ycity_admin_log` VALUES ('1289','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319360734');
INSERT INTO `ycity_admin_log` VALUES ('1290','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319360806');
INSERT INTO `ycity_admin_log` VALUES ('1291','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319360889');
INSERT INTO `ycity_admin_log` VALUES ('1292','1','admin','/ycity/admin.php','127.0.0.1','1319428290');
INSERT INTO `ycity_admin_log` VALUES ('1293','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319428308');
INSERT INTO `ycity_admin_log` VALUES ('1294','1','admin','/ycity/admin.php','127.0.0.1','1319439204');
INSERT INTO `ycity_admin_log` VALUES ('1295','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319439218');
INSERT INTO `ycity_admin_log` VALUES ('1296','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319440278');
INSERT INTO `ycity_admin_log` VALUES ('1297','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319440445');
INSERT INTO `ycity_admin_log` VALUES ('1298','1','admin','/ycity/admin.php/Link/doModify.html (编辑:2)','127.0.0.1','1319440676');
INSERT INTO `ycity_admin_log` VALUES ('1299','1','admin','/ycity/admin.php/Link','127.0.0.1','1319440679');
INSERT INTO `ycity_admin_log` VALUES ('1300','1','admin','/ycity/admin.php/Link/doModify.html (编辑:2)','127.0.0.1','1319440704');
INSERT INTO `ycity_admin_log` VALUES ('1301','1','admin','/ycity/admin.php/Link','127.0.0.1','1319440706');
INSERT INTO `ycity_admin_log` VALUES ('1302','1','admin','/ycity/admin.php/Link/doModify.html (编辑:2)','127.0.0.1','1319440723');
INSERT INTO `ycity_admin_log` VALUES ('1303','1','admin','/ycity/admin.php/Link','127.0.0.1','1319440725');
INSERT INTO `ycity_admin_log` VALUES ('1304','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319440865');
INSERT INTO `ycity_admin_log` VALUES ('1305','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319441065');
INSERT INTO `ycity_admin_log` VALUES ('1306','1','admin','/ycity/admin.php/Tags/index.html','127.0.0.1','1319444854');
INSERT INTO `ycity_admin_log` VALUES ('1307','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319444985');
INSERT INTO `ycity_admin_log` VALUES ('1308','1','admin','/ycity/admin.php/Tags/index.html','127.0.0.1','1319444993');
INSERT INTO `ycity_admin_log` VALUES ('1309','1','admin','/ycity/admin.php/Tags/index.html','127.0.0.1','1319446669');
INSERT INTO `ycity_admin_log` VALUES ('1310','1','admin','/ycity/admin.php/Tags/index.html','127.0.0.1','1319446886');
INSERT INTO `ycity_admin_log` VALUES ('1311','1','admin','/ycity/admin.php/Tags/index.html','127.0.0.1','1319446949');
INSERT INTO `ycity_admin_log` VALUES ('1312','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319447066');
INSERT INTO `ycity_admin_log` VALUES ('1313','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319447462');
INSERT INTO `ycity_admin_log` VALUES ('1314','1','admin','/ycity/admin.php','127.0.0.1','1319511441');
INSERT INTO `ycity_admin_log` VALUES ('1315','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319513404');
INSERT INTO `ycity_admin_log` VALUES ('1316','1','admin','/ycity/admin.php','127.0.0.1','1319514875');
INSERT INTO `ycity_admin_log` VALUES ('1317','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319514907');
INSERT INTO `ycity_admin_log` VALUES ('1318','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319514915');
INSERT INTO `ycity_admin_log` VALUES ('1319','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319514968');
INSERT INTO `ycity_admin_log` VALUES ('1320','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319515366');
INSERT INTO `ycity_admin_log` VALUES ('1321','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319515403');
INSERT INTO `ycity_admin_log` VALUES ('1322','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319515599');
INSERT INTO `ycity_admin_log` VALUES ('1323','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319515616');
INSERT INTO `ycity_admin_log` VALUES ('1324','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319515621');
INSERT INTO `ycity_admin_log` VALUES ('1325','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319515697');
INSERT INTO `ycity_admin_log` VALUES ('1326','1','admin','/ycity/admin.php/Comment/index/username/m/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319516027');
INSERT INTO `ycity_admin_log` VALUES ('1327','1','admin','/ycity/admin.php/Comment/index/username/a/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319516031');
INSERT INTO `ycity_admin_log` VALUES ('1328','1','admin','/ycity/admin.php/Comment/index/username/tset/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319516040');
INSERT INTO `ycity_admin_log` VALUES ('1329','1','admin','/ycity/admin.php/Comment','127.0.0.1','1319516084');
INSERT INTO `ycity_admin_log` VALUES ('1330','1','admin','/ycity/admin.php/Comment/index/username/gdggdfg/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319516090');
INSERT INTO `ycity_admin_log` VALUES ('1331','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1319516093');
INSERT INTO `ycity_admin_log` VALUES ('1332','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1319516096');
INSERT INTO `ycity_admin_log` VALUES ('1333','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319516100');
INSERT INTO `ycity_admin_log` VALUES ('1334','1','admin','/ycity/admin.php/Feedback/index/username/dgg/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319516104');
INSERT INTO `ycity_admin_log` VALUES ('1335','1','admin','/ycity/admin.php/Tags/index.html','127.0.0.1','1319516143');
INSERT INTO `ycity_admin_log` VALUES ('1336','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319516149');
INSERT INTO `ycity_admin_log` VALUES ('1337','1','admin','/ycity/admin.php/Link/index/title/sfsfs/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319516155');
INSERT INTO `ycity_admin_log` VALUES ('1338','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319516248');
INSERT INTO `ycity_admin_log` VALUES ('1339','1','admin','/ycity/admin.php','127.0.0.1','1319523602');
INSERT INTO `ycity_admin_log` VALUES ('1340','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319523607');
INSERT INTO `ycity_admin_log` VALUES ('1341','1','admin','/ycity/admin.php','127.0.0.1','1319525202');
INSERT INTO `ycity_admin_log` VALUES ('1342','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319525886');
INSERT INTO `ycity_admin_log` VALUES ('1343','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319526000');
INSERT INTO `ycity_admin_log` VALUES ('1344','1','admin','/ycity/admin.php/Comment/doModify.html (编辑:1)','127.0.0.1','1319526058');
INSERT INTO `ycity_admin_log` VALUES ('1345','1','admin','/ycity/admin.php/Comment','127.0.0.1','1319526060');
INSERT INTO `ycity_admin_log` VALUES ('1346','1','admin','/ycity/admin.php/Comment','127.0.0.1','1319526089');
INSERT INTO `ycity_admin_log` VALUES ('1347','1','admin','/ycity/admin.php/Comment/doModify.html (编辑:1)','127.0.0.1','1319526199');
INSERT INTO `ycity_admin_log` VALUES ('1348','1','admin','/ycity/admin.php/Comment','127.0.0.1','1319526201');
INSERT INTO `ycity_admin_log` VALUES ('1349','1','admin','/ycity/admin.php/Comment','127.0.0.1','1319526239');
INSERT INTO `ycity_admin_log` VALUES ('1350','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319526312');
INSERT INTO `ycity_admin_log` VALUES ('1351','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319526313');
INSERT INTO `ycity_admin_log` VALUES ('1352','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319526323');
INSERT INTO `ycity_admin_log` VALUES ('1353','1','admin','/ycity/admin.php/Tags/index.html','127.0.0.1','1319526356');
INSERT INTO `ycity_admin_log` VALUES ('1354','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319526387');
INSERT INTO `ycity_admin_log` VALUES ('1355','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319526411');
INSERT INTO `ycity_admin_log` VALUES ('1356','1','admin','/ycity/admin.php/Job/index/title/tert/status/0/istop/0/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526419');
INSERT INTO `ycity_admin_log` VALUES ('1357','1','admin','/ycity/admin.php/Job/index/title/tert/status/0/istop/0/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526436');
INSERT INTO `ycity_admin_log` VALUES ('1358','1','admin','/ycity/admin.php/Job/index/title/tert/status/0/istop/0/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526441');
INSERT INTO `ycity_admin_log` VALUES ('1359','1','admin','/ycity/admin.php/Job/index/title/tert/status/0/istop/0/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526459');
INSERT INTO `ycity_admin_log` VALUES ('1360','1','admin','/ycity/admin.php/Job/index/title/tert/status/0/istop/0/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526503');
INSERT INTO `ycity_admin_log` VALUES ('1361','1','admin','/ycity/admin.php/Comment/index/username/erw/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526519');
INSERT INTO `ycity_admin_log` VALUES ('1362','1','admin','/ycity/admin.php/Comment/index/rcontent/asdsad/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526772');
INSERT INTO `ycity_admin_log` VALUES ('1363','1','admin','/ycity/admin.php/Comment/index/username/erw/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526776');
INSERT INTO `ycity_admin_log` VALUES ('1364','1','admin','/ycity/admin.php/Comment/index/username/erw/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526803');
INSERT INTO `ycity_admin_log` VALUES ('1365','1','admin','/ycity/admin.php/Comment/index/username/erw/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526808');
INSERT INTO `ycity_admin_log` VALUES ('1366','1','admin','/ycity/admin.php/Comment/index/username/sdfsdf/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526818');
INSERT INTO `ycity_admin_log` VALUES ('1367','1','admin','/ycity/admin.php/Comment/index/username/sdfsdf/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526853');
INSERT INTO `ycity_admin_log` VALUES ('1368','1','admin','/ycity/admin.php/Comment/index/username/sdfsdf/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526858');
INSERT INTO `ycity_admin_log` VALUES ('1369','1','admin','/ycity/admin.php/Comment/index/username/sdsa/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526871');
INSERT INTO `ycity_admin_log` VALUES ('1370','1','admin','/ycity/admin.php/Comment/index/username/sdsa/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526944');
INSERT INTO `ycity_admin_log` VALUES ('1371','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319526952');
INSERT INTO `ycity_admin_log` VALUES ('1372','1','admin','/ycity/admin.php/Comment/index/username/geg/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/','127.0.0.1','1319526958');
INSERT INTO `ycity_admin_log` VALUES ('1373','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319526964');
INSERT INTO `ycity_admin_log` VALUES ('1374','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319527032');
INSERT INTO `ycity_admin_log` VALUES ('1375','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319527092');
INSERT INTO `ycity_admin_log` VALUES ('1376','1','admin','/ycity/admin.php/Comment/doCommand.html (批量更新: 1 影响 1 条记录)','127.0.0.1','1319527098');
INSERT INTO `ycity_admin_log` VALUES ('1377','1','admin','/ycity/admin.php/Comment','127.0.0.1','1319527101');
INSERT INTO `ycity_admin_log` VALUES ('1378','1','admin','/ycity/admin.php/Comment/doCommand.html (批量更新: 1 影响 1 条记录)','127.0.0.1','1319527112');
INSERT INTO `ycity_admin_log` VALUES ('1379','1','admin','/ycity/admin.php/Comment','127.0.0.1','1319527116');
INSERT INTO `ycity_admin_log` VALUES ('1380','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1319527252');
INSERT INTO `ycity_admin_log` VALUES ('1381','1','admin','/ycity/admin.php/Comment','127.0.0.1','1319527273');
INSERT INTO `ycity_admin_log` VALUES ('1382','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1319527277');
INSERT INTO `ycity_admin_log` VALUES ('1383','1','admin','/ycity/admin.php/Core/doCore.html (编辑内核配置)','127.0.0.1','1319527284');
INSERT INTO `ycity_admin_log` VALUES ('1384','1','admin','/ycity/admin.php/Core','127.0.0.1','1319527286');
INSERT INTO `ycity_admin_log` VALUES ('1385','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319527295');
INSERT INTO `ycity_admin_log` VALUES ('1386','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1319527303');
INSERT INTO `ycity_admin_log` VALUES ('1387','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319527345');
INSERT INTO `ycity_admin_log` VALUES ('1388','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319527351');
INSERT INTO `ycity_admin_log` VALUES ('1389','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319528800');
INSERT INTO `ycity_admin_log` VALUES ('1390','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319528816');
INSERT INTO `ycity_admin_log` VALUES ('1391','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319528985');
INSERT INTO `ycity_admin_log` VALUES ('1392','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529049');
INSERT INTO `ycity_admin_log` VALUES ('1393','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529073');
INSERT INTO `ycity_admin_log` VALUES ('1394','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529162');
INSERT INTO `ycity_admin_log` VALUES ('1395','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529184');
INSERT INTO `ycity_admin_log` VALUES ('1396','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529206');
INSERT INTO `ycity_admin_log` VALUES ('1397','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529246');
INSERT INTO `ycity_admin_log` VALUES ('1398','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529257');
INSERT INTO `ycity_admin_log` VALUES ('1399','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529289');
INSERT INTO `ycity_admin_log` VALUES ('1400','1','admin','/ycity/admin.php/News/index/title/dsf/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/categoryId/0/status/0/istop/0/','127.0.0.1','1319529301');
INSERT INTO `ycity_admin_log` VALUES ('1401','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529305');
INSERT INTO `ycity_admin_log` VALUES ('1402','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529319');
INSERT INTO `ycity_admin_log` VALUES ('1403','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529521');
INSERT INTO `ycity_admin_log` VALUES ('1404','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529536');
INSERT INTO `ycity_admin_log` VALUES ('1405','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529568');
INSERT INTO `ycity_admin_log` VALUES ('1406','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529747');
INSERT INTO `ycity_admin_log` VALUES ('1407','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529828');
INSERT INTO `ycity_admin_log` VALUES ('1408','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529846');
INSERT INTO `ycity_admin_log` VALUES ('1409','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529871');
INSERT INTO `ycity_admin_log` VALUES ('1410','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529954');
INSERT INTO `ycity_admin_log` VALUES ('1411','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529971');
INSERT INTO `ycity_admin_log` VALUES ('1412','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319529985');
INSERT INTO `ycity_admin_log` VALUES ('1413','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319530035');
INSERT INTO `ycity_admin_log` VALUES ('1414','1','admin','/ycity/admin.php/News/index.html','192.168.0.104','1319530175');
INSERT INTO `ycity_admin_log` VALUES ('1415','1','admin','/ycity/admin.php/Config/index.html','192.168.0.104','1319530192');
INSERT INTO `ycity_admin_log` VALUES ('1416','1','admin','/ycity/admin.php/Index/index.html','192.168.0.104','1319530194');
INSERT INTO `ycity_admin_log` VALUES ('1417','1','admin','/ycity/admin.php/News/index.html','192.168.0.104','1319530204');
INSERT INTO `ycity_admin_log` VALUES ('1418','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319530349');
INSERT INTO `ycity_admin_log` VALUES ('1419','1','admin','/ycity/admin.php/News/index.html','192.168.0.104','1319530361');
INSERT INTO `ycity_admin_log` VALUES ('1420','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319530975');
INSERT INTO `ycity_admin_log` VALUES ('1421','1','admin','/ycity/admin.php/Category/index.html','127.0.0.1','1319531213');
INSERT INTO `ycity_admin_log` VALUES ('1422','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319531217');
INSERT INTO `ycity_admin_log` VALUES ('1423','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319531332');
INSERT INTO `ycity_admin_log` VALUES ('1424','1','admin','/ycity/admin.php/News/doModify.html (编辑:10)','127.0.0.1','1319531381');
INSERT INTO `ycity_admin_log` VALUES ('1425','1','admin','/ycity/admin.php/News','127.0.0.1','1319531384');
INSERT INTO `ycity_admin_log` VALUES ('1426','1','admin','/ycity/admin.php/News','127.0.0.1','1319531428');
INSERT INTO `ycity_admin_log` VALUES ('1427','1','admin','/ycity/admin.php/News','127.0.0.1','1319531513');
INSERT INTO `ycity_admin_log` VALUES ('1428','1','admin','/ycity/admin.php/News','127.0.0.1','1319531599');
INSERT INTO `ycity_admin_log` VALUES ('1429','1','admin','/ycity/admin.php/News','127.0.0.1','1319531629');
INSERT INTO `ycity_admin_log` VALUES ('1430','1','admin','/ycity/admin.php/News','127.0.0.1','1319531707');
INSERT INTO `ycity_admin_log` VALUES ('1431','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319531817');
INSERT INTO `ycity_admin_log` VALUES ('1432','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319531849');
INSERT INTO `ycity_admin_log` VALUES ('1433','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319531855');
INSERT INTO `ycity_admin_log` VALUES ('1434','1','admin','/ycity/admin.php/Job/resume.html','127.0.0.1','1319531858');
INSERT INTO `ycity_admin_log` VALUES ('1435','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319531872');
INSERT INTO `ycity_admin_log` VALUES ('1436','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319531876');
INSERT INTO `ycity_admin_log` VALUES ('1437','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319531946');
INSERT INTO `ycity_admin_log` VALUES ('1438','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319531973');
INSERT INTO `ycity_admin_log` VALUES ('1439','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319531994');
INSERT INTO `ycity_admin_log` VALUES ('1440','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319532010');
INSERT INTO `ycity_admin_log` VALUES ('1441','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319532027');
INSERT INTO `ycity_admin_log` VALUES ('1442','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319532183');
INSERT INTO `ycity_admin_log` VALUES ('1443','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319532239');
INSERT INTO `ycity_admin_log` VALUES ('1444','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319532322');
INSERT INTO `ycity_admin_log` VALUES ('1445','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319532345');
INSERT INTO `ycity_admin_log` VALUES ('1446','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319532363');
INSERT INTO `ycity_admin_log` VALUES ('1447','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319532728');
INSERT INTO `ycity_admin_log` VALUES ('1448','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319532781');
INSERT INTO `ycity_admin_log` VALUES ('1449','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319532886');
INSERT INTO `ycity_admin_log` VALUES ('1450','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319532905');
INSERT INTO `ycity_admin_log` VALUES ('1451','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319532926');
INSERT INTO `ycity_admin_log` VALUES ('1452','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319532935');
INSERT INTO `ycity_admin_log` VALUES ('1453','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319532953');
INSERT INTO `ycity_admin_log` VALUES ('1454','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319542810');
INSERT INTO `ycity_admin_log` VALUES ('1455','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319542855');
INSERT INTO `ycity_admin_log` VALUES ('1456','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319542919');
INSERT INTO `ycity_admin_log` VALUES ('1457','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319542978');
INSERT INTO `ycity_admin_log` VALUES ('1458','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319543018');
INSERT INTO `ycity_admin_log` VALUES ('1459','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1319543032');
INSERT INTO `ycity_admin_log` VALUES ('1460','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319543038');
INSERT INTO `ycity_admin_log` VALUES ('1461','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319543289');
INSERT INTO `ycity_admin_log` VALUES ('1462','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319543454');
INSERT INTO `ycity_admin_log` VALUES ('1463','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319543919');
INSERT INTO `ycity_admin_log` VALUES ('1464','1','admin','/ycity/admin.php/News/index.html','192.168.0.104','1319544538');
INSERT INTO `ycity_admin_log` VALUES ('1465','1','admin','/ycity/admin.php/News/index/title/%E5%85%AC%E5%8F%B8%E7%AE%80%E4%BB%8B/orderBy/id/orderType/DESC/pageSize/20/categoryId/0/recommend/0/status/0/istop/0/submit/%E6%90%9C%E7%B4%A2/','192.168.0.104','1319544578');
INSERT INTO `ycity_admin_log` VALUES ('1466','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319544629');
INSERT INTO `ycity_admin_log` VALUES ('1467','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319549856');
INSERT INTO `ycity_admin_log` VALUES ('1468','1','admin','/ycity/admin.php/Link/index.html','127.0.0.1','1319549883');
INSERT INTO `ycity_admin_log` VALUES ('1469','1','admin','/ycity/admin.php/Comment/index.html','127.0.0.1','1319549888');
INSERT INTO `ycity_admin_log` VALUES ('1470','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319549897');
INSERT INTO `ycity_admin_log` VALUES ('1471','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319550166');
INSERT INTO `ycity_admin_log` VALUES ('1472','1','admin','/ycity/admin.php/Ad/doModify.html (编辑:10)','127.0.0.1','1319550209');
INSERT INTO `ycity_admin_log` VALUES ('1473','1','admin','/ycity/admin.php/Ad','127.0.0.1','1319550211');
INSERT INTO `ycity_admin_log` VALUES ('1474','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1319550217');
INSERT INTO `ycity_admin_log` VALUES ('1475','1','admin','/ycity/admin.php/Ad/index.html','127.0.0.1','1319550228');
INSERT INTO `ycity_admin_log` VALUES ('1476','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319550234');
INSERT INTO `ycity_admin_log` VALUES ('1477','1','admin','/ycity/admin.php/News/doModify.html (编辑:10)','127.0.0.1','1319550243');
INSERT INTO `ycity_admin_log` VALUES ('1478','1','admin','/ycity/admin.php/News','127.0.0.1','1319550246');
INSERT INTO `ycity_admin_log` VALUES ('1479','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319550628');
INSERT INTO `ycity_admin_log` VALUES ('1480','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319550682');
INSERT INTO `ycity_admin_log` VALUES ('1481','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319550705');
INSERT INTO `ycity_admin_log` VALUES ('1482','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319550712');
INSERT INTO `ycity_admin_log` VALUES ('1483','1','admin','/ycity/admin.php','127.0.0.1','1319593778');
INSERT INTO `ycity_admin_log` VALUES ('1484','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319593874');
INSERT INTO `ycity_admin_log` VALUES ('1485','1','admin','/ycity/admin.php/Feedback/index.html','127.0.0.1','1319593879');
INSERT INTO `ycity_admin_log` VALUES ('1486','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319593883');
INSERT INTO `ycity_admin_log` VALUES ('1487','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319593934');
INSERT INTO `ycity_admin_log` VALUES ('1488','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319593944');
INSERT INTO `ycity_admin_log` VALUES ('1489','1','admin','/ycity/admin.php','127.0.0.1','1319594008');
INSERT INTO `ycity_admin_log` VALUES ('1490','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319594021');
INSERT INTO `ycity_admin_log` VALUES ('1491','1','admin','/ycity/admin.php/Job/index.html','127.0.0.1','1319594032');
INSERT INTO `ycity_admin_log` VALUES ('1492','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319594300');
INSERT INTO `ycity_admin_log` VALUES ('1493','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319594339');
INSERT INTO `ycity_admin_log` VALUES ('1494','1','admin','/ycity/admin.php/News/doModify.html (编辑:10)','127.0.0.1','1319594351');
INSERT INTO `ycity_admin_log` VALUES ('1495','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319594353');
INSERT INTO `ycity_admin_log` VALUES ('1496','1','admin','/ycity/admin.php/News','127.0.0.1','1319594355');
INSERT INTO `ycity_admin_log` VALUES ('1497','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319595124');
INSERT INTO `ycity_admin_log` VALUES ('1498','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319595137');
INSERT INTO `ycity_admin_log` VALUES ('1499','1','admin','/ycity/admin.php/News/doCommand.html (批量更新: 10,9,8,7,6,5,4,3,2,1 影响 10 条记录)','127.0.0.1','1319595144');
INSERT INTO `ycity_admin_log` VALUES ('1500','1','admin','/ycity/admin.php/News','127.0.0.1','1319595147');
INSERT INTO `ycity_admin_log` VALUES ('1501','1','admin','/ycity/admin.php/News/doCommand.html (批量更新: 10,9,8,7,6,5,4,3,2,1 影响 10 条记录)','127.0.0.1','1319595349');
INSERT INTO `ycity_admin_log` VALUES ('1502','1','admin','/ycity/admin.php/News','127.0.0.1','1319595352');
INSERT INTO `ycity_admin_log` VALUES ('1503','1','admin','/ycity/admin.php/News/doCommand.html (批量更新: 10,9,8,7,6,5,4,3,2,1 影响 10 条记录)','127.0.0.1','1319595384');
INSERT INTO `ycity_admin_log` VALUES ('1504','1','admin','/ycity/admin.php/News','127.0.0.1','1319595386');
INSERT INTO `ycity_admin_log` VALUES ('1505','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319596294');
INSERT INTO `ycity_admin_log` VALUES ('1506','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319596489');
INSERT INTO `ycity_admin_log` VALUES ('1507','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319596990');
INSERT INTO `ycity_admin_log` VALUES ('1508','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319597053');
INSERT INTO `ycity_admin_log` VALUES ('1509','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319597077');
INSERT INTO `ycity_admin_log` VALUES ('1510','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319597089');
INSERT INTO `ycity_admin_log` VALUES ('1511','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319597744');
INSERT INTO `ycity_admin_log` VALUES ('1512','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319598772');
INSERT INTO `ycity_admin_log` VALUES ('1513','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319598913');
INSERT INTO `ycity_admin_log` VALUES ('1514','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319599044');
INSERT INTO `ycity_admin_log` VALUES ('1515','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319599061');
INSERT INTO `ycity_admin_log` VALUES ('1516','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319600359');
INSERT INTO `ycity_admin_log` VALUES ('1517','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319600565');
INSERT INTO `ycity_admin_log` VALUES ('1518','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319600957');
INSERT INTO `ycity_admin_log` VALUES ('1519','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319600962');
INSERT INTO `ycity_admin_log` VALUES ('1520','1','admin','/ycity/admin.php/News/index.html','192.168.0.104','1319601840');
INSERT INTO `ycity_admin_log` VALUES ('1521','1','admin','/ycity/admin.php/Product/index.html','192.168.0.104','1319601849');
INSERT INTO `ycity_admin_log` VALUES ('1522','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319602597');
INSERT INTO `ycity_admin_log` VALUES ('1523','1','admin','/ycity/admin.php/News/index.html','192.168.0.104','1319602853');
INSERT INTO `ycity_admin_log` VALUES ('1524','1','admin','/ycity/admin.php/News/doInsert.html (录入:13)','192.168.0.104','1319603052');
INSERT INTO `ycity_admin_log` VALUES ('1525','1','admin','/ycity/admin.php/News','192.168.0.104','1319603055');
INSERT INTO `ycity_admin_log` VALUES ('1526','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319603222');
INSERT INTO `ycity_admin_log` VALUES ('1527','1','admin','/ycity/admin.php/News/doModify.html (编辑:13)','127.0.0.1','1319603251');
INSERT INTO `ycity_admin_log` VALUES ('1528','1','admin','/ycity/admin.php/News','127.0.0.1','1319603254');
INSERT INTO `ycity_admin_log` VALUES ('1529','1','admin','/ycity/admin.php/News/doModify.html (编辑:13)','127.0.0.1','1319603308');
INSERT INTO `ycity_admin_log` VALUES ('1530','1','admin','/ycity/admin.php/News','127.0.0.1','1319603312');
INSERT INTO `ycity_admin_log` VALUES ('1531','1','admin','/ycity/admin.php/News/doInsert.html (录入:14)','127.0.0.1','1319603397');
INSERT INTO `ycity_admin_log` VALUES ('1532','1','admin','/ycity/admin.php/News','127.0.0.1','1319603401');
INSERT INTO `ycity_admin_log` VALUES ('1533','1','admin','/ycity/admin.php/News/doInsert.html (录入:15)','127.0.0.1','1319603499');
INSERT INTO `ycity_admin_log` VALUES ('1534','1','admin','/ycity/admin.php/News','127.0.0.1','1319603503');
INSERT INTO `ycity_admin_log` VALUES ('1535','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319603520');
INSERT INTO `ycity_admin_log` VALUES ('1536','1','admin','/ycity/admin.php/News/doCommand/operate/delete/id/15.html (删除: 15)','127.0.0.1','1319603527');
INSERT INTO `ycity_admin_log` VALUES ('1537','1','admin','/ycity/admin.php/News','127.0.0.1','1319603530');
INSERT INTO `ycity_admin_log` VALUES ('1538','1','admin','/ycity/admin.php/News/doCommand.html (删除: 14)','127.0.0.1','1319603542');
INSERT INTO `ycity_admin_log` VALUES ('1539','1','admin','/ycity/admin.php/News','127.0.0.1','1319603545');
INSERT INTO `ycity_admin_log` VALUES ('1540','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319611351');
INSERT INTO `ycity_admin_log` VALUES ('1541','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319611414');
INSERT INTO `ycity_admin_log` VALUES ('1542','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1319611426');
INSERT INTO `ycity_admin_log` VALUES ('1543','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319611659');
INSERT INTO `ycity_admin_log` VALUES ('1544','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319611734');
INSERT INTO `ycity_admin_log` VALUES ('1545','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319613289');
INSERT INTO `ycity_admin_log` VALUES ('1546','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319613291');
INSERT INTO `ycity_admin_log` VALUES ('1547','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319613989');
INSERT INTO `ycity_admin_log` VALUES ('1548','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319614009');
INSERT INTO `ycity_admin_log` VALUES ('1549','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319614073');
INSERT INTO `ycity_admin_log` VALUES ('1550','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319614153');
INSERT INTO `ycity_admin_log` VALUES ('1551','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319614161');
INSERT INTO `ycity_admin_log` VALUES ('1552','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319614251');
INSERT INTO `ycity_admin_log` VALUES ('1553','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319617615');
INSERT INTO `ycity_admin_log` VALUES ('1554','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319617651');
INSERT INTO `ycity_admin_log` VALUES ('1555','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319617684');
INSERT INTO `ycity_admin_log` VALUES ('1556','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319617742');
INSERT INTO `ycity_admin_log` VALUES ('1557','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319617862');
INSERT INTO `ycity_admin_log` VALUES ('1558','1','admin','/ycity/admin.php/Core/index.html','127.0.0.1','1319617869');
INSERT INTO `ycity_admin_log` VALUES ('1559','1','admin','/ycity/admin.php/Core/doCore.html (编辑内核配置)','127.0.0.1','1319617875');
INSERT INTO `ycity_admin_log` VALUES ('1560','1','admin','/ycity/admin.php/Core','127.0.0.1','1319617878');
INSERT INTO `ycity_admin_log` VALUES ('1561','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319617884');
INSERT INTO `ycity_admin_log` VALUES ('1562','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1319617890');
INSERT INTO `ycity_admin_log` VALUES ('1563','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1319617905');
INSERT INTO `ycity_admin_log` VALUES ('1564','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319617913');
INSERT INTO `ycity_admin_log` VALUES ('1565','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319617920');
INSERT INTO `ycity_admin_log` VALUES ('1566','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319617968');
INSERT INTO `ycity_admin_log` VALUES ('1567','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319617983');
INSERT INTO `ycity_admin_log` VALUES ('1568','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319618046');
INSERT INTO `ycity_admin_log` VALUES ('1569','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319618050');
INSERT INTO `ycity_admin_log` VALUES ('1570','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319618126');
INSERT INTO `ycity_admin_log` VALUES ('1571','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319618142');
INSERT INTO `ycity_admin_log` VALUES ('1572','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319618153');
INSERT INTO `ycity_admin_log` VALUES ('1573','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319618384');
INSERT INTO `ycity_admin_log` VALUES ('1574','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319618406');
INSERT INTO `ycity_admin_log` VALUES ('1575','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319618495');
INSERT INTO `ycity_admin_log` VALUES ('1576','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319618504');
INSERT INTO `ycity_admin_log` VALUES ('1577','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319618507');
INSERT INTO `ycity_admin_log` VALUES ('1578','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319618715');
INSERT INTO `ycity_admin_log` VALUES ('1579','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319618838');
INSERT INTO `ycity_admin_log` VALUES ('1580','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319618854');
INSERT INTO `ycity_admin_log` VALUES ('1581','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319619002');
INSERT INTO `ycity_admin_log` VALUES ('1582','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319619236');
INSERT INTO `ycity_admin_log` VALUES ('1583','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319619268');
INSERT INTO `ycity_admin_log` VALUES ('1584','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319619446');
INSERT INTO `ycity_admin_log` VALUES ('1585','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319619466');
INSERT INTO `ycity_admin_log` VALUES ('1586','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319619475');
INSERT INTO `ycity_admin_log` VALUES ('1587','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319619491');
INSERT INTO `ycity_admin_log` VALUES ('1588','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319619495');
INSERT INTO `ycity_admin_log` VALUES ('1589','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319619574');
INSERT INTO `ycity_admin_log` VALUES ('1590','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319619587');
INSERT INTO `ycity_admin_log` VALUES ('1591','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319619601');
INSERT INTO `ycity_admin_log` VALUES ('1592','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319619634');
INSERT INTO `ycity_admin_log` VALUES ('1593','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319619651');
INSERT INTO `ycity_admin_log` VALUES ('1594','1','admin','/ycity/admin.php/Download/index.html','127.0.0.1','1319619676');
INSERT INTO `ycity_admin_log` VALUES ('1595','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319619754');
INSERT INTO `ycity_admin_log` VALUES ('1596','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319619792');
INSERT INTO `ycity_admin_log` VALUES ('1597','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319619877');
INSERT INTO `ycity_admin_log` VALUES ('1598','1','admin','/ycity/admin.php/Product/index.html','127.0.0.1','1319619884');
INSERT INTO `ycity_admin_log` VALUES ('1599','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319620337');
INSERT INTO `ycity_admin_log` VALUES ('1600','1','admin','/ycity/admin.php/Product/index/realname/dsad/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/status/0/','127.0.0.1','1319620351');
INSERT INTO `ycity_admin_log` VALUES ('1601','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319620359');
INSERT INTO `ycity_admin_log` VALUES ('1602','1','admin','/ycity/admin.php/Product/index/realname/ddd/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/status/0/','127.0.0.1','1319620365');
INSERT INTO `ycity_admin_log` VALUES ('1603','1','admin','/ycity/admin.php/Product/index/realname/ddd/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/status/0/','127.0.0.1','1319620522');
INSERT INTO `ycity_admin_log` VALUES ('1604','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319620527');
INSERT INTO `ycity_admin_log` VALUES ('1605','1','admin','/ycity/admin.php/Product/index/realname/a/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/status/0/','127.0.0.1','1319621072');
INSERT INTO `ycity_admin_log` VALUES ('1606','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319621095');
INSERT INTO `ycity_admin_log` VALUES ('1607','1','admin','/ycity/admin.php/Product/index/realname/a/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/status/0/','127.0.0.1','1319621112');
INSERT INTO `ycity_admin_log` VALUES ('1608','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319621121');
INSERT INTO `ycity_admin_log` VALUES ('1609','1','admin','/ycity/admin.php/Product/order.html','127.0.0.1','1319621173');
INSERT INTO `ycity_admin_log` VALUES ('1610','1','admin','/ycity/admin.php/Product/order/realname/a/orderBy/id/orderType/DESC/pageSize/20/submit/%E6%90%9C%E7%B4%A2/status/0/','127.0.0.1','1319621180');
INSERT INTO `ycity_admin_log` VALUES ('1611','1','admin','/ycity/admin.php/Product/','127.0.0.1','1319621193');
INSERT INTO `ycity_admin_log` VALUES ('1612','1','admin','/ycity/admin.php/Download/index.html','127.0.0.1','1319621239');
INSERT INTO `ycity_admin_log` VALUES ('1613','1','admin','/ycity/admin.php/Product/orderDetail/id/18.html','127.0.0.1','1319629438');
INSERT INTO `ycity_admin_log` VALUES ('1614','1','admin','/ycity/admin.php/Product/','127.0.0.1','1319629439');
INSERT INTO `ycity_admin_log` VALUES ('1615','1','admin','/ycity/admin.php/Download/index.html','127.0.0.1','1319629440');
INSERT INTO `ycity_admin_log` VALUES ('1616','1','admin','/ycity/admin.php/Download/index.html','127.0.0.1','1319630697');
INSERT INTO `ycity_admin_log` VALUES ('1617','1','admin','/ycity/admin.php','127.0.0.1','1319690347');
INSERT INTO `ycity_admin_log` VALUES ('1618','1','admin','/ycity/admin.php/Download/index.html','127.0.0.1','1319690351');
INSERT INTO `ycity_admin_log` VALUES ('1619','1','admin','/ycity/admin.php','127.0.0.1','1320312357');
INSERT INTO `ycity_admin_log` VALUES ('1620','1','admin','/ycity/admin.php/Admin/index.html','127.0.0.1','1320312365');
INSERT INTO `ycity_admin_log` VALUES ('1621','1','admin','/ycity/admin.php','127.0.0.1','1320630544');
INSERT INTO `ycity_admin_log` VALUES ('1622','1','admin','/ycity/admin.php/News/index.html','127.0.0.1','1320630548');
INSERT INTO `ycity_admin_log` VALUES ('1623','1','admin','/ycity/admin.php/News/doInsert.html (录入:16)','127.0.0.1','1320630562');
INSERT INTO `ycity_admin_log` VALUES ('1624','1','admin','/ycity/admin.php/News','127.0.0.1','1320630565');
INSERT INTO `ycity_admin_log` VALUES ('1625','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320646805');
INSERT INTO `ycity_admin_log` VALUES ('1626','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320647408');
INSERT INTO `ycity_admin_log` VALUES ('1627','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320648465');
INSERT INTO `ycity_admin_log` VALUES ('1628','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320648525');
INSERT INTO `ycity_admin_log` VALUES ('1629','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320648577');
INSERT INTO `ycity_admin_log` VALUES ('1630','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320648606');
INSERT INTO `ycity_admin_log` VALUES ('1631','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320648665');
INSERT INTO `ycity_admin_log` VALUES ('1632','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320648825');
INSERT INTO `ycity_admin_log` VALUES ('1633','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320648867');
INSERT INTO `ycity_admin_log` VALUES ('1634','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320648882');
INSERT INTO `ycity_admin_log` VALUES ('1635','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320648896');
INSERT INTO `ycity_admin_log` VALUES ('1636','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320648919');
INSERT INTO `ycity_admin_log` VALUES ('1637','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320648931');
INSERT INTO `ycity_admin_log` VALUES ('1638','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320648976');
INSERT INTO `ycity_admin_log` VALUES ('1639','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320649000');
INSERT INTO `ycity_admin_log` VALUES ('1640','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1320649004');
INSERT INTO `ycity_admin_log` VALUES ('1641','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320649034');
INSERT INTO `ycity_admin_log` VALUES ('1642','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1320649038');
INSERT INTO `ycity_admin_log` VALUES ('1643','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320649046');
INSERT INTO `ycity_admin_log` VALUES ('1644','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1320649066');
INSERT INTO `ycity_admin_log` VALUES ('1645','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1320650360');
INSERT INTO `ycity_admin_log` VALUES ('1646','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320650531');
INSERT INTO `ycity_admin_log` VALUES ('1647','1','admin','/ycity/admin.php/Tools/doCache.html (更新缓存)','127.0.0.1','1320650536');
INSERT INTO `ycity_admin_log` VALUES ('1648','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320650599');
INSERT INTO `ycity_admin_log` VALUES ('1649','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320652314');
INSERT INTO `ycity_admin_log` VALUES ('1650','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320652605');
INSERT INTO `ycity_admin_log` VALUES ('1651','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320652630');
INSERT INTO `ycity_admin_log` VALUES ('1652','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320652662');
INSERT INTO `ycity_admin_log` VALUES ('1653','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320652679');
INSERT INTO `ycity_admin_log` VALUES ('1654','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320652697');
INSERT INTO `ycity_admin_log` VALUES ('1655','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320652732');
INSERT INTO `ycity_admin_log` VALUES ('1656','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320652749');
INSERT INTO `ycity_admin_log` VALUES ('1657','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320652770');
INSERT INTO `ycity_admin_log` VALUES ('1658','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320652795');
INSERT INTO `ycity_admin_log` VALUES ('1659','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320652825');
INSERT INTO `ycity_admin_log` VALUES ('1660','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320652936');
INSERT INTO `ycity_admin_log` VALUES ('1661','1','admin','/ycity/admin.php/Tools/index.html','127.0.0.1','1320652961');
INSERT INTO `ycity_admin_log` VALUES ('1662','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320661770');
INSERT INTO `ycity_admin_log` VALUES ('1663','1','admin','/ycity/admin.php/AdminLog/index.html','127.0.0.1','1320661771');
INSERT INTO `ycity_admin_log` VALUES ('1664','1','admin','/ycity/admin.php','127.0.0.1','1320719226');
INSERT INTO `ycity_admin_log` VALUES ('1665','1','admin','/ycity/admin.php','127.0.0.1','1320719243');
INSERT INTO `ycity_admin_log` VALUES ('1666','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320719847');
INSERT INTO `ycity_admin_log` VALUES ('1667','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320719867');
INSERT INTO `ycity_admin_log` VALUES ('1668','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320719921');
INSERT INTO `ycity_admin_log` VALUES ('1669','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320720101');
INSERT INTO `ycity_admin_log` VALUES ('1670','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320720136');
INSERT INTO `ycity_admin_log` VALUES ('1671','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320720552');
INSERT INTO `ycity_admin_log` VALUES ('1672','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320720571');
INSERT INTO `ycity_admin_log` VALUES ('1673','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320721120');
INSERT INTO `ycity_admin_log` VALUES ('1674','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320721547');
INSERT INTO `ycity_admin_log` VALUES ('1675','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320721652');
INSERT INTO `ycity_admin_log` VALUES ('1676','1','admin','/ycity/admin.php','127.0.0.1','1320723174');
INSERT INTO `ycity_admin_log` VALUES ('1677','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320733115');
INSERT INTO `ycity_admin_log` VALUES ('1678','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320733275');
INSERT INTO `ycity_admin_log` VALUES ('1679','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320733284');
INSERT INTO `ycity_admin_log` VALUES ('1680','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320733340');
INSERT INTO `ycity_admin_log` VALUES ('1681','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320733422');
INSERT INTO `ycity_admin_log` VALUES ('1682','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320733572');
INSERT INTO `ycity_admin_log` VALUES ('1683','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320733584');
INSERT INTO `ycity_admin_log` VALUES ('1684','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320733766');
INSERT INTO `ycity_admin_log` VALUES ('1685','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320734249');
INSERT INTO `ycity_admin_log` VALUES ('1686','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320734439');
INSERT INTO `ycity_admin_log` VALUES ('1687','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320734579');
INSERT INTO `ycity_admin_log` VALUES ('1688','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320734618');
INSERT INTO `ycity_admin_log` VALUES ('1689','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320734976');
INSERT INTO `ycity_admin_log` VALUES ('1690','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320735035');
INSERT INTO `ycity_admin_log` VALUES ('1691','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320735082');
INSERT INTO `ycity_admin_log` VALUES ('1692','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320735117');
INSERT INTO `ycity_admin_log` VALUES ('1693','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320735174');
INSERT INTO `ycity_admin_log` VALUES ('1694','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320735559');
INSERT INTO `ycity_admin_log` VALUES ('1695','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320735590');
INSERT INTO `ycity_admin_log` VALUES ('1696','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320735603');
INSERT INTO `ycity_admin_log` VALUES ('1697','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320735713');
INSERT INTO `ycity_admin_log` VALUES ('1698','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320735729');
INSERT INTO `ycity_admin_log` VALUES ('1699','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320740632');
INSERT INTO `ycity_admin_log` VALUES ('1700','1','admin','/ycity/admin.php/AdminLog/index.html','127.0.0.1','1320754544');
INSERT INTO `ycity_admin_log` VALUES ('1701','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320754593');
INSERT INTO `ycity_admin_log` VALUES ('1702','1','admin','/ycity/admin.php/Index/index.html','127.0.0.1','1320754620');
INSERT INTO `ycity_admin_log` VALUES ('1703','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320754636');
INSERT INTO `ycity_admin_log` VALUES ('1704','1','admin','/ycity/admin.php','127.0.0.1','1320802871');
INSERT INTO `ycity_admin_log` VALUES ('1705','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320802876');
INSERT INTO `ycity_admin_log` VALUES ('1706','1','admin','/ycity/admin.php/Database/import.html','127.0.0.1','1320802881');
INSERT INTO `ycity_admin_log` VALUES ('1707','1','admin','/ycity/admin.php','127.0.0.1','1320804827');
INSERT INTO `ycity_admin_log` VALUES ('1708','1','admin','/ycity/admin.php/Database/index.html','127.0.0.1','1320804939');
INSERT INTO `ycity_admin_log` VALUES ('1709','1','admin','/ycity/admin.php/Database/import.html','127.0.0.1','1320804949');
-- 
-- 表的结构 `ycity_admin_role`
-- 
CREATE TABLE `ycity_admin_role` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL DEFAULT 'all' COMMENT '名称',
  `role_permission` text NOT NULL COMMENT '权限',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '系统内置',
  `create_time` int(11) unsigned NOT NULL COMMENT '增加时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='管理员角色';
-- 
-- 导出表中的数据 `ycity_admin_role`
--
INSERT INTO `ycity_admin_role` VALUES ('1','超级管理','Menu_index,Menu_insert,Menu_modify,Menu_command,Category_index,Category_modify,Category_update,News_index,News_modify,News_insert,News_move,News_command,Product_index,Product_insert,Product_modify,Product_command,Product_order,Product_move,Download_index,Download_insert,Download_modify,Download_command,Download_move,Feedback_index,Feedback_insert,Feedback_modify,Feedback_command,Job_index,Job_insert,Job_modify,Job_resume,Job_command,Notice_index,Notice_insert,Notice_modify,Notice_command,Link_index,Link_insert,Link_modify,Link_command,Page_index,Page_insert,Page_modify,Page_command,Ad_index,Ad_insert,Ad_modify,Ad_command,Tags,Comment_index,Comment_modify,Comment_command,Admin_index,Admin_insert,Admin_modify,Admin_command,Template,AdminRole_index,AdminRole_insert,AdminRole_modify,AdminRole_command','1','0','0');
INSERT INTO `ycity_admin_role` VALUES ('2','禁止访问','disable','1','0','0');
INSERT INTO `ycity_admin_role` VALUES ('3','普通管理','Menu_index,Menu_insert,Menu_modify,Menu_command,Category_index,Category_modify,News_index,News_modify,News_insert,News_move,News_command,Product_index,Product_insert,Product_modify,Product_command,Product_order,Product_move,Download_index,Download_insert,Download_modify,Download_command,Download_move,Feedback_index,Feedback_insert,Feedback_modify,Feedback_command,Job_index,Job_insert,Job_modify,Job_resume,Job_command,Notice_index,Notice_insert,Notice_modify,Notice_command,Link_index,Link_insert,Link_modify,Link_command,Page_index,Page_insert,Page_modify,Page_command,Ad_index,Ad_insert,Ad_modify,Ad_command,Tags,Comment_index,Comment_modify,Comment_command,Admin_index,Admin_insert,Admin_modify,Admin_command,Theme,AdminRole_index,AdminRole_insert,AdminRole_modify,AdminRole_command,Module_index,Module_install,Config_index,Config_core,Database_index,Database_export,AdminLog,Tools,Label,Product_index,Product_insert,Product_modify,Product_command,Product_move','1','0','1317994448');
-- 
-- 表的结构 `ycity_case`
-- 
CREATE TABLE `ycity_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `username` varchar(20) NOT NULL COMMENT '发布者',
  `category_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '产品名称',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '标题样式序列化',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` text NOT NULL COMMENT '描述',
  `content` text NOT NULL COMMENT '产品说明',
  `tags` varchar(255) NOT NULL COMMENT 'tags',
  `template` varchar(100) NOT NULL COMMENT '模板文件',
  `attach` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否附件 1是0否',
  `attach_image` varchar(100) NOT NULL COMMENT '图片',
  `attach_thumb` varchar(100) NOT NULL COMMENT '缩略图',
  `link_url` varchar(100) NOT NULL COMMENT '外链接',
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '置顶',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否审核',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='案例';
-- 
-- 导出表中的数据 `ycity_case`
--
INSERT INTO `ycity_case` VALUES ('4','1','admin','0','案例测试','','','','','<p>案例测试</p>','','','0','','','','0','0','0','0','0','1306771200','0');
-- 
-- 表的结构 `ycity_category`
-- 
CREATE TABLE `ycity_category` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `module` char(20) NOT NULL DEFAULT 'N/A' COMMENT '模块',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级目录',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `display_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `protected` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否保护',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `displayorder` (`display_order`),
  KEY `parentid` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='全局分类';
-- 
-- 导出表中的数据 `ycity_category`
--
INSERT INTO `ycity_category` VALUES ('1','News','0','新闻模块','','','0','0','0','1262410906','1262415121');
INSERT INTO `ycity_category` VALUES ('2','','1','新城动态','','公司动态','0','0','0','1262410927','1310626428');
INSERT INTO `ycity_category` VALUES ('3','','1','行业信息','','行业动态','0','0','0','1262410939','1310626437');
INSERT INTO `ycity_category` VALUES ('6','Product','0','产品模块','','产品模块','0','0','0','1262410998','0');
INSERT INTO `ycity_category` VALUES ('7','','6','新品上市','','新品上市','2','0','0','1262411013','0');
INSERT INTO `ycity_category` VALUES ('8','','6','文化类产品','','文化类产品','0','0','0','1262411055','0');
INSERT INTO `ycity_category` VALUES ('9','','6','休闲类产品','','休闲类产品','1','0','0','1262411067','1262411073');
INSERT INTO `ycity_category` VALUES ('10','','6','体育类产品','','体育类产品','0','0','0','1262411092','0');
INSERT INTO `ycity_category` VALUES ('11','','10','球类','','球类','0','0','0','1262411108','0');
INSERT INTO `ycity_category` VALUES ('12','','10','服饰类','','服饰类','0','0','0','1262411122','0');
INSERT INTO `ycity_category` VALUES ('13','','9','自行车','','自行车','0','0','0','1262411152','0');
INSERT INTO `ycity_category` VALUES ('14','Download','0','下载模块','','下载模块','0','0','0','1262411171','1267110782');
INSERT INTO `ycity_category` VALUES ('15','','14','系统软件','','系统软件','1','0','0','1262411182','1262411190');
INSERT INTO `ycity_category` VALUES ('16','','14','办公软件','','办公软件','0','0','0','1262411204','0');
INSERT INTO `ycity_category` VALUES ('17','','14','恢复类软件','','恢复类软件','0','0','0','1262411216','0');
INSERT INTO `ycity_category` VALUES ('33','','32','首页横幅','','首页横幅','0','0','0','1267112629','1267288982');
INSERT INTO `ycity_category` VALUES ('32','Ad','0','广告模块','','广告模块','0','0','0','1267112377','1267112406');
INSERT INTO `ycity_category` VALUES ('34','','32','公共','','公共','0','0','0','1267112648','0');
INSERT INTO `ycity_category` VALUES ('35','Link','0','链接类型','','链接类型','0','0','0','1267287014','0');
INSERT INTO `ycity_category` VALUES ('36','','35','默认类型','','普通链接','0','0','0','1267287066','1267288647');
-- 
-- 表的结构 `ycity_comment`
-- 
CREATE TABLE `ycity_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` char(20) NOT NULL DEFAULT 'News' COMMENT '模块',
  `title_id` int(11) unsigned NOT NULL COMMENT '文章ID',
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT 'ip',
  `content` text NOT NULL COMMENT '评论内容',
  `reply_content` text NOT NULL COMMENT '评论回复',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '提交时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='评论';
-- 
-- 导出表中的数据 `ycity_comment`
--
INSERT INTO `ycity_comment` VALUES ('1','News','1','测试评论测试评论','mchunt','nz8864@sian.com','192.168.0.100','测试评论测试评论测试评论测试评论测试评论测试评论测试评论测试评论测试评论测试评论测试评论测试评论测试评论测试评论','asdasdasdad','0','1319514931','1319526199');
-- 
-- 表的结构 `ycity_config`
-- 
CREATE TABLE `ycity_config` (
  `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `lang` char(20) NOT NULL DEFAULT 'cn' COMMENT '语言',
  `site_name` varchar(100) NOT NULL COMMENT '网站名称',
  `company_name` varchar(200) NOT NULL COMMENT '公司名称',
  `site_url` varchar(200) NOT NULL COMMENT '网站地址',
  `contact_name` varchar(50) NOT NULL COMMENT '联系人',
  `telephone` varchar(50) NOT NULL COMMENT '电话',
  `email` varchar(100) NOT NULL COMMENT 'email',
  `fax` varchar(50) NOT NULL COMMENT '传真',
  `mobile_telephone` varchar(50) NOT NULL COMMENT '手机',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `icp` varchar(20) NOT NULL COMMENT 'icp',
  `qq` varchar(50) NOT NULL COMMENT 'qq',
  `msn` varchar(100) NOT NULL COMMENT 'msn',
  `im` varchar(250) NOT NULL COMMENT '即时通讯工具',
  `web_status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '网站状态',
  `status_description` text NOT NULL COMMENT '停止描述',
  `header_content` text NOT NULL COMMENT '头部内容',
  `footer_content` text NOT NULL COMMENT '脚部内容',
  `comment_verify` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否开启留言/评论审核',
  `sys_log` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '系统日志',
  `sys_log_ext` varchar(255) NOT NULL COMMENT '记录日志类型',
  `download_suffix` varchar(255) NOT NULL DEFAULT 'Winndows' COMMENT '下载类型',
  `run_system` varchar(255) NOT NULL COMMENT '运行平台',
  `global_thumb_status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '缩略图开关',
  `watermark_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '水印开关',
  `watermark_size` varchar(50) NOT NULL COMMENT '水印尺寸',
  `watermark_position` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '水印位置',
  `watermark_padding` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '水印边距',
  `watermark_trans` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '水印透明度',
  `global_attach_size` int(10) unsigned NOT NULL DEFAULT '2048000' COMMENT '附件大小',
  `global_attach_suffix` varchar(200) NOT NULL COMMENT '允许附件类型',
  `news_thumb_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '新闻缩略图状态',
  `news_thumb_size` varchar(50) NOT NULL COMMENT '新闻缩略图高',
  `product_thumb_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '产品缩略图开关',
  `product_thumb_size` varchar(50) NOT NULL COMMENT '产品缩略图高',
  `download_thumb_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '下载缩略图开关',
  `download_thumb_size` varchar(50) NOT NULL COMMENT '下载缩略图高',
  `global_thumb_size` varchar(50) NOT NULL COMMENT '全局缩略图 尺寸',
  `seo_title` varchar(200) NOT NULL,
  `seo_keyword` varchar(240) NOT NULL,
  `seo_description` varchar(240) NOT NULL,
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '提交时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='系统配置';
-- 
-- 导出表中的数据 `ycity_config`
--
INSERT INTO `ycity_config` VALUES ('1','cn','新城网络','天津启阳新程科技有限公司','http://127.0.0.1/ycity','Y-city','15100000000','admin@admin.com','15100000000','15100000000','address a','津ICP备11003837号-2','5565907','y_city@qeeyang.com','Y-city','0','系统维护中.....','','','1','1','index,delete,modify,insert,update,login','Windows,Linux,Apple,其它','linux,windows','1','1','100x100','0','5','70','2048000','gif,jpg,png,jpeg,swf,zip,rar,chm,7z,pdf','1','300,200','1','300,250','1','300,200','300,200','seo_title','seo_keywords','Y-cityCMS,专业企业网站建设方案','1306847872','1306847872');
-- 
-- 表的结构 `ycity_download`
-- 
CREATE TABLE `ycity_download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '软件名称',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '样式序列化',
  `category_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `run_system` varchar(255) NOT NULL DEFAULT 'windows' COMMENT '运行系统',
  `extension` varchar(10) NOT NULL DEFAULT 'zip' COMMENT '扩展名',
  `file_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '大小',
  `file_size_unit` char(10) NOT NULL DEFAULT 'KB' COMMENT '大小单位',
  `download_url` text NOT NULL COMMENT '下载地址1',
  `link_url` varchar(100) NOT NULL COMMENT '外链',
  `description` text NOT NULL COMMENT '简单描述',
  `content` text NOT NULL COMMENT '介绍',
  `tags` varchar(255) NOT NULL COMMENT 'tags',
  `template` varchar(100) NOT NULL COMMENT '模板文件',
  `file_attach` varchar(50) NOT NULL DEFAULT '' COMMENT '附件地址',
  `attach` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '附件',
  `attach_image` varchar(50) NOT NULL DEFAULT '' COMMENT '附件大图',
  `attach_thumb` varchar(50) NOT NULL DEFAULT '' COMMENT '缩略图',
  `view_count` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '查看次数',
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '置顶',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='下载';
-- 
-- 导出表中的数据 `ycity_download`
--
INSERT INTO `ycity_download` VALUES ('1','1','泄露个人信息 铁道部坦承是个问题 ','','','15','','','zip','0','KB','test','','泄露个人信息 铁道部坦承是个问题 ','<p style=\"text-indent: 2em\">环球网记者范凌志报道，台湾前&ldquo;副总统&rdquo;吕秀莲本周访问美国华府。她在与美方人士会面时称，美国虽然持续对台军售，但不能忽略台湾&ldquo;自我防卫&rdquo;的需求，应该&ldquo;尽快考虑出售F16C/D型战机&rdquo;。</p>\r\n<p style=\"text-indent: 2em\">据台湾&ldquo;中央社&rdquo;24日消息，吕秀莲此行已与美国国务院、美国在台协会（AIT）官员见面，并拜会了美国多位涉台机构官员。</p>\r\n<p style=\"text-indent: 2em\">吕秀莲称，对于美国政府决定新一波的对台军售，台湾当然&ldquo;很感谢&rdquo;，但&ldquo;遗憾的是F16C/D型战机仍未纳入&rdquo;。美方亲台官员与议员还说，洛克希德马丁公司（LockheedMartin）万一关闭F16生产线，台湾要取得F-35战机将&ldquo;更为困难&rdquo;。</p>\r\n<p style=\"text-indent: 2em\">同时，&ldquo;台湾连线&rdquo;共同主席、共和党籍众议员狄亚士巴拉特（Lincoln Diaz-Balart）等人承诺&ldquo;将发动国会连署&rdquo;要求行政部门尽快决定F16C/D的军售案。</p>\r\n<p style=\"text-indent: 2em\">此前，美联社及路透两大国际通讯社在22日都在台北发布新闻，指根据美国政府最新公布的报告指出，台湾在与大陆进行战斗时，&ldquo;可供作战的战机数量将不敷使用，也凸显台湾空防战力已有&lsquo;不堪一击&rsquo;的危机&rdquo;。</p>\r\n<p style=\"text-indent: 2em\">路透认为，这份报告可能促成美国在肯定触怒北京的情况下，对台提供新的军售，以确保台海情势稳定；美联社则点出，美国防部强烈怀疑：台湾是否拥有足够</p>','','','','0','','','0','0','0','0','0','1266940800','0');
INSERT INTO `ycity_download` VALUES ('2','1','广西公务员考试涉嫌试题泄露 已立案调查 ','color:#800080;font-weight:bold','a:2:{s:5:\"color\";s:7:\"#800080\";s:4:\"bold\";s:4:\"bold\";}','15','','','zip','0','KB','http://test.com\r\nhttp://www.sss.com','http://www.sss.com','','<p style=\"text-indent: 2em\">吕秀莲称，对于美国政府决定新一波的对台军售，台湾当然&ldquo;很感谢&rdquo;，但&ldquo;遗憾的是F16C/D型战机仍未纳入&rdquo;。美方亲台官员与议员还说，洛克希德马丁公司（LockheedMartin）万一关闭F16生产线，台湾要取得F-35战机将&ldquo;更为困难&rdquo;。</p>\r\n<p style=\"text-indent: 2em\">同时，&ldquo;台湾连线&rdquo;共同主席、共和党籍众议员狄亚士巴拉特（Lincoln Diaz-Balart）等人承诺&ldquo;将发动国会连署&rdquo;要求行政部门尽快决定F16C/D的军售案。</p>\r\n<p style=\"text-indent: 2em\">此前，美联社及路透两大国际通讯社在22日都在台北发布新闻，指根据美国政府最新公布的报告指出，台湾在与大陆进行战斗时，&ldquo;可供作战的战机数量将不敷使用，也凸显台湾空防战力已有&lsquo;不堪一击&rsquo;的危机&rdquo;。</p>\r\n<p style=\"text-indent: 2em\">路透认为，这份报告可能促成美国在肯定触怒北京的情况下，对台提供新的军售，以确保台海情势稳定；美联社则点出，美国防部强烈怀疑：台湾是否拥有足够抵御大陆攻击的能力。</p>\r\n<p style=\"text-indent: 2em\">台空军对此表示，美方正在评估台湾采购F-16C/D的可行性，目前台方尚未取得这份报告，因此不便对媒体报道评论。而台当局高层官员则分析称，美国官方刻意将这份报告提供给国际媒体并选在台北发出，是向两岸发出极为明显的政治讯息，可能是为宣布出售F-16C/D给台湾进行&ldquo;暖身铺路&rdquo;，台湾静观这项发展，并&ldquo;将会做好准备&rdquo;。</p>','了修正,55,aaaxxx','','','0','','','0','0','0','0','0','1266940800','0');
INSERT INTO `ycity_download` VALUES ('3','1','fsg','','','17','','','zip','0','MB','fsg','','fasdf','<p>fsg</p>','fsdf','','','1','Download/201003/4b910457af736.jpg','Download/201003/4b910457af736_s.jpg','0','0','0','0','0','1267718400','0');
INSERT INTO `ycity_download` VALUES ('4','1','asdf','','','15','','','zip','0','MB','asdf','','','<p>fasdf</p>','','','','1','Download/201003/4b91048378829.gif','Download/201003/4b91048378829_s.gif','0','0','0','0','0','1267718400','0');
INSERT INTO `ycity_download` VALUES ('5','1','ccc','','','15','','','zip','0','MB','cc','','','<p>cc</p>','了修正,55,fadsf,hghdf','','','0','','','0','0','0','0','0','1267891200','0');
-- 
-- 表的结构 `ycity_feedback`
-- 
CREATE TABLE `ycity_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '留言主题',
  `username` varchar(50) NOT NULL COMMENT '留言者',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是为男，否为女',
  `mobile_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `telephone` varchar(50) NOT NULL DEFAULT '' COMMENT '电话',
  `fax` varchar(50) NOT NULL COMMENT '传真',
  `qq` varchar(50) NOT NULL COMMENT 'QQ',
  `email` varchar(50) NOT NULL COMMENT 'email',
  `web_url` varchar(200) NOT NULL DEFAULT '' COMMENT '个人主页',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '地址',
  `content` text NOT NULL COMMENT '留言内容',
  `reply_content` text NOT NULL COMMENT '回复内容',
  `status` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `ip` char(15) NOT NULL DEFAULT '0' COMMENT '留言IP',
  `reply_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '留言时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='留言';
-- 
-- 导出表中的数据 `ycity_feedback`
--
INSERT INTO `ycity_feedback` VALUES ('1','a','dsada','1','11323234435','12345435','','232343245','23424245@qww.com','','','adsfsfsdfsdgfsdgf','','1','127.0.0.1','0','1319111537','0');
INSERT INTO `ycity_feedback` VALUES ('2','商品求购','梅','1','13803002087','022-58018980','','1095863710','nz8864@sina.com','','','商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购商品求购','','1','127.0.0.1','0','1319163768','0');
-- 
-- 表的结构 `ycity_job`
-- 
CREATE TABLE `ycity_job` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '工作名称或招聘对象',
  `title_style` varchar(255) NOT NULL COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '标题样式序列化',
  `keyword` varchar(250) NOT NULL COMMENT '关键字',
  `number` int(11) unsigned NOT NULL COMMENT '招聘人数',
  `description` text NOT NULL COMMENT '招聘要求',
  `content` text NOT NULL COMMENT '详细介绍',
  `template` varchar(100) NOT NULL COMMENT '模板文件',
  `tags` varchar(255) NOT NULL COMMENT 'tags',
  `copy_from` varchar(255) NOT NULL COMMENT '来源',
  `from_link` varchar(255) NOT NULL COMMENT '来源链接',
  `link_url` varchar(200) NOT NULL COMMENT '链接地址',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `time_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '招聘时间/1长期2限时',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '有效天数',
  `attach_file` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `istop` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '置顶',
  `view_count` mediumint(8) unsigned NOT NULL DEFAULT '1' COMMENT '查看次数',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='招聘';
-- 
-- 导出表中的数据 `ycity_job`
--
INSERT INTO `ycity_job` VALUES ('1','1','健身操、瑜伽、拉丁舞教练','color:#00ff00;font-weight:bold;TEXT-DECORATION: underline','a:3:{s:5:\"color\";s:7:\"#00ff00\";s:4:\"bold\";s:4:\"bold\";s:9:\"underline\";s:9:\"underline\";}','','10','一年以上工作经验，熟练使用网页制作三剑客等专业软件，懂ASP，有美工基础或有成功作品者优先。\r\n注：无工作经验者勿投简历','<p>一年以上工作经验，熟练使用网页制作三剑客等专业软件，懂ASP，有美工基础或有成功作品者优先。<br />\r\n注：无工作经验者勿投简历</p>','','','','','','1','1','2010','','0','0','0','1266940800','1319300660');
INSERT INTO `ycity_job` VALUES ('2','1','市区送货员','','','','0','电脑员要求：熟悉电脑操作的女性，打字速度一般，敬业! \r\n会计要求：能够熟悉电算化操作，有良好的职业道德精神.','<p>电脑员要求：熟悉电脑操作的女性，打字速度一般，敬业! <br />\r\n会计要求：能够熟悉电算化操作，有良好的职业道德精神.</p>','','','','','','0','1','2010','','0','0','0','1266940800','0');
INSERT INTO `ycity_job` VALUES ('3','1','市区送货员','','','','10','能吃苦耐劳，具备团队合作精神，年龄25-35岁，有一定销售经验者优先，行业不限。 \r\n待遇：1500元—3000元','<p>能吃苦耐劳，具备团队合作精神，年龄25-35岁，有一定销售经验者优先，行业不限。 <br />\r\n待遇：1500元&mdash;3000元</p>','','','','','','0','1','2010','','0','0','0','1266940800','0');
INSERT INTO `ycity_job` VALUES ('4','1','新概念英语教师','font-weight:bold','a:1:{s:4:\"bold\";s:4:\"bold\";}','','0','职位要求1.本科以上学历，有特殊才能者条件可适当放宽  \r\n2.英语基础扎实，发音标准，口语流利，有较强的听说读写译能力  \r\n3.性格开朗外向，赋予朝气和活力 \r\n4.具有较强的幽默感，课堂气氛生动活泼','<p>职位要求1.本科以上学历，有特殊才能者条件可适当放宽&nbsp; <br />\r\n2.英语基础扎实，发音标准，口语流利，有较强的听说读写译能力&nbsp; <br />\r\n3.性格开朗外向，赋予朝气和活力 <br />\r\n4.具有较强的幽默感，课堂气氛生动活泼&nbsp; <br />\r\n5..有口语教学经验可优先考虑&nbsp;&nbsp; <br />\r\n薪金待遇: <br />\r\n基础工资&nbsp;+各项岗位补贴\\奖金&nbsp;+保险（养老保险&nbsp;&nbsp;医疗保险&nbsp;&nbsp;失业保险&nbsp;&nbsp;工伤保险&nbsp;&nbsp;生育保险）1000-3000元\\月</p>','','','','','','0','1','2010','','0','0','0','1266940800','0');
INSERT INTO `ycity_job` VALUES ('5','1','工程招标代理','TEXT-DECORATION: underline','a:1:{s:9:\"underline\";s:9:\"underline\";}','','0','1、专科及以上学历（工程类） \r\n2、具有一年以上工作经验者优先 \r\n3、年龄40岁以下 \r\n4、待遇面议','<p>1、专科及以上学历（工程类） <br />\r\n2、具有一年以上工作经验者优先 <br />\r\n3、年龄40岁以下 <br />\r\n4、待遇面议</p>','','了修正,55,fadsf,hghdf','','','','0','0','1970','','0','0','0','1267027200','1267893427');
INSERT INTO `ycity_job` VALUES ('8','1','健身操、瑜伽、拉丁舞教练','','','','0','女性，已婚，25-45岁，工作地点在开发区，4812军工厂对面。 ','<p>女性，已婚，25-45岁，工作地点在开发区，4812军工厂对面。</p>','','','','','','0','0','1267891200','','0','4','0','1267891200','1319274933');
-- 
-- 表的结构 `ycity_label`
-- 
CREATE TABLE `ycity_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `description` text NOT NULL COMMENT '简述',
  `content` text NOT NULL COMMENT '内容',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='标签调用';
-- 
-- 导出表中的数据 `ycity_label`
--
-- 
-- 表的结构 `ycity_link`
-- 
CREATE TABLE `ycity_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '网站名称',
  `title_style` varchar(255) NOT NULL COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '标题样式序列化',
  `category_id` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '链接类型：首页，内页，论坛,文字',
  `link_type` enum('text','image') NOT NULL DEFAULT 'text' COMMENT '链接类型',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `description` text NOT NULL COMMENT '简介',
  `attach_image` varchar(50) NOT NULL DEFAULT '' COMMENT '附件图片',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '首页显示、内页显示等显示方式',
  `display_order` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序数值，越小排得越前',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '重新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='链接';
-- 
-- 导出表中的数据 `ycity_link`
--
INSERT INTO `ycity_link` VALUES ('1','新城网络','color:#ff0000;font-weight:bold','a:2:{s:5:\"color\";s:7:\"#ff0000\";s:4:\"bold\";s:4:\"bold\";}','1','text','http://www.y-city.net.cn','','','0','0','1266392534','0');
INSERT INTO `ycity_link` VALUES ('2','天津IDC','font-weight:bold','a:1:{s:4:\"bold\";s:4:\"bold\";}','36','text','http://www.idctj.com','','','0','0','1266392534','1319440723');
-- 
-- 表的结构 `ycity_member`
-- 
CREATE TABLE `ycity_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '角色组',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `realname` varchar(50) NOT NULL COMMENT '真实姓名',
  `question` varchar(50) NOT NULL COMMENT '问题',
  `answer` varchar(50) NOT NULL COMMENT '答案',
  `sex` tinyint(4) NOT NULL COMMENT '性别真为男',
  `telephone` varchar(50) NOT NULL COMMENT '电话',
  `mobile_telephone` varchar(50) NOT NULL COMMENT '手机',
  `fax` varchar(50) NOT NULL COMMENT 'FAX',
  `web_url` varchar(100) NOT NULL COMMENT '网址',
  `email` varchar(50) NOT NULL COMMENT '电子邮件',
  `address` varchar(100) NOT NULL,
  `login_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='会员';
-- 
-- 导出表中的数据 `ycity_member`
--
-- 
-- 表的结构 `ycity_menu`
-- 
CREATE TABLE `ycity_menu` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(255) NOT NULL COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '标题模式序列化',
  `parent_id` tinyint(4) NOT NULL DEFAULT '0' COMMENT '上级',
  `link_url` varchar(100) NOT NULL DEFAULT '' COMMENT '跳转URL',
  `target` varchar(10) NOT NULL DEFAULT '_blank' COMMENT '新窗口',
  `display_order` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='导航';
-- 
-- 导出表中的数据 `ycity_menu`
--
INSERT INTO `ycity_menu` VALUES ('1','新城网络','','','0','http://www.y-city.net.cn','_blank','0','0','1267540911','1267541659');
-- 
-- 表的结构 `ycity_module`
-- 
CREATE TABLE `ycity_module` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `module_title` varchar(100) NOT NULL COMMENT '中文',
  `module_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模块名称',
  `module_permission` text NOT NULL COMMENT '包含权限',
  `system_module` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否内置',
  `left_menu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示在管理菜单左侧',
  `developer` text NOT NULL COMMENT '开发者版权',
  `build_version` varchar(255) NOT NULL DEFAULT 'N/A' COMMENT '版本',
  `display_order` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='模块';
-- 
-- 导出表中的数据 `ycity_module`
--
INSERT INTO `ycity_module` VALUES ('4','导航管理','Menu','浏览=Menu_index|录入=Menu_insert|编辑=Menu_modify|批量操作=Menu_command','1','0','ycity','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('7','类别管理','Category','浏览=Category_index|编辑=Category_modify|批量操作=Category_update','1','0','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('8','新闻管理','News','浏览=News_index|编辑=News_modify|录入=News_insert|移动栏目=News_move|批量操作=News_command','1','1','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('9','产品管理','Product','浏览=Product_index|录入=Product_insert|编辑=Product_modify|批量操作=Product_command|订单管理=Product_order|移动类别=Product_move','0','1','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('10','下载管理','Download','浏览=Download_index|录入=Download_insert|编辑=Download_modify|批量操作=Download_command|移动栏目=Download_move','0','1','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('11','留言管理','Feedback','浏览=Feedback_index|录入=Feedback_insert|编辑=Feedback_modify|批量操作=Feedback_command','0','0','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('12','招聘管理','Job','浏览=Job_index|录入=Job_insert|编辑=Job_modify|应聘管理=Job_resume|批量操作=Job_command','0','0','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('13','公告管理','Notice','浏览=Notice_index|录入=Notice_insert|编辑=Notice_modify|批量操作=Notice_command','0','1','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('14','链接管理','Link','浏览=Link_index|录入=Link_insert|编辑=Link_modify|批量操作=Link_command','0','0','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('15','单页管理','Page','浏览=Page_index|录入=Page_insert|编辑=Page_modify|批量操作=Page_command','1','1','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('16','广告管理','Ad','浏览=Ad_index|录入=Ad_insert|编辑=Ad_modify|批量操作=Ad_command','0','0','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('27','Tags','Tags','管理=Tags','1','0','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('28','评论管理','Comment','浏览=Comment_index|回复=Comment_modify|批量操作=Comment_command','0','0','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('29','管理员管理','Admin','浏览=Admin_index|录入=Admin_insert|编辑=Admin_modify|批量操作=Admin_command','1','0','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('31','模板风格','Theme','管理=Theme','1','0','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('30','角色管理','AdminRole','浏览=AdminRole_index|录入=AdminRole_insert|编辑=AdminRole_modify|批量操作=AdminRole_command','1','0','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('32','模块管理','Module','浏览=Module_index|编辑=Module_modify|安装=Module_install|卸载=Module_uninstall','1','0','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('33','系统配置','Config','浏览系统配置=Config_index|编辑系统配置=Config_modify|浏览核心配置=Config_core|编辑核心配置=Config_coreModify','1','0','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('34','数据库管理','Database','浏览=Database_index|执行SQL=Database_query|备份数据库=Database_export|恢复数据库=Database_import','1','0','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('35','操作日志管理','AdminLog','管理=AdminLog','1','0','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('36','工具箱管理','Tools','管理=Tools','1','0','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('37','数据调用','Label','管理=Label','1','0','','','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('17','案例管理','Case','浏览=Product_index|录入=Product_insert|编辑=Product_modify|批量操作=Product_command|移动类别=Product_move','0','1','','2.0','0','0','0','0');
INSERT INTO `ycity_module` VALUES ('106','模板管理','Template','浏览=Template_index|录入=Template_insert|编辑=Template_modify|批量操作=Template_command|订单管理=Template_order|移动类别=Template_move','0','1','ycity','2.0','0','0','0','0');
-- 
-- 表的结构 `ycity_news`
-- 
CREATE TABLE `ycity_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '发布用户名',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '标题样式序列化',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `copy_from` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `from_link` varchar(255) NOT NULL DEFAULT '0' COMMENT '来源链接 ',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '外链地址',
  `description` text NOT NULL COMMENT '简单描述',
  `content` mediumtext NOT NULL COMMENT '内容',
  `tags` varchar(255) NOT NULL COMMENT 'tags',
  `template` varchar(100) NOT NULL COMMENT '模板文件',
  `attach` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '附件',
  `attach_image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `attach_thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '置顶',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='新闻';
-- 
-- 导出表中的数据 `ycity_news`
--
INSERT INTO `ycity_news` VALUES ('1','5','1','fsg','镇长酒驾被查 称造成负面影响交警要负责任 ','font-weight:bold','a:1:{s:4:\"bold\";s:4:\"bold\";}','精测试','','','','本报讯 2月1日，黄山市耿城镇副镇长陈某和记者说起醉酒后驾驶的事情时，仍显得很“无奈”：“我是为陪好投资商而喝酒的，这个事情确实是没办法的。”据悉，1月25日晚，陈某醉酒后，驾驶投资商的宝马车被交警抓个正着。','<p style=\"text-indent: 2em\">本报讯 2月1日，黄山市耿城镇副镇长陈某和记者说起醉酒后驾驶的事情时，仍显得很&ldquo;无奈&rdquo;：&ldquo;我是为陪好投资商而喝酒的，这个事情确实是没办法的。&rdquo;据悉，1月25日晚，陈某醉酒后，驾驶投资商的宝马车被交警抓个正着。</p>\r\n<p style=\"text-indent: 2em\">据悉，1月25日晚，黄山市交警支队高速二大队民警在屯黄高速公路及匝道开展酒后驾驶统一查处行动。8时半许，一辆江苏牌照的宝马轿车驶进高速公路匝道，在距离交警检查点200米处突然停车。民警上前询问，当驾驶人打开车窗时，车内散发着浓烈的酒精气味，4个人坐在车里不知所措。</p>\r\n<p style=\"text-indent: 2em\">面对呼气式酒精测试仪，驾驶员拒绝配合检测，一再推脱自己不是驾驶人。&ldquo;我是为了招商引资工作的，你们这样做要造成负面影响，要负责任的。&rdquo;该驾驶人态度恶劣。一小时后，驾驶人接受了酒精测试，显示为酒后驶驾。</p>\r\n<p style=\"text-indent: 2em\">随后，该驾驶人陈某被带到黄山市区进行血液酒精含量检测，陈某此时还找来&ldquo;替身&rdquo;，称&ldquo;我的驾驶员来了，你们抽他的血化验吧&rdquo;。最终，陈某的血液检验结果超过了醉酒标准。</p>\r\n<p style=\"text-indent: 2em\">1月26日上午，交警部门查实陈某是黄山区耿城镇党委委员、副镇长、该镇金桥工业园区管委会主任。陈某也承认了醉酒事实，称事发当晚喝完酒后，想开车把客人送到高速公路入口，当时同车4人都饮酒了。当天中午，陈某被处以暂扣驾驶证6个月、罚款1000元并行政拘留的处罚。</p>\r\n<p style=\"text-indent: 2em\">&ldquo;当晚，我是和领导一起陪投资商喝酒的，是为了工作。喝完酒后，想开着宝马车玩玩，没想到被交警逮着了。&rdquo;昨日，陈某和记者说，他醉酒也是为了工作。</p>','','','0','','','0','0','0','0','0','1265040000','1267899050');
INSERT INTO `ycity_news` VALUES ('2','5','1','fsg','重庆永川被劫孕妇34天后产下健康女婴(图) ','color:#3366ff;font-weight:bold','a:2:{s:5:\"color\";s:7:\"#3366ff\";s:4:\"bold\";s:4:\"bold\";}','','网络','http://www.y-city.net.cn','http://www.y-city.net.cn','2009年12月21日上午10点，一声枪响过后，头上被砍了5刀，伤及颅骨的王芳精疲力竭地瘫倒在地。破门而入的警方迅疾将她送往重医大附属永川医院抢救。“我啥子都不担心，就担心肚子里的娃娃。”此时的王芳已经怀孕8个月，未婚夫陈永海在她面前被砍死，自己又被挟持为人质长达3小时，早已经精疲力竭。','<p style=\"text-indent: 2em\">2009年12月21日清晨7点，永川区万寿镇（场）发生一起劫持人质事件。27岁的当地男子刘勇闯入他人家中，杀死24岁男子陈永海后，用菜刀劫持了陈永海怀有8个月身孕的女友王芳，并将其全身多处砍伤。在与警方对峙3个多小时后，凶手在上午10点被击毙。</p>\r\n<p style=\"text-indent: 2em\"><strong>新生命</strong></p>\r\n<p style=\"text-indent: 2em\">1月30日上午9点，永川区妇幼保健院尤为热闹。5天前在这里剖腹产下一名健康女婴的王芳，要带着女儿出院了。</p>\r\n<p style=\"text-indent: 2em\">所有的医生和护士都认识这个产妇，因为在一个多月前的一起案件中，她被劫持为人质，最后劫匪被击毙，她才获救。当时，她腹中的胎儿只有8个月。</p>\r\n<p style=\"text-indent: 2em\">当王芳离开时，当班的医生和护士全都出门相送。院方派出了一辆救护车，将母女俩送往距离永川城区29公里的金龙镇福兴街道4村2社，这里是王芳的家。</p>\r\n<p style=\"text-indent: 2em\"><strong>回家养伤常做噩梦</strong></p>\r\n<p style=\"text-indent: 2em\">2009年12月21日上午10点，一声枪响过后，头上被砍了5刀，伤及颅骨的王芳精疲力竭地瘫倒在地。破门而入的警方迅疾将她送往重医大附属永川医院抢救。&ldquo;我啥子都不担心，就担心肚子里的娃娃。&rdquo;此时的王芳已经怀孕8个月，未婚夫陈永海在她面前被砍死，自己又被挟持为人质长达3小时，早已经精疲力竭。</p>\r\n<p style=\"text-indent: 2em\">当天下午，记者在永川医院的病房见到王芳时，她一头齐腰秀发已经被剪掉，头上缠满绷带，满眼仍是惊恐。&ldquo;我们本来该明天领证（结婚证）的。&rdquo;王芳对记者只说了一句话。</p>\r\n<p style=\"text-indent: 2em\">在住院的前几天，王芳几乎不能闭眼入睡，&ldquo;一闭眼就是他的惨状，完全睡不着。&rdquo;王芳的母亲张金玉每天都陪在女儿床头，担心女儿，更担心女儿肚子里的孩子。</p>\r\n<p style=\"text-indent: 2em\">1月6日，头上的伤口基本愈合的王芳出院，王芳回到娘家继续养伤和保胎。&ldquo;娃娃经常踢我！&rdquo;一边是痛失未婚夫的切肤之痛，一边是孩子即将出生前的兴奋和不安，王芳备受煎熬。</p>\r\n<p style=\"text-indent: 2em\">回家后，王芳依然怕黑，一到晚上如果身边没人就吓得瑟瑟发抖。&ldquo;我晚上都要陪她睡，她一睡觉就做梦。&rdquo;张金玉每晚都要在女儿惊恐的叫声中惊醒。</p>\r\n<p style=\"text-indent: 2em\">&ldquo;梦里面都是他（陈永海），我真的不想再梦到了啊！&rdquo;王芳的噩梦一直挥之不去，直到1月25日，她即将临盆。</p>','','','1','News/201002/4b68496a021df.jpg','News/201002/4b68496a021df_s.jpg','0','0','0','0','0','1265040000','0');
INSERT INTO `ycity_news` VALUES ('3','2','1','fsg','陕西丹凤高中生受讯猝死续：县公安局长获刑 ','','','','','','','一审宣判后，除王庆保外，其余4人均不服一审判决，提出上诉。商洛中院经过二审审理认为，原审判决认定事实清楚，证据确实、充分。定罪准确，量刑适当。审判程序合法。依法作出上述裁定','<p>备受社会各界关注的<a target=\"_blank\" href=\"http://news.qq.com/a/20090316/000095.htm\"><font color=\"#0b3b8c\">陕西丹凤县公安人员刑讯逼供一案</font></a>，商洛中级人民法院2月1日作出二审裁定：驳回上诉，维持原判。</p>\r\n<p>　　2009年11月24日，商南县人民法院对该案作出作出一审判决：以滥用职权罪判处原丹凤县副县长、县公安局长闫耀锋有期徒刑2年；以刑讯逼供罪判处丹凤县公安局刑警大队原教导员赵朔有期徒刑期2年又6个月；以刑讯逼供罪判处丹凤县原民警贾严刚有期徒刑1年又6个月；以刑讯逼供罪判处原商洛市刑警支队民警李红卫有期徒刑1年，缓刑1年；以玩忽职守罪对原丹凤县公安局纪委书记王庆保判处免予刑事处罚。</p>\r\n<p>　　一审宣判后，除王庆保外，其余4人均不服一审判决，提出上诉。商洛中院经过二审审理认为，原审判决认定事实清楚，证据确实、充分。定罪准确，量刑适当。审判程序合法。依法作出上述裁定。</p>','','','1','News/201002/4b684a483f092.jpg','News/201002/4b684a483f092_s.jpg','0','0','0','0','0','1265040000','0');
INSERT INTO `ycity_news` VALUES ('4','2','1','fsg','贝卢斯科尼称妻子与威尼斯市长有婚外情(图) ','','','','','','','悉，贝卢斯科尼披露妻子外遇，主要是希望以此反击拉里奥对他提出巨额离婚赔偿的要求。此前拉里奥指责贝卢斯科尼对离婚应负全部责任，要求贝氏每年提供4300万欧元的离婚赔偿','<p style=\"text-indent: 2em\">国际在线专稿：据德国《南德意志报》报道，意大利总理贝卢斯科尼与妻子的&ldquo;离婚大战&rdquo;兼&ldquo;隐私揭露战&rdquo;目前进入下一轮。面对妻子韦罗妮卡&middot;拉里奥的巨额离婚赔偿要求，贝卢斯科尼大声指责妻子对其不忠，并揭露了妻子的婚外情。</p>\r\n<p style=\"text-indent: 2em\">据意大利《晚邮报》(Corriere della Sera)报道，贝卢斯科尼与韦罗妮卡&middot;拉里奥日前对簿公堂，二人在罗马地方法院申诉了20分钟左右，然后交由律师代理。双方律师进行了长达几个小时的申诉和辩论，焦点无疑又是隐私新闻&mdash;&mdash;贝卢斯科尼指控妻子有外遇。瑞士《视野报》(Blick)披露了拉里奥外遇事件的两名当事人，一个是47岁的保镖阿尔波特&middot;奥兰帝，另一个是65岁的威尼斯市市长马西莫&middot;卡恰里。</p>\r\n<p style=\"text-indent: 2em\">据悉，贝卢斯科尼披露妻子外遇，主要是希望以此反击拉里奥对他提出巨额离婚赔偿的要求。此前拉里奥指责贝卢斯科尼对离婚应负全部责任，要求贝氏每年提供4300万欧元的离婚赔偿，即每月350万欧元的生活费。而贝卢斯科尼只答应每月支付20万欧元。</p>\r\n<p style=\"text-indent: 2em\">贝卢斯科尼名下确实拥有巨额资产，他拥有一家包括电视台、杂志和报纸在内的传媒集团，还是AC米兰足球俱乐部的老板。《福布斯》杂志曾估计，贝卢斯科尼的个人身家多达65亿美元。</p>\r\n<p style=\"text-indent: 2em\">贝卢斯科尼5个孩子对其媒体王国的继承是整个离婚诉讼的另一个核心问题，拉里奥要求贝氏的5个孩子可以平等地分享这笔财产。事实上，拉里奥与贝卢斯科尼只生养了3个孩子，另2个孩子是贝卢斯科尼与第一任妻子所生，而且他们已经拥有了电视台TV-Holding。拉里</p>','','','0','','','0','0','0','0','15','1265040000','0');
INSERT INTO `ycity_news` VALUES ('5','5','1','fsg','韩国前总统金大中陵墓起火 疑似人为纵火(图) ','','','','','','','今天上午，金大中生前所属的韩国民主党相关人士查看陵墓情况后表示，从起火位置来看，应该是有人故意躲开摄像监控在后面实施的纵火，因为火势自然会蔓延到整个陵墓。','<p style=\"text-indent: 2em\">环球网实习记者宋伟钢报道 据韩联社2月2日报道，今天上午，位于韩国首尔国立献忠院的前总统金大中陵墓起火，种种迹象显示，起火原因很可能是人为纵火。</p>\r\n<p style=\"text-indent: 2em\">报道称，韩国献忠院的清洁人员在当地时间上午10点准备打扫卫生时，发现陵墓起火，马上将火扑灭。该工作人员称，在之前的上午9点10分巡查时并没有发现有异常情况。</p>\r\n<p style=\"text-indent: 2em\">国立献忠院墓管理人员表示，起火的位置因为处于监视摄像头的盲区，因此还不能确定起火的原因。</p>\r\n<p style=\"text-indent: 2em\">今天上午，金大中生前所属的韩国民主党相关人士查看陵墓情况后表示，从起火位置来看，应该是有人故意躲开摄像监控在后面实施的纵火，因为火势自然会蔓延到整个陵墓。</p>\r\n<p style=\"text-indent: 2em\">据悉，韩国警方已经就此事展开了调查。</p>','','','1','News/201002/4b684a8926ef9.jpg','News/201002/4b684a8926ef9_s.jpg','0','0','0','0','0','1265040000','0');
INSERT INTO `ycity_news` VALUES ('6','3','1','fsg','每年数十亿停车费去何处 汽车业注重服务了 ','','','','','','','根据中国质量协会公布的一项调查，相比2008年，2009年国内汽车售后服务态度方面的投诉增加了13.8%,说明车主在购买、维修和保养车辆时，开始日益关注企业服务的“软环境”。','<p style=\"text-indent: 2em\">昨天接到几个汽车公司公关部门负责同志的电话，询问我们在&ldquo;3&middot;15&rdquo;之前有没有涉及到其企业相关投诉稿件的策划。这不免让人想起，又到了车企在&ldquo;3&middot;15&rdquo;之前集中召回问题车的时候了，而这种情况已经从2005年延续至今。</p>\r\n<p style=\"text-indent: 2em\">不管公关公司与媒体这样做沟通是否有用，单就出发点而言，笔者感觉很遗憾。企业的责任在于将最好的产品和服务带给消费者，与其这时候漫无目的地去做媒体沟通，还不如事先强化产品品质和服务体系建设，尽最大程度地让用户满意，才是根本之道。</p>\r\n<p style=\"text-indent: 2em\">根据中国质量协会公布的一项调查，相比2008年，2009年国内汽车售后服务态度方面的投诉增加了13.8%,说明车主在购买、维修和保养车辆时，开始日益关注企业服务的&ldquo;软环境&rdquo;。</p>\r\n<p style=\"text-indent: 2em\">分析一下几个在售后服务方面颇有心得的企业就会知道，<!--keyword--><a class=\"a-tips-Article-QQ\" title=\"上海通用别克\" href=\"http://data.auto.qq.com/car_brand/127/\" target=\"_blank\"><!--/keyword--><font color=\"#000000\">上海通用别克<!--keyword--></font></a><!--/keyword-->、<!--keyword--><a class=\"a-tips-Article-QQ\" title=\"广州本田\" href=\"http://data.auto.qq.com/car_brand/108/\" target=\"_blank\"><!--/keyword--><font color=\"#000000\">广州本田<!--keyword--></font></a><!--/keyword-->和<!--keyword--><a class=\"a-tips-Article-QQ\" title=\"上海大众\" href=\"http://data.auto.qq.com/car_brand/122/\" target=\"_blank\"><!--/keyword--><font color=\"#000000\">上海大众<!--keyword--></font></a><!--/keyword-->无一不是在构建服务品牌方面摸索出了相当多的经验。无论是别克&ldquo;BuickCare&rdquo;的人性关怀，还是提倡服务标准化体系，让每一位顾客都能得到&ldquo;喜悦&rdquo;感受的广州<!--keyword--><a class=\"a-tips-Article-QQ\" title=\"本田\" href=\"http://data.auto.qq.com/car_brand/144/\" target=\"_blank\"><!--/keyword--><font color=\"#000000\">本田<!--keyword--></font></a><!--/keyword-->的&ldquo;3V&rdquo;服务；抑或是推出&ldquo;TECH CARE&rdquo;<!--keyword--><a class=\"a-tips-Article-QQ\" title=\"大众\" href=\"http://data.auto.qq.com/car_brand/147/\" target=\"_blank\"><!--/keyword--><font color=\"#000000\">大众<!--keyword--></font></a><!--/keyword-->关爱形象的上海大众，虽然在4S店内接受的服务感受有所区别，但最终都是要达到让顾客满意的目的。</p>','','','0','','','0','0','0','0','5','1265040000','0');
INSERT INTO `ycity_news` VALUES ('7','5','1','fsg','科比加冕队史得分王 郝海东：早知道高层会出问题 ','','','','','','','该财长还要求中国驻巴格达使馆简化伊拉克商人去中国的入境签证手续。祖贝迪确认，2009年前9个月中伊双边贸易往来比2008年增长78%，达到近40亿美元。','<p style=\"text-indent: 2em\">科威特《政治报》2月1日报道：</p>\r\n<p style=\"text-indent: 2em\">伊拉克财长巴格勒&middot;祖贝迪1月31日宣布，北京已经同意一项双边协议，即免除巴格达80%的债务，该债务总额为85亿美元。对于草签于北京的该项双边协议，中国驻巴格达大使常毅向祖贝迪转达了中国人大常委会对此的批准。</p>\r\n<p style=\"text-indent: 2em\">此外，该财长还要求中国驻巴格达使馆简化伊拉克商人去中国的入境签证手续。祖贝迪确认，2009年前9个月中伊双边贸易往来比2008年增长78%，达到近40亿美元。</p>\r\n<p style=\"text-indent: 2em\">中石油公司是战后进入伊拉克油田的首家外国公司，该公司在2008年8月获得了开发瓦希特省艾哈代卜油田合同，投资额为30亿美元。该项合同签署于1997年，但伊拉克现政府对此进行了修正。</p>\r\n<p style=\"text-indent: 2em\">中石化和英国&ldquo;BP&rdquo;还签署了开发鲁迈拉大型油田合同，该油田原油储量达177亿桶，合同为期20年。（驻科威特使馆经商处 徐放）</p>','','','0','','','0','0','0','0','1','1265040000','0');
INSERT INTO `ycity_news` VALUES ('8','37','1','fsg','中国放开转基因水稻商业种植 安全性引发担忧 ','','','','','','','安全证书是转基因作物品种上市之前最难的一个关口，这意味着该品种的生产性试验结束并获得农业主管部门认可，技术方面的障碍基本扫除，接下来就可以申请生产许可证了。','<p style=\"text-indent: 2em\"><strong>《国际先驱导报》记者金微发自北京</strong> &ldquo;中国成为国外转基因粮的生死试验场&rdquo;&ldquo;民族的噩梦&rdquo;&hellip;&hellip;已经两个月了，有关转基因水稻商业化种植的各种担忧仍然在网络上持续发酵，并逐渐蔓延形成一种恐慌。有的论坛还发起&ldquo;反转基因主粮&rdquo;的签名活动。</p>\r\n<p style=\"text-indent: 2em\">2009年11月27日，农业部批准了两种转基因水稻、一种转基因玉米的安全证书，获得两个转基因水稻安全证书的是华中农业大学张启发教授及其同事。这是中国首次为转基因水稻颁发安全证书。</p>\r\n<p style=\"text-indent: 2em\">安全证书是转基因作物品种上市之前最难的一个关口，这意味着该品种的生产性试验结束并获得农业主管部门认可，技术方面的障碍基本扫除，接下来就可以申请生产许可证了。</p>\r\n<p style=\"text-indent: 2em\">作为全球最大的水稻生产和消费国，中国即将打开转基因水稻商业化种植的&ldquo;闸门&rdquo;，但这也引起了担忧。</p>\r\n<p style=\"text-indent: 2em\">&ldquo;如果在全球还远未达到共识的情况下，我们贸然去进行转基因水稻大面积的商业化种植，这种&lsquo;敢为天下先&rsquo;是不是也太超前了？&rdquo;中国人民大学农业与农村发展学院副院长郑风田发出的疑问颇具代表性。</p>\r\n<p style=\"text-indent: 2em\"><strong>真没害处吗？</strong></p>','','','0','','','0','0','0','0','1','1265040000','0');
INSERT INTO `ycity_news` VALUES ('9','37','1','fsg','31名省级行政首长解析：平均在政坛历练25年','','','','','','','内地现任31名省级地方行政首长中，有两位“60后”，新疆维吾尔自治区主席努尔·白克力，今年48岁，湖南省省长周强则是49岁；“50后”占31省份行政首长中的70%以上，有22人；“40后”有7人，其中最年长的是福建省省长黄小晶、浙江省省长吕祖善、广东省省长黄华华和贵州省省长林树森，均为63岁。','<p>日前，骆惠宁当选为青海省省长。至此，我国5个&ldquo;代理&rdquo;省级地方行政首长均顺利转&ldquo;正&rdquo;。其他4位分别为：西藏自治区主席白玛赤林、重庆市市长黄奇帆、吉林省省长王儒林、河北省省长陈全国。</p>\r\n<p>　　通过对内地31位省级地方行政首长的履历进行统计分析，记者发现，他们参加工作的平均年龄是19.5岁，都是从事基层的工作，大多人的第一份工作并非进入政坛。他们平均在23岁入党、29岁步入政坛，再在政坛经过25年的历练和成长，才能担当地方大员的重任。值得一提的是，在全国恢复高考这一年，至少有1/3人的命运被改变，他们顺利考取大学并毕业后，大多分入政府部门工作，并平步青云。</p>\r\n<p>　　<strong>平均年龄57岁 有两位&ldquo;60后&rdquo;</strong></p>\r\n<p>　　内地现任31名省级地方行政首长中，有两位&ldquo;60后&rdquo;，新疆维吾尔自治区主席努尔&middot;白克力，今年48岁，湖南省省长周强则是49岁；&ldquo;50后&rdquo;占31省份行政首长中的70%以上，有22人；&ldquo;40后&rdquo;有7人，其中最年长的是福建省省长黄小晶、浙江省省长吕祖善、广东省省长黄华华和贵州省省长林树森，均为63岁。</p>\r\n<p>　　31人平均年龄57岁，正是年富力强，经验丰富的时候。我国规定正部级退休年龄为65岁，因此，在未来近10年，他们当中很多人将继续在我国政治舞台中发挥重要的作用。</p>\r\n<p>　　据统计，现任31个省份党委&ldquo;一把手&rdquo;，有15人曾担任过省级地方行政首长，占近一半；在我国政治核心领导层中，也是如此，现任25名中央政治局委员，曾经担任过省级地方行政首长的有11人；9位中央政治局常委中，就有5人曾担任过省长。</p>\r\n<p>　　<strong>超七成首份工作并非从政</strong></p>\r\n<p>　　31名省级地方行政首长，参加工作的平均年龄为19.5岁，值得一提的是，他们当中，只有7人的第一份工作就进入基层的政府部门，只占22.6%；其他大部分人则是下乡当知青或车间工人、窑矿工人、工厂技术员、仓库管理员，还有的是部队服役战士，只有努尔&middot;白克力的起点比较高，大学毕业就到新疆大学政治系任辅导员。</p>','','','0','','','0','0','0','0','3','1265040000','0');
INSERT INTO `ycity_news` VALUES ('10','3','1','fsg','1977年12月，我国恢复了中断10年的高考','color:#ff00ff','a:1:{s:5:\"color\";s:7:\"#ff00ff\";}','','fsg','http://www.y-city.net.com','','近3年知青后，考入吉林大学，毕业后进入沈阳市政府办公厅秘书处；青海省省长骆惠宁从原来炼钢厂团委干事考进安徽大学，毕业后进入安徽省政府办公厅任秘书；湖南省省长周强在湖北黄梅县农村插队当知青2年后，考入西南政法学院，获得硕士学位后调入司法部法律政策研究室法规处；河北省省长','<p><strong>大学毕业多调往政坛</strong></p><p>　　1977年12月，我国恢复了中断10年的高考。记者统计发现，现任31名省级地方行政首长，有1/3成为恢复高考后第一年的幸运儿，其命运也由此发生重大转折。</p><p>　　其中，广西壮族自治区主席马飚在钢铁厂当6年工人后考入中央民族学院，毕业后调入广西计委计划经济研究所当助理研究员；湖北省省长李鸿忠在沈阳农村当了近3年知青后，考入吉林大学，毕业后进入沈阳市政府办公厅秘书处；青海省省长骆惠宁从原来炼钢厂团委干事考进安徽大学，毕业后进入安徽省政府办公厅任秘书；湖南省省长周强在湖北黄梅县农村插队当知青2年后，考入西南政法学院，获得硕士学位后调入司法部法律政策研究室法规处；河北省省长陈全国由一名汽车配件厂工人，考入郑州大学，毕业后调到河南省平舆县辛店公社工作，2年后升任河南驻马店地委办公室秘书(副县级)；海南省省长罗保铭当年也是由一名工人，考入天津师范专科学校，毕业后分配到共青团天津市委。</p><p>　　<strong>学者型官员成为一道风景</strong></p><p>　　31人中，大多在工作中继续学习、深造。据统计，有28人进行过1年以上的学习和培训，有14人有过2次或2次以上的学习深造阶段。</p><p>　　31人均具有大学以上学历，有21人具有研究生学历。引人瞩目的是，学者型官员日渐增多。天津市市长黄兴国是管理学博士、骆惠宁是经济学博士、王正伟是民族经济学博士、陕西省省长袁纯清在湖南大学国际商学院管理科学与工程专业攻读博士研究生并获管理学博士学位，随后又在北京大学经济学院从事理论经济学博士后研究工作并获博士后证书，袁纯清2002年出版了《金融共生理论与城市商业银行研究》一书，由此成为“国内运用共生理论研究经济的第一人”。</p><p>　　31人中，所学专业中文、法律、经济、哲学、管理等居多，理工科较少。新时期，我国的市场经济和民主法制走向成熟，在转型期间，群体事件多发，出于构建和谐社会的需要，过去“工程师主政”的局面正悄然发生变化，一些人文、公共管理、法律出身的职业政治家正在形成。据《南方都市报》报道</p>','','','1','News/201003/4b93aebd4cc5e.jpg','News/201003/4b93aebd4cc5e_s.jpg','0','0','0','99','5','1265040000','1319594351');
INSERT INTO `ycity_news` VALUES ('13','3','1','admin','放松放松方式是否','','','','','','','','<p>fjhjjhjgjhgj<img src=\"http://maps.google.com/maps/api/staticmap?center=39.80875854775631,116.40844522812495&amp;zoom=8&amp;size=520x340&amp;maptype=roadmap&amp;markers=39.904214,116.40741300000002&amp;sensor=false\" style=\"undefined\" width=\"520\" height=\"340\" /><br /></p>','','','0','','','0','0','0','0','5','1319558400','1319603308');
INSERT INTO `ycity_news` VALUES ('16','3','1','admin','asdsadad','','','','','','','adsadsadadadad','<p>adasdadasdasdasd<br /></p>','','','0','','','0','0','0','0','0','1320595200','0');
-- 
-- 表的结构 `ycity_notice`
-- 
CREATE TABLE `ycity_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'udi',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `title_style` varchar(255) NOT NULL COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '样式序列化',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `come_from` varchar(50) NOT NULL DEFAULT '' COMMENT '来源名称',
  `come_from_url` varchar(255) NOT NULL COMMENT '来源地址',
  `link_url` varchar(100) NOT NULL COMMENT '链接地址',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(100) NOT NULL COMMENT '模板文件',
  `tags` varchar(255) NOT NULL COMMENT 'tags',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `attach_file` varchar(100) NOT NULL DEFAULT '' COMMENT '附件文件',
  `keyword` varchar(250) NOT NULL COMMENT '关键字',
  `view_count` int(11) unsigned NOT NULL COMMENT '查看次数',
  `display_order` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='公告';
-- 
-- 导出表中的数据 `ycity_notice`
--
-- 
-- 表的结构 `ycity_order`
-- 
CREATE TABLE `ycity_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '主题ID',
  `realname` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `zipcode` varchar(50) NOT NULL DEFAULT '' COMMENT '邮编',
  `telephone` varchar(255) NOT NULL DEFAULT '' COMMENT '电话',
  `fax` varchar(50) NOT NULL COMMENT '传真',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮件',
  `introduction` text NOT NULL COMMENT '详细内容',
  `remark` text NOT NULL COMMENT '备注',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '状态(0未阅 1已阅 2已处理)',
  `ip` char(15) NOT NULL DEFAULT '127.0.0.1' COMMENT 'IP',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订货日期',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='订单';
-- 
-- 导出表中的数据 `ycity_order`
--
INSERT INTO `ycity_order` VALUES ('18','2','test','0','121233','313213','1321331','3112313','dcfszcfd@fsdf.com','adasdadad','','0','127.0.0.1','1267899050','0');
-- 
-- 表的结构 `ycity_page`
-- 
CREATE TABLE `ycity_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `link_label` char(50) NOT NULL DEFAULT '' COMMENT '链接标识',
  `keyword` varchar(250) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` text NOT NULL COMMENT '简述',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(100) NOT NULL COMMENT '模板',
  `attach_image` varchar(100) NOT NULL DEFAULT '' COMMENT '附件图片',
  `attach_thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '附件缩略图',
  `attach_ext` varchar(50) NOT NULL COMMENT '附件类型',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='单页';
-- 
-- 导出表中的数据 `ycity_page`
--
INSERT INTO `ycity_page` VALUES ('1','关于我们','about','','','<p><strong>大学毕业多调往政坛</strong></p>\r\n<p>　　1977年12月，我国恢复了中断10年的高考。记者统计发现，现任31名省级地方行政首长，有1/3成为恢复高考后第一年的幸运儿，其命运也由此发生重大转折。</p>\r\n<p>　　其中，广西壮族自治区主席马飚在钢铁厂当6年工人后考入中央民族学院，毕业后调入广西计委计划经济研究所当助理研究员；湖北省省长李鸿忠在沈阳农村当了近3年知青后，考入吉林大学，毕业后进入沈阳市政府办公厅秘书处；青海省省长骆惠宁从原来炼钢厂团委干事考进安徽大学，毕业后进入安徽省政府办公厅任秘书；湖南省省长周强在湖北黄梅县农村插队当知青2年后，考入西南政法学院，获得硕士学位后调入司法部法律政策研究室法规处；河北省省长陈全国由一名汽车配件厂工人，考入郑州大学，毕业后调到河南省平舆县辛店公社工作，2年后升任河南驻马店地委办公室秘书(副县级)；海南省省长罗保铭当年也是由一名工人，考入天津师范专科学校，毕业后分配到共青团天津市委。</p>\r\n<p>　　<strong>学者型官员成为一道风景</strong></p>\r\n<p>　　31人中，大多在工作中继续学习、深造。据统计，有28人进行过1年以上的学习和培训，有14人有过2次或2次以上的学习深造阶段。</p>\r\n<p>　　31人均具有大学以上学历，有21人具有研究生学历。引人瞩目的是，学者型官员日渐增多。天津市市长黄兴国是管理学博士、骆惠宁是经济学博士、王正伟是民族经济学博士、陕西省省长袁纯清在湖南大学国际商学院管理科学与工程专业攻读博士研究生并获管理学博士学位，随后又在北京大学经济学院从事理论经济学博士后研究工作并获博士后证书，袁纯清2002年出版了《金融共生理论与城市商业银行研究》一书，由此成为&ldquo;国内运用共生理论研究经济的第一人&rdquo;。</p>\r\n<p>　　31人中，所学专业中文、法律、经济、哲学、管理等居多，理工科较少。新时期，我国的市场经济和民主法制走向成熟，在转型期间，群体事件多发，出于构建和谐社会的需要，过去&ldquo;工程师主政&rdquo;的局面正悄然发生变化，一些人文、公共管理、法律出身的职业政治家正在形成。据《南方都市报》报道</p>','','','','','0','0','1265943064','0');
INSERT INTO `ycity_page` VALUES ('2','联系我们','contact','','','<p>日前，骆惠宁当选为青海省省长。至此，我国5个&ldquo;代理&rdquo;省级地方行政首长均顺利转&ldquo;正&rdquo;。其他4位分别为：西藏自治区主席白玛赤林、重庆市市长黄奇帆、吉林省省长王儒林、河北省省长陈全国。</p>\r\n<p>　　通过对内地31位省级地方行政首长的履历进行统计分析，记者发现，他们参加工作的平均年龄是19.5岁，都是从事基层的工作，大多人的第一份工作并非进入政坛。他们平均在23岁入党、29岁步入政坛，再在政坛经过25年的历练和成长，才能担当地方大员的重任。值得一提的是，在全国恢复高考这一年，至少有1/3人的命运被改变，他们顺利考取大学并毕业后，大多分入政府部门工作，并平步青云。</p>\r\n<p>　　<strong>平均年龄57岁 有两位&ldquo;60后&rdquo;</strong></p>\r\n<p>　　内地现任31名省级地方行政首长中，有两位&ldquo;60后&rdquo;，新疆维吾尔自治区主席努尔&middot;白克力，今年48岁，湖南省省长周强则是49岁；&ldquo;50后&rdquo;占31省份行政首长中的70%以上，有22人；&ldquo;40后&rdquo;有7人，其中最年长的是福建省省长黄小晶、浙江省省长吕祖善、广东省省长黄华华和贵州省省长林树森，均为63岁。</p>\r\n<p>　　31人平均年龄57岁，正是年富力强，经验丰富的时候。我国规定正部级退休年龄为65岁，因此，在未来近10年，他们当中很多人将继续在我国政治舞台中发挥重要的作用。</p>\r\n<p>　　据统计，现任31个省份党委&ldquo;一把手&rdquo;，有15人曾担任过省级地方行政首长，占近一半；在我国政治核心领导层中，也是如此，现任25名中央政治局委员，曾经担任过省级地方行政首长的有11人；9位中央政治局常委中，就有5人曾担任过省长。</p>\r\n<p>　　<strong>超七成首份工作并非从政</strong></p>\r\n<p>　　31名省级地方行政首长，参加工作的平均年龄为19.5岁，值得一提的是，他们当中，只有7人的第一份工作就进入基层的政府部门，只占22.6%；其他大部分人则是下乡当知青或车间工人、窑矿工人、工厂技术员、仓库管理员，还有的是部队服役战士，只有努尔&middot;白克力的起点比较高，大学毕业就到新疆大学政治系任辅导员。</p>','','','','','0','0','0','1310629914');
INSERT INTO `ycity_page` VALUES ('3','支付方式','pay','','','<p>支付方式</p>','','','','','0','0','1267352147','1310629938');
INSERT INTO `ycity_page` VALUES ('4','代理加盟','agent','','','<p>代理加盟</p>','','','','','0','0','1310629998','0');
INSERT INTO `ycity_page` VALUES ('5','网络推广','promotion','','','<p>网络推广网络推广</p>','','','','','0','0','1311413850','1311413932');
-- 
-- 表的结构 `ycity_product`
-- 
CREATE TABLE `ycity_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `username` varchar(20) NOT NULL COMMENT '发布者',
  `category_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '产品名称',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '标题样式序列化',
  `standard` varchar(50) NOT NULL DEFAULT '' COMMENT '规格',
  `number` varchar(50) NOT NULL DEFAULT '' COMMENT '产品型号',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `sale_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `shop_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商场价',
  `description` text NOT NULL COMMENT '描述',
  `content` text NOT NULL COMMENT '产品说明',
  `tags` varchar(255) NOT NULL COMMENT 'tags',
  `template` varchar(100) NOT NULL COMMENT '模板文件',
  `attach` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否附件 1是0否',
  `attach_image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `attach_thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `link_url` varchar(100) NOT NULL COMMENT '外链接',
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '置顶',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否审核',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='产品';
-- 
-- 导出表中的数据 `ycity_product`
--
INSERT INTO `ycity_product` VALUES ('1','1','fsg','13','不得插手房地产开发','color:#3366ff','a:1:{s:5:\"color\";s:7:\"#3366ff\";}','test','test','','0.00','0.00','0.00','test','<p style=\"text-indent: 2em\">中新网北京2月24日电 中共中央近日印发了《<a target=\"_blank\" href=\"http://news.qq.com/a/20100224/000132.htm\"><font color=\"#0b3b8c\">中国共产党党员领导干部廉洁从政若干准则</font></a>》，并发出通知，要求各地区各部门认真贯彻执行。</p>\r\n<p style=\"text-indent: 2em\">通知指出，1997年3月中共中央印发的《中国共产党党员领导干部廉洁从政若干准则(试行)》，对于促进党员领导干部廉洁从政，加强和改进党的建设发挥了重要作用，但是随着新时期党的建设特别是反腐倡廉建设的不断深入，已经不能完全适应现实需要，中央决定予以修订。通知要求，各级党员领导干部要认真贯彻执行《廉政准则》，严于律己，洁身自好，严格要求配偶、子女及其配偶、其他亲属以及身边工作人员，坚决杜绝违反《廉政准则》行为的发生。</p>\r\n<p style=\"text-indent: 2em\">新华社于23日公布了《准则》全文。《准则》包括总则、廉洁从政行为规范、实施与监督、附则，共18条。其中&ldquo;廉洁从政行为规范&rdquo;一章，详细规定了领导干部从政行为八大方面的&ldquo;禁止&rdquo;，并详细列出52种&ldquo;不准&rdquo;的行为。</p>','','','1','Product/201003/4ba37bf0561d5.png','Product/201003/4ba37bf0561d5_s.png','','0','0','0','0','1','1266940800','0');
INSERT INTO `ycity_product` VALUES ('2','1','fsg','7','方地区大风降温将超14℃ 东北有大到暴雪 ','','','','','','0.00','0.00','0.00','方地区大风降温将超14℃ 东北有大到暴雪 ','<p style=\"text-indent: 2em\">中新网2月24日电 中央气象台24日发布天气预报，未来三天，中国北方地区将有大风降温天气，局部地区可达14℃以上，黑龙江、吉林部分地区有大到暴雪；而长江中下游部分地区则有大雨和强对流天气。</p>\r\n<p style=\"text-indent: 2em\">受较强冷空气影响，24~26日，内蒙古大部、华北中北部、东北等地气温将下降6~8℃，内蒙古东部偏南地区、东北地区南部和东部等地气温下降8~12℃,局部地区可达14℃以上；上述地区将先后出现4~6级偏北风；南疆盆地、内蒙古中东部偏北的部分地区有扬沙或浮尘天气。</p>\r\n<p style=\"text-indent: 2em\">受冷暖空气共同影响，未来三天，新疆北部、西藏西南部和青藏高原东部、内蒙古中东部、东北等地由小到中雪或雨夹雪，其中，黑龙江东南部、吉林中东部等地的部分地区有大到暴雪；华北东部和南部、黄淮大部、江淮、江汉大部、江南、华南大部及西南地区东部等地有小到中雨或阵雨，其中，湖北东南部、安徽南部、江西北部、浙江西部等地的部分地区有大雨；24日下午开始，江淮、江南北部等地将先后出现雷暴天气，其中湖北东部、安徽南部及江西北部等地的局部地区可能有短时强降水、冰雹或雷雨大风等强对流天气。</p>\r\n<p style=\"text-indent: 2em\">今天早晨到上午，西南地区东部、辽宁中部和南部、河北东部、天津、山西东南部、河南北部、山东中东部、华南南部、福建西部等地有轻雾或霾，其中，重庆西</p>','','','1','Product/201003/4ba37be30dd68.jpg','Product/201003/4ba37be30dd68_s.jpg','','0','0','0','0','0','1267286400','0');
-- 
-- 表的结构 `ycity_promotion`
-- 
CREATE TABLE `ycity_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `link_label` char(50) NOT NULL DEFAULT '' COMMENT '链接标识',
  `keyword` varchar(250) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` text NOT NULL COMMENT '简述',
  `content` text NOT NULL COMMENT '内容',
  `template` varchar(100) NOT NULL COMMENT '模板',
  `attach_image` varchar(100) NOT NULL DEFAULT '' COMMENT '附件图片',
  `attach_thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '附件缩略图',
  `attach_ext` varchar(50) NOT NULL COMMENT '附件类型',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='单页';
-- 
-- 导出表中的数据 `ycity_promotion`
--
INSERT INTO `ycity_promotion` VALUES ('1','关于我们','about','','','<p><strong>大学毕业多调往政坛</strong></p>\r\n<p>　　1977年12月，我国恢复了中断10年的高考。记者统计发现，现任31名省级地方行政首长，有1/3成为恢复高考后第一年的幸运儿，其命运也由此发生重大转折。</p>\r\n<p>　　其中，广西壮族自治区主席马飚在钢铁厂当6年工人后考入中央民族学院，毕业后调入广西计委计划经济研究所当助理研究员；湖北省省长李鸿忠在沈阳农村当了近3年知青后，考入吉林大学，毕业后进入沈阳市政府办公厅秘书处；青海省省长骆惠宁从原来炼钢厂团委干事考进安徽大学，毕业后进入安徽省政府办公厅任秘书；湖南省省长周强在湖北黄梅县农村插队当知青2年后，考入西南政法学院，获得硕士学位后调入司法部法律政策研究室法规处；河北省省长陈全国由一名汽车配件厂工人，考入郑州大学，毕业后调到河南省平舆县辛店公社工作，2年后升任河南驻马店地委办公室秘书(副县级)；海南省省长罗保铭当年也是由一名工人，考入天津师范专科学校，毕业后分配到共青团天津市委。</p>\r\n<p>　　<strong>学者型官员成为一道风景</strong></p>\r\n<p>　　31人中，大多在工作中继续学习、深造。据统计，有28人进行过1年以上的学习和培训，有14人有过2次或2次以上的学习深造阶段。</p>\r\n<p>　　31人均具有大学以上学历，有21人具有研究生学历。引人瞩目的是，学者型官员日渐增多。天津市市长黄兴国是管理学博士、骆惠宁是经济学博士、王正伟是民族经济学博士、陕西省省长袁纯清在湖南大学国际商学院管理科学与工程专业攻读博士研究生并获管理学博士学位，随后又在北京大学经济学院从事理论经济学博士后研究工作并获博士后证书，袁纯清2002年出版了《金融共生理论与城市商业银行研究》一书，由此成为&ldquo;国内运用共生理论研究经济的第一人&rdquo;。</p>\r\n<p>　　31人中，所学专业中文、法律、经济、哲学、管理等居多，理工科较少。新时期，我国的市场经济和民主法制走向成熟，在转型期间，群体事件多发，出于构建和谐社会的需要，过去&ldquo;工程师主政&rdquo;的局面正悄然发生变化，一些人文、公共管理、法律出身的职业政治家正在形成。据《南方都市报》报道</p>','','','','','0','0','1265943064','0');
INSERT INTO `ycity_promotion` VALUES ('2','联系我们','contact','','','<p>日前，骆惠宁当选为青海省省长。至此，我国5个&ldquo;代理&rdquo;省级地方行政首长均顺利转&ldquo;正&rdquo;。其他4位分别为：西藏自治区主席白玛赤林、重庆市市长黄奇帆、吉林省省长王儒林、河北省省长陈全国。</p>\r\n<p>　　通过对内地31位省级地方行政首长的履历进行统计分析，记者发现，他们参加工作的平均年龄是19.5岁，都是从事基层的工作，大多人的第一份工作并非进入政坛。他们平均在23岁入党、29岁步入政坛，再在政坛经过25年的历练和成长，才能担当地方大员的重任。值得一提的是，在全国恢复高考这一年，至少有1/3人的命运被改变，他们顺利考取大学并毕业后，大多分入政府部门工作，并平步青云。</p>\r\n<p>　　<strong>平均年龄57岁 有两位&ldquo;60后&rdquo;</strong></p>\r\n<p>　　内地现任31名省级地方行政首长中，有两位&ldquo;60后&rdquo;，新疆维吾尔自治区主席努尔&middot;白克力，今年48岁，湖南省省长周强则是49岁；&ldquo;50后&rdquo;占31省份行政首长中的70%以上，有22人；&ldquo;40后&rdquo;有7人，其中最年长的是福建省省长黄小晶、浙江省省长吕祖善、广东省省长黄华华和贵州省省长林树森，均为63岁。</p>\r\n<p>　　31人平均年龄57岁，正是年富力强，经验丰富的时候。我国规定正部级退休年龄为65岁，因此，在未来近10年，他们当中很多人将继续在我国政治舞台中发挥重要的作用。</p>\r\n<p>　　据统计，现任31个省份党委&ldquo;一把手&rdquo;，有15人曾担任过省级地方行政首长，占近一半；在我国政治核心领导层中，也是如此，现任25名中央政治局委员，曾经担任过省级地方行政首长的有11人；9位中央政治局常委中，就有5人曾担任过省长。</p>\r\n<p>　　<strong>超七成首份工作并非从政</strong></p>\r\n<p>　　31名省级地方行政首长，参加工作的平均年龄为19.5岁，值得一提的是，他们当中，只有7人的第一份工作就进入基层的政府部门，只占22.6%；其他大部分人则是下乡当知青或车间工人、窑矿工人、工厂技术员、仓库管理员，还有的是部队服役战士，只有努尔&middot;白克力的起点比较高，大学毕业就到新疆大学政治系任辅导员。</p>','','','','','0','0','0','1310629914');
INSERT INTO `ycity_promotion` VALUES ('3','支付方式','pay','','','<p>支付方式</p>','','','','','0','0','1267352147','1310629938');
INSERT INTO `ycity_promotion` VALUES ('4','代理加盟','agent','','','<p>代理加盟</p>','','','','','0','0','1310629998','0');
-- 
-- 表的结构 `ycity_resume`
-- 
CREATE TABLE `ycity_resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '岗位ID',
  `realname` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` char(2) NOT NULL DEFAULT '男' COMMENT '性别',
  `birthday` varchar(50) NOT NULL DEFAULT '' COMMENT '出生日期',
  `marry` char(10) NOT NULL DEFAULT '未婚' COMMENT '婚否',
  `school` varchar(255) NOT NULL DEFAULT '' COMMENT '学校',
  `degree` varchar(255) NOT NULL DEFAULT '' COMMENT '学历',
  `gradyear` varchar(50) NOT NULL DEFAULT '' COMMENT '毕业时间',
  `telephone` varchar(50) NOT NULL COMMENT '电话',
  `address` varchar(50) NOT NULL COMMENT '联系地址',
  `introduction` text NOT NULL COMMENT '简介',
  `remark` text NOT NULL COMMENT '备注',
  `ip` char(15) NOT NULL DEFAULT '127.0.0.1' COMMENT 'IP',
  `attach_file` varchar(100) NOT NULL COMMENT '附件',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT '状态(0未阅 1已阅 2录用 3未录用)',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '应聘时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='应聘简历';
-- 
-- 导出表中的数据 `ycity_resume`
--
INSERT INTO `ycity_resume` VALUES ('1','8','mei','1','','未婚','tjuci','本科','201107','13803002087','','佛山分公司的规划的附加费','','127.0.0.1','','0','1319290857','0');
-- 
-- 表的结构 `ycity_tags`
-- 
CREATE TABLE `ycity_tags` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `tag_name` char(20) NOT NULL DEFAULT '' COMMENT '标签',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块',
  `total_count` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '出现主题数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='tag标签';
-- 
-- 导出表中的数据 `ycity_tags`
--
-- 
-- 表的结构 `ycity_tags_cache`
-- 
CREATE TABLE `ycity_tags_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块',
  `tag_name` char(20) NOT NULL COMMENT '标签名',
  `title_id` int(10) unsigned NOT NULL COMMENT '主题ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='tag主题关联';
-- 
-- 导出表中的数据 `ycity_tags_cache`
--
-- 
-- 表的结构 `ycity_template`
-- 
CREATE TABLE `ycity_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `username` varchar(20) NOT NULL COMMENT '发布者',
  `category_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '产品名称',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '标题样式序列化',
  `standard` varchar(50) NOT NULL DEFAULT '' COMMENT '规格',
  `number` varchar(50) NOT NULL DEFAULT '' COMMENT '产品型号',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `sale_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `shop_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商场价',
  `description` text NOT NULL COMMENT '描述',
  `content` text NOT NULL COMMENT '产品说明',
  `tags` varchar(255) NOT NULL COMMENT 'tags',
  `template` varchar(100) NOT NULL COMMENT '模板文件',
  `attach` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否附件 1是0否',
  `attach_image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `attach_thumb` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `link_url` varchar(100) NOT NULL COMMENT '外链接',
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '置顶',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否审核',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='产品';
-- 
-- 导出表中的数据 `ycity_template`
--
INSERT INTO `ycity_template` VALUES ('1','1','fsg','13','不得插手房地产开发','color:#3366ff','a:1:{s:5:\"color\";s:7:\"#3366ff\";}','test','test','','0.00','0.00','0.00','test','<p style=\"text-indent: 2em\">中新网北京2月24日电 中共中央近日印发了《<a target=\"_blank\" href=\"http://news.qq.com/a/20100224/000132.htm\"><font color=\"#0b3b8c\">中国共产党党员领导干部廉洁从政若干准则</font></a>》，并发出通知，要求各地区各部门认真贯彻执行。</p>\r\n<p style=\"text-indent: 2em\">通知指出，1997年3月中共中央印发的《中国共产党党员领导干部廉洁从政若干准则(试行)》，对于促进党员领导干部廉洁从政，加强和改进党的建设发挥了重要作用，但是随着新时期党的建设特别是反腐倡廉建设的不断深入，已经不能完全适应现实需要，中央决定予以修订。通知要求，各级党员领导干部要认真贯彻执行《廉政准则》，严于律己，洁身自好，严格要求配偶、子女及其配偶、其他亲属以及身边工作人员，坚决杜绝违反《廉政准则》行为的发生。</p>\r\n<p style=\"text-indent: 2em\">新华社于23日公布了《准则》全文。《准则》包括总则、廉洁从政行为规范、实施与监督、附则，共18条。其中&ldquo;廉洁从政行为规范&rdquo;一章，详细规定了领导干部从政行为八大方面的&ldquo;禁止&rdquo;，并详细列出52种&ldquo;不准&rdquo;的行为。</p>','','','1','Product/201003/4ba37bf0561d5.png','Product/201003/4ba37bf0561d5_s.png','','0','0','0','0','24','1266940800','0');
INSERT INTO `ycity_template` VALUES ('2','1','fsg','7','方地区大风降温将超14℃ 东北有大到暴雪 ','','','','','','0.00','0.00','0.00','方地区大风降温将超14℃ 东北有大到暴雪 ','<p style=\"text-indent: 2em\">中新网2月24日电 中央气象台24日发布天气预报，未来三天，中国北方地区将有大风降温天气，局部地区可达14℃以上，黑龙江、吉林部分地区有大到暴雪；而长江中下游部分地区则有大雨和强对流天气。</p>\r\n<p style=\"text-indent: 2em\">受较强冷空气影响，24~26日，内蒙古大部、华北中北部、东北等地气温将下降6~8℃，内蒙古东部偏南地区、东北地区南部和东部等地气温下降8~12℃,局部地区可达14℃以上；上述地区将先后出现4~6级偏北风；南疆盆地、内蒙古中东部偏北的部分地区有扬沙或浮尘天气。</p>\r\n<p style=\"text-indent: 2em\">受冷暖空气共同影响，未来三天，新疆北部、西藏西南部和青藏高原东部、内蒙古中东部、东北等地由小到中雪或雨夹雪，其中，黑龙江东南部、吉林中东部等地的部分地区有大到暴雪；华北东部和南部、黄淮大部、江淮、江汉大部、江南、华南大部及西南地区东部等地有小到中雨或阵雨，其中，湖北东南部、安徽南部、江西北部、浙江西部等地的部分地区有大雨；24日下午开始，江淮、江南北部等地将先后出现雷暴天气，其中湖北东部、安徽南部及江西北部等地的局部地区可能有短时强降水、冰雹或雷雨大风等强对流天气。</p>\r\n<p style=\"text-indent: 2em\">今天早晨到上午，西南地区东部、辽宁中部和南部、河北东部、天津、山西东南部、河南北部、山东中东部、华南南部、福建西部等地有轻雾或霾，其中，重庆西</p>','','','1','Product/201003/4ba37be30dd68.jpg','Product/201003/4ba37be30dd68_s.jpg','','0','0','0','0','15','1267286400','0');