<?php 
/**
 * 
 * 后台管理入口
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */

header("Content-type: text/html; charset=UTF-8");
if (!file_exists('./db.config.php')) die('db.config.php 不存在，请正常安装系统');
define('YCITYCMS', './YcityCms');
define('DATA', './Data');
define('UPLOAD_PATH', './Uploads');
define('APP_NAME', 'Admin');
define('APP_PATH', './Admin');
define('THINK_PATH', './Core');
define('APP_DEBUG', true);
define('NO_CACHE_RUNTIME',True);
require(THINK_PATH."/Core.php");
App::run();