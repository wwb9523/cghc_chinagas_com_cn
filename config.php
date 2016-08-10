<?php
$database = require ('./db.config.php');

$config	= array(
		'URL_MODEL' => 1,//后台admin.php不受rewrite影响
        'DEFAULT_THEME' => 'Default',//后台不受模板影响
		'URL_ROUTER_ON' => false,
		'APP_DEBUG' => true,
		'SHOW_PAGE_TRACE' => false,
		'SYS_VERSION' => 'V2.2.1 Dev',
		'SYS_UPDATETIME' => '20120720',
		'TMPL_EXCEPTION_FILE' => '/cghc_chinagas_com_cn/notFound.html'
);
return array_merge($database, $config);