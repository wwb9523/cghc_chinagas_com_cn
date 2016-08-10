<?php 
/**
 * 
 * index(系统首页)
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */

header("Content-type: text/html; charset=UTF-8");
if (!file_exists('./db.config.php')) die('<html><head><title>新城网络企业网站管理系统</title></head><body style="text-align:center; background-color: #F7F7F7;"><div style="width:600px; height:80px; text-align:center; margin:140px auto 0; padding:100px 0; background-color: #FFFFFF; border: 1px solid #DFDFDF; color: #666666;"><p>系统尚未安装，请执行install.php开始安装系统</p><p><a href="./Data/Install/install.php">点此安装系统</a></p></div></body></html>');
define('YCITYCMS', './YcityCms');
define('DATA', './Data');
define('UPLOAD_PATH', './Uploads');
define('APP_NAME', 'YcityCms');
define('APP_PATH', './YcityCms');
define('Uploads_PATH','./Uploads');
define('THINK_PATH', './Core');
define('APP_DEBUG',true);
require(THINK_PATH."/Core.php");
App::run();