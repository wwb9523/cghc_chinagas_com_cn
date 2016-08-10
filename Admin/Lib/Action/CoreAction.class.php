<?php
/**
 * 
 * Core(内核配置)
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */

class CoreAction extends BaseAction
{
    private $croeConfig,$dao;
    function _initialize()
    {
        parent::_initialize();
        $this->coreConfig = getContent('sys.config.php', DATA);
        //$this->dao = D('Core');
    }

    /**
     * 内核配置
     *
     */
    public function index()
    {
        parent::_checkPermission();
        $this->assign($this->coreConfig);
        parent::_sysLog('index');
        $this->display();
    }

    /**
     * 提交内核配置
     *
     */
    public function doCore()
    {
        parent::_setMethod('post');
        parent::_checkPermission('Config_coreModify');
        $config = $this->coreConfig;
        $configHeader = "<?php\nif (!defined('YCITYCMS')) die('Access Denied');\nreturn array(\r\n";
        $configFooter .= ');';
        $config['APP_DEBUG'] = trim($_POST['APP_DEBUG']);
		$config['SHOW_PAGE_TRACE'] = trim($_POST['SHOW_PAGE_TRACE']);
        $config['URL_ROUTER_ON'] = trim($_POST['URL_ROUTER_ON']);
        //$config['URL_DISPATCH_ON'] = trim($_POST['URL_DISPATCH_ON']);
        $config['URL_MODEL'] = trim($_POST['URL_MODEL']);
        $config['URL_PATHINFO_DEPR'] = trim($_POST['URL_PATHINFO_DEPR']);
        $config['URL_HTML_SUFFIX'] = trim($_POST['URL_HTML_SUFFIX']);
        //$config['TMPL_CACHE_ON'] = trim($_POST['TMPL_CACHE_ON']);
        //$config['TMPL_CACHE_ON'] = trim($_POST['TMPL_CACHE_ON']);
        $config['TOKEN_NAME'] = trim($_POST['TOKEN_NAME']);
        $config['TMPL_CACHE_ON'] = trim($_POST['TMPL_CACHE_ON']);
        $config['TMPL_CACHE_TIME'] = trim($_POST['TMPL_CACHE_TIME']);
        foreach((array)$config as $key => $value)
        {
            if($value === true || $value == 'true'){
                $configBody .= "    '".$key."' => true,\r\n";
            }else if($value === false || $value == 'false'){
                $configBody .= "    '".$key."' => false,\r\n";
            } else if(is_numeric($value)){
                $configBody .= "    '".$key."' => $value,\r\n";
            }else{
                $configBody .= "    '".$key."' => '$value',\r\n";
            }
        }

        $configData = $configHeader . $configBody . $configFooter;
        putContent($configData, 'sys.config.php', DATA);
        parent::_sysLog('modify', "编辑内核配置");
        parent::_message('success', '内核更新成功');
    }
}
