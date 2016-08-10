<?php
if (!defined('YCITYCMS')) die('Access Denied');
$database = require ('./db.config.php');
$sysConfig =  require (DATA.'/sys.config.php');
$config = array(
		'DEFAULT_THEME'		=> 'Default',
		'DEFAULT_CHARSET' => 'utf-8',
		//'APP_GROUP_LIST' => 'Home,Member',
		//'DEFAULT_GROUP' =>'Home',
		//'DEFAULT_LANG'   => 'cn',
		//'LANG_SWITCH_ON'		=> true, //是否开启多语言功能，默认false(关闭)
		//'LANG_LIST'=>'cn,zh-cn,en',
	//	'TAGLIB_LOAD' => true, //是否使用内置标签库之外的其它标签库，默认true(进行自动检测)
	//	'TAGLIB_PRE_LOAD' =>'YC',

		'TMPL_ACTION_ERROR' => APP_PATH.'/Tpl/Default/Public/error.html',//错误跳转模板文件
		'TMPL_ACTION_SUCCESS' =>  APP_PATH.'/Tpl/Default/Public/success.html',//成功跳转模板文件
		'COOKIE_PREFIX'=>'YC_',
		'COOKIE_EXPIRE'=>'',
		'VAR_PAGE' => 'p',
		'SHOW_ERROR_MSG'  => true,
		'LAYOUT_ON'=>true,
	//	'TMPL_EXCEPTION_FILE' => './notFound.html'
		'TMPL_EXCEPTION_FILE' => '/cghc_chinagas_com_cn/notFound.html',//异常模板
);
return array_merge($database, $config, $sysConfig);