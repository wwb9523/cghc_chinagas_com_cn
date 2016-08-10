<?php
/** 
 * db.config.php
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */

if (!defined('YCITYCMS')) exit();

return array(
	'DB_TYPE' => 'mysql',
	'DB_HOST' => '#dbHost#',
	'DB_NAME' => '#dbName#',
	'DB_USER' => '#dbUser#',
	'DB_PWD' => '#dbPwd#',
	'DB_PORT' => '#dbPort#',
	'DB_PREFIX' => '#dbPrefix#',
	'ADMIN_ACCESS' => '#adminAccess#',
	'DB_FIELDS_CACHE' => false,
    'DB_FIELDTYPE_CHECK' => true,

);