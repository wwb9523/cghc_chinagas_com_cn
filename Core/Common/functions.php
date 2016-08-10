<?php

// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2012 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
// $Id: functions.php 2796 2012-03-02 15:37:05Z liu21st $

/**
  +------------------------------------------------------------------------------
 * Think公共函数库
  +------------------------------------------------------------------------------
 * @category   Think
 * @package  Common
 * @author   liu21st <liu21st@gmail.com>
 * @version  $Id: functions.php 2796 2012-03-02 15:37:05Z liu21st $
  +------------------------------------------------------------------------------
 */
// 设置和获取统计数据
function N($key, $step=0) {
    static $_num = array();
    if (!isset($_num[$key])) {
        $_num[$key] = 0;
    }
    if (empty($step))
        return $_num[$key];
    else
        $_num[$key] = $_num[$key] + (int) $step;
}

// URL组装 支持不同模式和路由
function U($url, $params=array(), $redirect=false, $suffix=true) {
    if (0 === strpos($url, '/'))
        $url = substr($url, 1);
    if (!strpos($url, '://')) // 没有指定项目名 使用当前项目名
        $url = APP_NAME . '://' . $url;
    if (stripos($url, '@?')) { // 给路由传递参数
        $url = str_replace('@?', '@think?', $url);
    } elseif (stripos($url, '@')) { // 没有参数的路由
        $url = $url . MODULE_NAME;
    }
    // 分析URL地址
    $array = parse_url($url);
    $app = isset($array['scheme']) ? $array['scheme'] : APP_NAME;
    $route = isset($array['user']) ? $array['user'] : '';
    if (defined('GROUP_NAME') && strcasecmp(GROUP_NAME, C('DEFAULT_GROUP')))
        $group = GROUP_NAME;
    if (isset($array['path'])) {
        $action = substr($array['path'], 1);
        if (!isset($array['host'])) {
            // 没有指定模块名
            $module = MODULE_NAME;
        } else {// 指定模块
            if (strpos($array['host'], '-')) {
                list($group, $module) = explode('-', $array['host']);
            } else {
                $module = $array['host'];
            }
        }
    } else { // 只指定操作
        $module = MODULE_NAME;
        $action = $array['host'];
    }
    if (isset($array['query'])) {
        parse_str($array['query'], $query);
        $params = array_merge($query, $params);
    }
    //对二级域名的支持,待完善对*号子域名的支持
    if (C('APP_SUB_DOMAIN_DEPLOY')) {
        foreach (C('APP_SUB_DOMAIN_RULES') as $key => $rule) {
            if (in_array($group . "/", $rule))
                $flag = true;
            if (in_array($group . "/" . $module, $rule)) {
                $flag = true;
                unset($module);
            }
            if (!isset($group) && in_array(GROUP_NAME . "/" . $module, $rule) && in_array($key,array(SUB_DOMAIN,"*")))
                unset($module);
            if ($flag) {
                unset($group);
                if ($key != SUB_DOMAIN && $key != "*") {
                    $sub_domain = $key;
                }
                break;
            }
        }
    }
    // 默认分组不显示
    if(0 == strcasecmp($group, C('DEFAULT_GROUP')))  unset($group);
    if (C('URL_MODEL') > 0) {
        $depr = C('URL_PATHINFO_DEPR');
        $str = $depr;
        foreach ($params as $var => $val)
            $str .= $var . $depr . $val . $depr;
        $str = substr($str, 0, -1);
        $group = isset($group) ? $group . $depr : '';
        $module = isset($module) ? $module . $depr : "";
        if (!empty($route)) {
            $url = str_replace(APP_NAME, $app, __APP__) . '/' . $group . $route . $str;
        } else {
            $url = str_replace(APP_NAME, $app, __APP__) . '/' . $group . $module . $action . $str;
        }
        if ($suffix && C('URL_HTML_SUFFIX'))
            $url .= C('URL_HTML_SUFFIX');
    }else {
        $params = http_build_query($params);
        $params = !empty($params) ? '&' . $params : '';
        if (isset($group)) {
            $url = str_replace(APP_NAME, $app, __APP__) . '?' . C('VAR_GROUP') . '=' . $group . '&' . C('VAR_MODULE') . '=' . $module . '&' . C('VAR_ACTION') . '=' . $action . $params;
        } else {
            $url = str_replace(APP_NAME, $app, __APP__) . '?' . C('VAR_MODULE') . '=' . $module . '&' . C('VAR_ACTION') . '=' . $action . $params;
        }
    }
    if (isset($sub_domain)) {
        $domain = str_replace(SUB_DOMAIN, $sub_domain, $_SERVER['HTTP_HOST']);
        $url = "http://" . $domain . $url;
    }
    if ($redirect)
        redirect($url);
    else
        return $url;
}

/**
  +----------------------------------------------------------
 * 字符串命名风格转换
 * type
 * =0 将Java风格转换为C的风格
 * =1 将C风格转换为Java的风格
  +----------------------------------------------------------
 * @access protected
  +----------------------------------------------------------
 * @param string $name 字符串
 * @param integer $type 转换类型
  +----------------------------------------------------------
 * @return string
  +----------------------------------------------------------
 */
function parse_name($name, $type=0) {
    if ($type) {
        return ucfirst(preg_replace("/_([a-zA-Z])/e", "strtoupper('\\1')", $name));
    } else {
        $name = preg_replace("/[A-Z]/", "_\\0", $name);
        return strtolower(trim($name, "_"));
    }
}

// 错误输出
function halt($error) {
    if (IS_CLI)
        exit($error);
    $e = array();
    if (C('APP_DEBUG')) {
        //调试模式下输出错误信息
        if (!is_array($error)) {
            $trace = debug_backtrace();
            $e['message'] = $error;
            $e['file'] = $trace[0]['file'];
            $e['class'] = $trace[0]['class'];
            $e['function'] = $trace[0]['function'];
            $e['line'] = $trace[0]['line'];
            $traceInfo = '';
            $time = date("y-m-d H:i:m");
            foreach ($trace as $t) {
                $traceInfo .= '[' . $time . '] ' . $t['file'] . ' (' . $t['line'] . ') ';
                $traceInfo .= $t['class'] . $t['type'] . $t['function'] . '(';
                $traceInfo .= implode(', ', $t['args']);
                $traceInfo .=")<br/>";
            }
            $e['trace'] = $traceInfo;
        } else {
            $e = $error;
        }
        // 包含异常页面模板
        include C('TMPL_EXCEPTION_FILE');
    } else {
        //否则定向到错误页面
        $error_page = C('ERROR_PAGE');
        if (!empty($error_page)) {
            redirect($error_page);
        } else {
            if (C('SHOW_ERROR_MSG'))
                $e['message'] = is_array($error) ? $error['message'] : $error;
            else
                $e['message'] = C('ERROR_MESSAGE');
            // 包含异常页面模板
            include C('TMPL_EXCEPTION_FILE');
        }
    }
    exit;
}

// URL重定向
function redirect($url, $time=0, $msg='') {
    //多行URL地址支持
    $url = str_replace(array("\n", "\r"), '', $url);
    if (empty($msg))
        $msg = "系统将在{$time}秒之后自动跳转到{$url}！";
    if (!headers_sent()) {
        // redirect
        if (0 === $time) {
            header("Location: " . $url);
        } else {
            header("refresh:{$time};url={$url}");
            echo($msg);
        }
        exit();
    } else {
        $str = "<meta http-equiv='Refresh' content='{$time};URL={$url}'>";
        if ($time != 0)
            $str .= $msg;
        exit($str);
    }
}

// 自定义异常处理
function throw_exception($msg, $type='ThinkException', $code=0) {
    if (IS_CLI)
        exit($msg);
    if (class_exists($type, false))
        throw new $type($msg, $code, true);
    else
        halt($msg);        // 异常类型不存在则输出错误信息字串
}

// 区间调试开始
function debug_start($label='') {
    $GLOBALS[$label]['_beginTime'] = microtime(TRUE);
    if (MEMORY_LIMIT_ON)
        $GLOBALS[$label]['_beginMem'] = memory_get_usage();
}

// 区间调试结束，显示指定标记到当前位置的调试
function debug_end($label='') {
    $GLOBALS[$label]['_endTime'] = microtime(TRUE);
    echo '<div style="text-align:center;width:100%">Process ' . $label . ': Times ' . number_format($GLOBALS[$label]['_endTime'] - $GLOBALS[$label]['_beginTime'], 6) . 's ';
    if (MEMORY_LIMIT_ON) {
        $GLOBALS[$label]['_endMem'] = memory_get_usage();
        echo ' Memories ' . number_format(($GLOBALS[$label]['_endMem'] - $GLOBALS[$label]['_beginMem']) / 1024) . ' k';
    }
    echo '</div>';
}

// 浏览器友好的变量输出
function dump($var, $echo=true, $label=null, $strict=true) {
    $label = ($label === null) ? '' : rtrim($label) . ' ';
    if (!$strict) {
        if (ini_get('html_errors')) {
            $output = print_r($var, true);
            $output = "<pre>" . $label . htmlspecialchars($output, ENT_QUOTES) . "</pre>";
        } else {
            $output = $label . print_r($var, true);
        }
    } else {
        ob_start();
        var_dump($var);
        $output = ob_get_clean();
        if (!extension_loaded('xdebug')) {
            $output = preg_replace("/\]\=\>\n(\s+)/m", "] => ", $output);
            $output = '<pre>' . $label . htmlspecialchars($output, ENT_QUOTES) . '</pre>';
        }
    }
    if ($echo) {
        echo($output);
        return null;
    }else
        return $output;
}

// 取得对象实例 支持调用类的静态方法
function get_instance_of($name, $method='', $args=array()) {
    static $_instance = array();
    $identify = empty($args) ? $name . $method : $name . $method . to_guid_string($args);
    if (!isset($_instance[$identify])) {
        if (class_exists($name)) {
            $o = new $name();
            if (method_exists($o, $method)) {
                if (!empty($args)) {
                    $_instance[$identify] = call_user_func_array(array(&$o, $method), $args);
                } else {
                    $_instance[$identify] = $o->$method();
                }
            }
            else
                $_instance[$identify] = $o;
        }
        else
            halt(L('_CLASS_NOT_EXIST_') . ':' . $name);
    }
    return $_instance[$identify];
}

/**
 +----------------------------------------------------------
 * 系统自动加载ThinkPHP基类库和当前项目的model和Action对象
 * 并且支持配置自动加载路径
 +----------------------------------------------------------
 * @param string $name 对象类名
 +----------------------------------------------------------
 * @return void
 +----------------------------------------------------------
 */
function __autoload($name) {
    return Think::autoload($name);
}

// 优化的require_once
function require_cache($filename) {
    static $_importFiles = array();
    $filename = realpath($filename);
    if (!isset($_importFiles[$filename])) {
        if (file_exists_case($filename)) {
            require $filename;
            $_importFiles[$filename] = true;
        } else {
            $_importFiles[$filename] = false;
        }
    }
    return $_importFiles[$filename];
}

// 区分大小写的文件存在判断
function file_exists_case($filename) {
    if (is_file($filename)) {
        if (IS_WIN && C('APP_FILE_CASE')) {
            if (basename(realpath($filename)) != basename($filename))
                return false;
        }
        return true;
    }
    return false;
}

/**
  +----------------------------------------------------------
 * 导入所需的类库 同java的Import
 * 本函数有缓存功能
  +----------------------------------------------------------
 * @param string $class 类库命名空间字符串
 * @param string $baseUrl 起始路径
 * @param string $ext 导入的文件扩展名
  +----------------------------------------------------------
 * @return boolen
  +----------------------------------------------------------
 */
function import($class, $baseUrl = '', $ext='.class.php') {
    static $_file = array();
    static $_class = array();
    $class = str_replace(array('.', '#'), array('/', '.'), $class);
    if ('' === $baseUrl && false === strpos($class, '/')) {
        // 检查别名导入
        return alias_import($class);
    }    //echo('<br>'.$class.$baseUrl);
    if (isset($_file[$class . $baseUrl]))
        return true;
    else
        $_file[$class . $baseUrl] = true;
    $class_strut = explode("/", $class);
    if (empty($baseUrl)) {
        if ('@' == $class_strut[0] || APP_NAME == $class_strut[0]) {
            //加载当前项目应用类库
            $baseUrl = dirname(LIB_PATH);
            $class = substr_replace($class, 'Lib/', 0, strlen($class_strut[0]) + 1);
        } elseif (in_array(strtolower($class_strut[0]), array('think', 'org', 'com'))) {
            //加载ThinkPHP基类库或者公共类库
            // think 官方基类库 org 第三方公共类库 com 企业公共类库
            $baseUrl = THINK_PATH . '/Lib/';
        } else {
            // 加载其他项目应用类库
            $class = substr_replace($class, '', 0, strlen($class_strut[0]) + 1);
            $baseUrl = APP_PATH . '/../' . $class_strut[0] . '/' . LIB_DIR . '/';
        }
    }
    if (substr($baseUrl, -1) != "/")
        $baseUrl .= "/";
    $classfile = $baseUrl . $class . $ext;
    if ($ext == '.class.php' && is_file($classfile)) {
        // 冲突检测
        $class = basename($classfile, $ext);
        if (isset($_class[$class]))
            throw_exception(L('_CLASS_CONFLICT_') . ':' . $_class[$class] . ' ' . $classfile);
        $_class[$class] = $classfile;
    }
    //导入目录下的指定类库文件
    return require_cache($classfile);
}

/**
  +----------------------------------------------------------
 * 基于命名空间方式导入函数库
 * load('@.Util.Array')
  +----------------------------------------------------------
 * @param string $name 函数库命名空间字符串
 * @param string $baseUrl 起始路径
 * @param string $ext 导入的文件扩展名
  +----------------------------------------------------------
 * @return void
  +----------------------------------------------------------
 */
function load($name, $baseUrl='', $ext='.php') {
    $name = str_replace(array('.', '#'), array('/', '.'), $name);
    if (empty($baseUrl)) {
        if (0 === strpos($name, '@/')) {
            //加载当前项目函数库
            $baseUrl = APP_PATH . '/Common/';
            $name = substr($name, 2);
        } else {
            //加载ThinkPHP 系统函数库
            $baseUrl = THINK_PATH . '/Common/';
        }
    }
    if (substr($baseUrl, -1) != "/")
        $baseUrl .= "/";
    require_cache($baseUrl . $name . $ext);
}

// 快速导入第三方框架类库
// 所有第三方框架的类库文件统一放到 系统的Vendor目录下面
// 并且默认都是以.php后缀导入
function vendor($class, $baseUrl = '', $ext='.php') {
    if (empty($baseUrl))
        $baseUrl = VENDOR_PATH;
    return import($class, $baseUrl, $ext);
}

// 快速定义和导入别名
function alias_import($alias, $classfile='') {
    static $_alias = array();
    if ('' !== $classfile) {
        // 定义别名导入
        $_alias[$alias] = $classfile;
        return;
    }
    if (is_string($alias)) {
        if (isset($_alias[$alias]))
            return require_cache($_alias[$alias]);
    }elseif (is_array($alias)) {
        foreach ($alias as $key => $val)
            $_alias[$key] = $val;
        return;
    }
    return false;
}

/**
  +----------------------------------------------------------
 * D函数用于实例化Model
  +----------------------------------------------------------
 * @param string name Model名称
 * @param string app Model所在项目
  +----------------------------------------------------------
 * @return Model
  +----------------------------------------------------------
 */
function D($name='', $app='') {
    static $_model = array();
    if (empty($name))
        return new Model;
    if (empty($app))
        $app = C('DEFAULT_APP');
    if (isset($_model[$app . $name]))
        return $_model[$app . $name];
    $OriClassName = $name;
    if (strpos($name, '.')) {
        $array = explode('.', $name);
        $name = array_pop($array);
        $className = $name . 'Model';
        import($app . '.Model.' . implode('.', $array) . '.' . $className);
    } else {
        $className = $name . 'Model';
        import($app . '.Model.' . $className);
    }
    if (class_exists($className)) {
        $model = new $className();
    } else {
        $model = new Model($name);
    }
    $_model[$app . $OriClassName] = $model;
    return $model;
}

/**
  +----------------------------------------------------------
 * M函数用于实例化一个没有模型文件的Model
  +----------------------------------------------------------
 * @param string name Model名称
 * @param string class 要实例化的模型类名
  +----------------------------------------------------------
 * @return Model
  +----------------------------------------------------------
 */
function M($name='', $class='Model') {
    static $_model = array();
    if (!isset($_model[$name . '_' . $class]))
        $_model[$name . '_' . $class] = new $class($name);
    return $_model[$name . '_' . $class];
}

/**
  +----------------------------------------------------------
 * A函数用于实例化Action
  +----------------------------------------------------------
 * @param string name Action名称
 * @param string app Model所在项目
  +----------------------------------------------------------
 * @return Action
  +----------------------------------------------------------
 */
function A($name, $app='@') {
    static $_action = array();
    if (isset($_action[$app . $name]))
        return $_action[$app . $name];
    $OriClassName = $name;
    if (strpos($name, '.')) {
        $array = explode('.', $name);
        $name = array_pop($array);
        $className = $name . 'Action';
        import($app . '.Action.' . implode('.', $array) . '.' . $className);
    } else {
        $className = $name . 'Action';
        import($app . '.Action.' . $className);
    }
    if (class_exists($className,false)) {
        $action = new $className();
        $_action[$app . $OriClassName] = $action;
        return $action;
    } else {
        return false;
    }
}

// 远程调用模块的操作方法
function R($module, $action, $app='@') {
    $class = A($module, $app);
    if ($class)
        return call_user_func(array(&$class, $action));
    else
        return false;
}

// 获取和设置语言定义(不区分大小写)
function L($name=null, $value=null) {
    static $_lang = array();
    // 空参数返回所有定义
    if (empty($name))
        return $_lang;
    // 判断语言获取(或设置)
    // 若不存在,直接返回全大写$name
    if (is_string($name)) {
        $name = strtoupper($name);
        if (is_null($value))
            return isset($_lang[$name]) ? $_lang[$name] : $name;
        $_lang[$name] = $value; // 语言定义
        return;
    }
    // 批量定义
    if (is_array($name))
        $_lang = array_merge($_lang, array_change_key_case($name, CASE_UPPER));
    return;
}

// 获取配置值
function C($name=null, $value=null) {
    static $_config = array();
    // 无参数时获取所有
    if (empty($name))
        return $_config;
    // 优先执行设置获取或赋值
    if (is_string($name)) {
        if (!strpos($name, '.')) {
            $name = strtolower($name);
            if (is_null($value))
                return isset($_config[$name]) ? $_config[$name] : null;
            $_config[$name] = $value;
            return;
        }
        // 二维数组设置和获取支持
        $name = explode('.', $name);
        $name[0]   =  strtolower($name[0]);
        if (is_null($value))
            return isset($_config[$name[0]][$name[1]]) ? $_config[$name[0]][$name[1]] : null;
        $_config[$name[0]][$name[1]] = $value;
        return;
    }
    // 批量设置
    if (is_array($name)){
        return $_config = array_merge($_config, array_change_key_case($name));
    }
    return null; // 避免非法参数
}

// 处理标签
function tag($name, $params=array()) {
    $tags = C('TAGS.' . $name);
    if (!empty($tags)) {
        foreach ($tags as $key => $call) {
            $result = B($call, $params);
        }
    }
}

// 过滤器方法
function filter($name, &$content) {
    $class = $name . 'Filter';
    require_cache(LIB_PATH . 'Filter/' . $class . '.class.php');
    $filter = new $class();
    $content = $filter->run($content);
}

// 执行行为
function B($name, $params=array()) {
    $class = $name . 'Behavior';
    require_cache(LIB_PATH . 'Behavior/' . $class . '.class.php');
    $behavior = new $class();
    return $behavior->run($params);
}

// 渲染输出Widget
function W($name, $data=array(), $return=false) {
    $class = $name . 'Widget';
    require_cache(LIB_PATH . 'Widget/' . $class . '.class.php');
    if (!class_exists($class))
        throw_exception(L('_CLASS_NOT_EXIST_') . ':' . $class);
    $widget = Think::instance($class);
    $content = $widget->render($data);
    if ($return)
        return $content;
    else
        echo $content;
}

// 全局缓存设置和读取
function S($name, $value='', $expire='', $type='',$options=null) {
    static $_cache = array();
    alias_import('Cache');
    //取得缓存对象实例
    $cache = Cache::getInstance($type,$options);
    if ('' !== $value) {
        if (is_null($value)) {
            // 删除缓存
            $result = $cache->rm($name);
            if ($result)
                unset($_cache[$type . '_' . $name]);
            return $result;
        }else {
            // 缓存数据
            $cache->set($name, $value, $expire);
            $_cache[$type . '_' . $name] = $value;
        }
        return;
    }
    if (isset($_cache[$type . '_' . $name]))
        return $_cache[$type . '_' . $name];
    // 获取缓存数据
    $value = $cache->get($name);
    $_cache[$type . '_' . $name] = $value;
    return $value;
}

// 快速文件数据读取和保存 针对简单类型数据 字符串、数组
function F($name, $value='', $path=DATA_PATH) {
    static $_cache = array();
    $filename = $path . $name . '.php';
    if ('' !== $value) {
        if (is_null($value)) {
            // 删除缓存
            return unlink($filename);
        } else {
            // 缓存数据
            $dir = dirname($filename);
            // 目录不存在则创建
            if (!is_dir($dir))
                mkdir($dir);
            $_cache[$name] =   $value;
            return file_put_contents($filename, strip_whitespace("<?php\nreturn " . var_export($value, true) . ";\n?>"));
        }
    }
    if (isset($_cache[$name]))
        return $_cache[$name];
    // 获取缓存数据
    if (is_file($filename)) {
        $value = include $filename;
        $_cache[$name] = $value;
    } else {
        $value = false;
    }
    return $value;
}

// 根据PHP各种类型变量生成唯一标识号
function to_guid_string($mix) {
    if (is_object($mix) && function_exists('spl_object_hash')) {
        return spl_object_hash($mix);
    } elseif (is_resource($mix)) {
        $mix = get_resource_type($mix) . strval($mix);
    } else {
        $mix = serialize($mix);
    }
    return md5($mix);
}

// 去除代码中的空白和注释
function strip_whitespace($content) {
    $stripStr = '';
    //分析php源码
    $tokens = token_get_all($content);
    $last_space = false;
    for ($i = 0, $j = count($tokens); $i < $j; $i++) {
        if (is_string($tokens[$i])) {
            $last_space = false;
            $stripStr .= $tokens[$i];
        } else {
            switch ($tokens[$i][0]) {
                //过滤各种PHP注释
                case T_COMMENT:
                case T_DOC_COMMENT:
                    break;
                //过滤空格
                case T_WHITESPACE:
                    if (!$last_space) {
                        $stripStr .= ' ';
                        $last_space = true;
                    }
                    break;
                case T_START_HEREDOC:
                    $stripStr .= "<<<THINK\n";
                    break;
                case T_END_HEREDOC:
                    $stripStr .= "THINK;\n";
                    for($k = $i+1; $k < $j; $k++) {
                        if(is_string($tokens[$k]) && $tokens[$k] == ";") {
                            $i = $k;
                            break;
                        } else if($tokens[$k][0] == T_CLOSE_TAG) {
                            break;
                        }
                    }
                    break;
                default:
                    $last_space = false;
                    $stripStr .= $tokens[$i][1];
            }
        }
    }
    return $stripStr;
}

//[RUNTIME]
// 编译文件
function compile($filename) {
    $content = file_get_contents($filename);
    // 替换预编译指令
    $content = preg_replace('/\/\/\[RUNTIME\](.*?)\/\/\[\/RUNTIME\]/s', '', $content);
    $content = substr(trim($content), 5);
    if ('?>' == substr($content, -2))
        $content = substr($content, 0, -2);
    return $content;
}

// 根据数组生成常量定义
function array_define($array) {
    $content = '';
    foreach ($array as $key => $val) {
        $key = strtoupper($key);
        $content .= 'if(!defined(\'' . $key . '\')) ';
        if (is_int($val) || is_float($val)) {
            $content .= "define('" . $key . "'," . $val . ");";
        } elseif (is_bool($val)) {
            $val = ($val) ? 'true' : 'false';
            $content .= "define('" . $key . "'," . $val . ");";
        } elseif (is_string($val)) {
            $content .= "define('" . $key . "','" . addslashes($val) . "');";
        }
    }
    return $content;
}

//[/RUNTIME]
// 循环创建目录
function mk_dir($dir, $mode = 0777) {
    if (is_dir($dir) || @mkdir($dir, $mode))
        return true;
    if (!mk_dir(dirname($dir), $mode))
        return false;
    return @mkdir($dir, $mode);
}

// 自动转换字符集 支持数组转换
function auto_charset($fContents, $from='gbk', $to='utf-8') {
    $from = strtoupper($from) == 'UTF8' ? 'utf-8' : $from;
    $to = strtoupper($to) == 'UTF8' ? 'utf-8' : $to;
    if (strtoupper($from) === strtoupper($to) || empty($fContents) || (is_scalar($fContents) && !is_string($fContents))) {
        //如果编码相同或者非字符串标量则不转换
        return $fContents;
    }
    if (is_string($fContents)) {
        if (function_exists('mb_convert_encoding')) {
            return mb_convert_encoding($fContents, $to, $from);
        } elseif (function_exists('iconv')) {
            return iconv($from, $to, $fContents);
        } else {
            return $fContents;
        }
    } elseif (is_array($fContents)) {
        foreach ($fContents as $key => $val) {
            $_key = auto_charset($key, $from, $to);
            $fContents[$_key] = auto_charset($val, $from, $to);
            if ($key != $_key)
                unset($fContents[$key]);
        }
        return $fContents;
    }
    else {
        return $fContents;
    }
}

// xml编码
function xml_encode($data, $encoding='utf-8', $root="think") {
    $xml = '<?xml version="1.0" encoding="' . $encoding . '"?>';
    $xml.= '<' . $root . '>';
    $xml.= data_to_xml($data);
    $xml.= '</' . $root . '>';
    return $xml;
}

function data_to_xml($data) {
    if (is_object($data)) {
        $data = get_object_vars($data);
    }
    $xml = '';
    foreach ($data as $key => $val) {
        is_numeric($key) && $key = "item id=\"$key\"";
        $xml.="<$key>";
        $xml.= ( is_array($val) || is_object($val)) ? data_to_xml($val) : $val;
        list($key, ) = explode(' ', $key);
        $xml.="</$key>";
    }
    return $xml;
}

/**
  +----------------------------------------------------------
 * Cookie 设置、获取、清除
  +----------------------------------------------------------
 * 1 获取cookie: cookie('name')
 * 2 清空当前设置前缀的所有cookie: cookie(null)
 * 3 删除指定前缀所有cookie: cookie(null,'think_') | 注：前缀将不区分大小写
 * 4 设置cookie: cookie('name','value') | 指定保存时间: cookie('name','value',3600)
 * 5 删除cookie: cookie('name',null)
  +----------------------------------------------------------
 * $option 可用设置prefix,expire,path,domain
 * 支持数组形式对参数设置:cookie('name','value',array('expire'=>1,'prefix'=>'think_'))
 * 支持query形式字符串对参数设置:cookie('name','value','prefix=tp_&expire=10000')
 */
function cookie($name, $value='', $option=null) {
    // 默认设置
    $config = array(
        'prefix' => C('COOKIE_PREFIX'), // cookie 名称前缀
        'expire' => C('COOKIE_EXPIRE'), // cookie 保存时间
        'path' => C('COOKIE_PATH'), // cookie 保存路径
        'domain' => C('COOKIE_DOMAIN'), // cookie 有效域名
    );
    // 参数设置(会覆盖黙认设置)
    if (!empty($option)) {
        if (is_numeric($option))
            $option = array('expire' => $option);
        elseif (is_string($option))
            parse_str($option, $option);
        $config = array_merge($config, array_change_key_case($option));
    }
    // 清除指定前缀的所有cookie
    if (is_null($name)) {
        if (empty($_COOKIE))
            return;
        // 要删除的cookie前缀，不指定则删除config设置的指定前缀
        $prefix = empty($value) ? $config['prefix'] : $value;
        if (!empty($prefix)) {// 如果前缀为空字符串将不作处理直接返回
            foreach ($_COOKIE as $key => $val) {
                if (0 === stripos($key, $prefix)) {
                    setcookie($key, '', time() - 3600, $config['path'], $config['domain']);
                    unset($_COOKIE[$key]);
                }
            }
        }
        return;
    }
    $name = $config['prefix'] . $name;
    if ('' === $value) {
        return isset($_COOKIE[$name]) ? $_COOKIE[$name] : null; // 获取指定Cookie
    } else {
        if (is_null($value)) {
            setcookie($name, '', time() - 3600, $config['path'], $config['domain']);
            unset($_COOKIE[$name]); // 删除指定cookie
        } else {
            // 设置cookie
            $expire = !empty($config['expire']) ? time() + intval($config['expire']) : 0;
            setcookie($name, $value, $expire, $config['path'], $config['domain']);
            $_COOKIE[$name] = $value;
        }
    }
}

function upload($model='',$path = 1,$fileSize = 0,$thumbStatus = 1,$thumbSize = 0,$allowExts = 0,$attachFields = 'attach_file'){
	if(attachTrue($_FILES[$attachFields]['name'])){
		$globalConfig = getContent('cms.config.php','.');
		$globalAttachSize = intval($globalConfig['global_attach_size']);
		$globalAttachSuffix = $globalConfig['global_attach_suffix'];
		$dot = '/';
		$setFolder = empty($model) ?'file/': $model .$dot ;
		$setUserPath = empty($path) ?'': makeFolderName($path) ;
		$finalPath = UPLOAD_PATH.$dot.$setFolder.$setUserPath;
		if(!is_dir($finalPath)){
			@mk_dir($finalPath);
		}
		import("ORG.Net.UploadFile");
		$upload = new UploadFile();
		$upload->maxSize = empty($fileSize) ?$globalAttachSize : intval($fileSize) ;
		$upload->allowExts = empty($allowExts) ?explode(',',$globalAttachSuffix) : explode(',',$allowExts) ;
		$upload->savePath = $finalPath;
		$upload->saveRule = 'uniqid';
		switch ($model){
			case 'News':
				$globalThumbStatus = intval($globalConfig['news_thumb_status']);;
				$globalThumbSize = trim($globalConfig['news_thumb_size']);
				break;
			case 'Product':
				$globalThumbStatus = intval($globalConfig['product_thumb_status']);;
				$globalThumbSize = trim($globalConfig['product_thumb_size']);
				break;
			case 'Download':
				$globalThumbStatus = intval($globalConfig['download_thumb_status']);;
				$globalThumbSize = trim($globalConfig['download_thumb_size']);
				break;
			default:
				$globalThumbStatus = intval($globalConfig['global_thumb_status']);;
				$globalThumbSize = trim($globalConfig['global_thumb_size']);
				break;
		}
		$globalThumbSizeExplode = explode(',',$globalThumbSize);
		$userThumbSizeExplode = explode(',',$thumbSize);
		if(!empty($globalThumbStatus) &&!empty($thumbStatus)){
			$upload->thumb = true;
		}else{
			$upload->thumb = false;
		}
		if(!empty($thumbStatus) &&!empty($thumbSize)){
			$upload->thumbMaxWidth = $userThumbSizeExplode[0] ;
			$upload->thumbMaxHeight = $userThumbSizeExplode[1] ;
		}else{
			$upload->thumbMaxWidth = $globalThumbSizeExplode[0] ;
			$upload->thumbMaxHeight = $globalThumbSizeExplode[1] ;
		}
		$upload->thumbPrefix = '';
		$upload->thumbSuffix = '_s';
		if(!$upload->upload()){
			echo ($upload->getErrorMsg());
		}else{
			return $upload->getUploadFileInfo();
		}
	}
}

function isEnglist($param){
	if (!eregi("^[A-Z0-9]{1,26}$",$param)) {
		return false;
	}else {
		return true;
	}
}

function safe_b64encode($string){
	$data = base64_encode($string);
	$data = str_replace(array('+','/','='),array('-','_',''),$data);
	return $data;
}

function safe_b64decode($string){
	$data = str_replace(array('-','_'),array('+','/'),$string);
	$mod4 = strlen($data) %4;
	if ($mod4){
		$data .= substr('====',$mod4);
	}
	return base64_decode($data);
}

function dHtml($string){
	if(is_array($string)){
		foreach($string as $key =>$val){
			$string[$key] = dhtml($val);
		}
	}else{
		$string = str_replace(array('"','\'','<','>',"\t","\r",'{','}'),array('&quot;','&#39;','&lt;','&gt;','&nbsp;&nbsp;','','&#123;','&#125;'),$string);
	}
	return $string;
}

function cvHttp($http){
	if ($http == ''){
		return '';
	}else{
		$link = substr($http,0,7) == "http://"?$http : 'http://'.$http;
		return $link;
	}
}

function htmlCv($string){
	$pattern = array('/(javascript|jscript|js|vbscript|vbs|about):/i','/on(mouse|exit|error|click|dblclick|key|load|unload|change|move|submit|reset|cut|copy|select|start|stop)/i','/<script([^>]*)>/i','/<iframe([^>]*)>/i','/<frame([^>]*)>/i','/<link([^>]*)>/i','/@import/i');
	$replace = array('','','&lt;script${1}&gt;','&lt;iframe${1}&gt;','&lt;frame${1}&gt;','&lt;link${1}&gt;','');
	$string = preg_replace($pattern,$replace,$string);
	$string = str_replace(array('</script>','</iframe>','&#'),array('&lt;/script&gt;','&lt;/iframe&gt;','&amp;#'),$string);
	return stripslashes($string);
}

function splitThumb($attach){
	$splitAttach = explode('.',$attach);
	$thumb =  $splitAttach[0].'_s.'.$splitAttach[1];
	return $thumb;
}

function formatAttachPath($path,$find = './Uploads/',$replace =''){
	if(!empty($path)){
		return str_replace($find,$replace,$path);
	}
}

function string2checked($sring,$param,$split = ','){
	$splitParam = explode($split,$sring);
	if (in_array($param,$splitParam)) $result = ' checked=checked';
	return $result;
}

function array2string($data = array(),$split = ','){
	if (is_array($data)) {
		return implode($split,$data);
	}else{
		return $data;
	}
}

function selected($string,$param =1,$type = 'select'){
	$returnString = '';
	if ($string == $param){
		$returnString = $type == 'select'?'selected="selected"': 'checked="checked"';
	}
	return $returnString;
}

function a2bc($a,$param =1,$b = '',$c = ''){
	$returnString = $a == $param ?$b : $c;
	return $returnString;
}

function disable($param,$typeParam =1,$stringParam = array(' disabled="disabled"','')){
	return $param == $typeParam ?$stringParam[0] : '';
}

function getMethod(){
	return  strtolower($_SERVER['REQUEST_METHOD']);
}

function getDir($dirname){
	$files = array();
	if(is_dir($dirname)){
		$fileHander = opendir($dirname);
		while (($file = readdir($fileHander)) !== false){
			$filepath = $dirname .'/'.$file;
			if (strcmp($file,'.') == 0 ||strcmp($file,'..') == 0 ||is_file($filepath)){
				continue;
			}
			$files[] = auto_charset($file,'GBK','UTF8');;
		}
		closedir($fileHander);
	}else{
		$files = false;
	}
	return $files;
}

function getFile($dirname){
	$files = array();
	if(is_dir($dirname)){
		$fileHander = opendir($dirname);
		while (($file = readdir($fileHander)) !== false){
			$filepath = $dirname .'/'.$file;
			if (strcmp($file,'.') == 0 ||strcmp($file,'..') == 0 ||is_dir($filepath) ){
				continue;
			}
			$files[] = auto_charset($file,'GBK','UTF8');;
		}
		closedir($fileHander);
	}else{
		$files = false;
	}
	return $files;
}

function formatQuery($string){
	return $string;
}

function makeFolderName($type =0,$prefix=1){
	$setPrefix = empty($prefix) ?'': '/';
	switch ($type){
		case 1: $result = date('Ym').$setPrefix ;break ;
		case 2: $result = date('Y-m').$setPrefix ;break ;
		case 3: $result = date('Ymd').$setPrefix ;break ;
		case 4: $result = date('Y-m-d').$setPrefix ;break ;
		case 5: $result = date('Y').$setPrefix ;break ;
		default: $result = date('Ym').$setPrefix ;break ;
	}
	return $result;
}

function attachTrue($fields,$trueNum = 0){
	if(is_array($fields)){
		foreach ($fields as $value) {
			if(!empty($value)){
				$trueNum = $trueNum+1;
			}
		}
	}else {
		if(empty($fields)){
			$trueNum = 0;
		}else {
			$trueNum = 1;
		}
	}
	return $trueNum;
}

function statusIcon($data = 1,$status = 1,$folder = 0,$icon = 'hidden.png',$alt = '显示',$condition = 'eq'){
	$strStart = '<img src="';
	$strMiddle = $folder.'/Public/Admin/'.$icon;
	$strEnd = '" alt="'.$alt.'" align="absmiddle" />';
	if ($condition == 'eq'){
		if($data == $status){
			return $strStart.$strMiddle.$strEnd;
		}
	}elseif($condition == 'neq'){
		if($data != (int)$status){
			return $strStart .$strMiddle .$strEnd;
		}
	}
}

function attachStatus($data = 1,$status = 1,$folder = 0,$icon = 'hidden.png',$alt = '显示'){
	$string = '<img src="'.$folder.'/Public/Admin/'.$icon.'" alt="'.$alt.'" align="absmiddle" />';
	switch ($status){
		case '1':
		$returnString = !empty($data) ?$string : '';
		break;
		case '0':
		$returnString = empty($data) ?$string : '';
		break;
		default:
		$returnString = $data == $status ?$string : '';
		break;
	}
	return $returnString;
}

function str2time($string,$time = 0){
	if(!empty($string)){
		return strtotime($string);
	}
}

function createStyle($data,$style = array(),$styleArray = array()){
	$dataStyle = '';
	if($data){
		if(strtolower($data['style_color']) != '#ffffff'&&!empty($data['style_color'])){
			$style['color'] = $data['style_color'];
			$styleArray[] = 'color:'.$data['style_color'];
		}
		if(!empty($data['style_bold'])){
			$style['bold'] = $data['style_bold'];
			$styleArray[] = 'font-weight:bold';
		}
		if(!empty($data['style_underline'])){
			$style['underline'] = $data['style_underline'];
			$styleArray[] = 'TEXT-DECORATION: underline';
		}
		$dataStyle['title_style'] = empty($styleArray) ?'': implode(';',$styleArray);
		$dataStyle['title_style_serialize'] = empty($style) ?'': serialize($style);
	}
	return $dataStyle;
}

function string2Checkbox($string = '',$emptyString = '未定义'){
	if(empty($string)){
		$resultString = $emptyString;
	}else{
		$stringSplit = explode(',',$string);
		foreach ($stringSplit as $row){
			$resultString .= '<input name="run_system[]" type="checkbox" id="run_system[]" value="'.$row.'"/>'.$row;
		}
	}
	return $resultString;
}

function string2checkboxSelect($string = '',$param = '',$emptyString = '未定义'){
	if(empty($string)){
		$resultString = $emptyString;
	}else{
		$stringSplit = explode(',',$string);
		foreach ($stringSplit as $row){
			if(in_array($row,explode(',',$param))){
				$resultString.='<input name="run_system[]" type="checkbox" id="run_system[]" value="'.$row.'" checked="checked"/> '.$row.' ';
			}else{
				$resultString.='<input name="run_system[]" type="checkbox" id="run_system[]" value="'.$row.'"/> '.$row.' ';
			}
		}
	}
	return $resultString;
}

function setOrder($orderFields = 0,$selectField = 'id',$orderType = 'DESC',$join = NULL){
	$orderValue = empty($join) ?'id': 'a.id';
	foreach ((array)$orderFields as $value){
		if(is_array($value)){
			if($value[0] == $selectField){
				$orderValue = $value[1];
			}
		}else{
			if($value == $selectField){
				$orderValue = $value;
			}
		}
	}
	$orderByValue = empty($orderValue) ?'id': $orderValue ;
	$orderByType = empty($orderType) ?'DESC': $orderType ;
	return $orderByValue.' '.$orderByType;
}

function setTime($time = 0,$time1 = 0){
	$createTime = empty($time) ?0 : strtotime($time) ;
	$createTime1 = strtotime($time1) ;
	if(!empty($time1)){
		return $createTime.','.$createTime1;
	}
}

function setViewCount($count = 0,$count1 = 0){
	$viewCount = empty($count) ?0 : $count ;
	$viewCount1 = $count1 ;
	if(!empty($count1)){
		return $viewCount.','.$viewCount1;
	}
}

function styleSelected($titelStyle = 0,$type = 'color',$returnString = 'checked="checked"'){
	$result = '';
	if(!empty($titelStyle)){
		$unserialize = unserialize($titelStyle);
		switch ($type) {
			case 'color':
				$result = empty($unserialize['color']) ?'#ffffff': $unserialize['color'];
				break;
			case 'bold':
				$result = empty($unserialize['bold']) ?'': $returnString ;
				break;
			case 'underline':
				$result = empty($unserialize['underline']) ?'': $returnString ;
				break;
			default:
				break;
		}
	}
	return $result;
}
function formatTags($data){
	if(!empty($data)){
		$tagCount = 0;
		$tag = explode(',',$data);
		foreach ($tag as $value){
			if(!empty($value)){
				$tags[] = $value;
				$tagCount ++;
				if($tagCount >4) {
					unset($tag);
					break;
				}
			}
		}
		return implode(',',$tags);
	}else {
		return '';
	}
}

function tagsGet($tags,$module = ''){
	if(!empty($tags)){
		$str = '';
		$format = explode(',',$tags);
		foreach ((array)$format as $row){
			$str .= '<a href="'.U("Tags/getList",array('module'=>$module,'name'=>urlencode($row))).'" target="_blank">'.$row.'</a> ';
		}
		echo $str;
	}
}

function fileExit($file){
	return file_exists($file) ?true : false ;
}

function explodeRole($permission,$inData = '',$field = 'role_permission'){
	if(!empty($permission)){
		$str = '';
		$pmArray = explode('|',$permission);
		foreach ((array)$pmArray as $row){
			$subRow = explode('=',$row);
			if(in_array($subRow[1],explode(',',$inData))){
				$str .= '<span style="float:left; width:20%;"><input name="'.$field.'[]" type="checkbox" id="'.$field.'[]" value="'.trim($subRow[1]).'" class="checkbox" checked="checked"/>'.trim($subRow[0]).'</span>';
			}else{
				$str .= '<span style="float:left; width:20%;"><input name="'.$field.'[]" type="checkbox" id="'.$field.'[]" value="'.trim($subRow[1]).'" class="checkbox"/>'.trim($subRow[0]).'</span>';
			}
		}
		return $str;
	}
}

function splitsql($sql) {
	$sql = str_replace("\r","\n",$sql);
	$returnSql = array();
	$num = 0;
	$queryArray = explode(";\n",trim($sql));
	unset($sql);
	foreach($queryArray as $query) {
		$queries = explode("\n",trim($query));
		foreach($queries as $query) {
			$returnSql[$num] .= $query[0] == "#"||$query[0].$query[1] == '--'?NULL : $query;
		}
		$num ++;
	}
	return($returnSql);
}

if(!function_exists('file_put_contents')) {
	function file_put_contents($filename,$data) {
		if($fp = @fopen($filename,'w') === false){
			exit($filename.'if not writeable');
		}else {
			$bytes = fwrite($fp,$contents);
			fclose($fp);
		}
	}
}

function writeCache($name = NULL,$data = NULL,$order = '',$where = '',$path = './Data/'){
	if(empty($data)){
		$dao = M($name);
		$getData = $dao->where($where)->order($order)->findAll();
		$fileName = strtolower($name);
		$writeData = "<?php\n/** \n* cache.{$fileName}.php\n*\n* @package      	Y-city Corp\n* @author          Y-city <y_city@qeeyang.com>\n* @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)\n* @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $\n   \n*/\n\nif (!defined('YCITYCMS')) exit();\n\nreturn ";
		$writeData .= var_export($getData,true);
		$writeData .= ';';
	}else{
		$writeData = $data;
	}
	$writeFile = 'cache.'.$fileName.'.php';
	@file_put_contents($path .$writeFile,$writeData);
	return $writeData;
}

function configCache($id = 1,$data = NULL,$file = NULL,$path = NULL){
	$writePath = empty($path) ?'./': $path ;
	$writeFile = empty($file) ?'fcms.config.php': $file ;
	$writeDataHeader = "<?php\n/** \n* cache.{$fileName}.php\n*\n* @package      	Y-city Corp\n* @author          Y-city <y_city@qeeyang.com>\n* @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)\n* @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $\n*/\n\nif (!defined('YCITYCMS')) exit();\n\nreturn array(\r\n";
	$writeDataFooter =  ');';
	if(empty($data)){
		$configDao = D('Config');
		$getConfig = $configDao->where("id=1")->find();
		foreach((array)$getConfig as $key =>$value){
			if(strtolower($value) == "true"||strtolower($value) == "false"||is_numeric($value)){
				$data .= "    '".$key."' => ".dadds($value).",\r\n";
			}else{
				$data .= "    '".$key."' => '".dadds($value)."',\r\n";
			}
		}
		$writeData = $writeDataHeader .$data .$writeDataFooter;
	}else {
		$writeData = $writeDataHeader .$data .$writeDataFooter;
	}
	@file_put_contents($writePath .$writeFile,$writeData);
	return $getConfig;
}

function clearCore(){
	delFile('./'.APP_PATH.'/Runtime/Cache/Admin');
	delFile('./'.APP_PATH.'/Runtime/Cache/Home');
	delFile('./'.APP_PATH.'/Runtime/Cache/Member');
	delFile('./'.APP_PATH.'/Runtime/Data');
	delFile('./'.APP_PATH.'/Runtime/Logs');
	delFile('./'.APP_PATH.'/Runtime/Temp');
	@unlink('./'.APP_PATH.'/Runtime/~app.php');
	@unlink('./'.APP_PATH.'/Runtime/~runtime.php');
}

function delDir($directory,$subdir=true){
	if (is_dir($directory) != false){
		$handle = opendir($directory);
		while (($file = readdir($handle)) !== false){
			if ($file != "."&&$file != ".."){
				is_dir("$directory/$file")?
				delDir("$directory/$file"):
				unlink("$directory/$file");
			}
		}
		if (readdir($handle) == false){
			closedir($handle);
			rmdir($directory);
		}
	}
}

function delFile($directory){
	if (is_dir($directory) != false){
		$handle = opendir($directory);
		while (($file = readdir($handle)) !== false){
			if ($file != "."&&$file != ".."&&is_file("$directory/$file")){
				unlink("$directory/$file");
			}
		}
		closedir($handle);
	}
}

function getCache($name = '',$root = './Data/',$returnData = ''){
	$formatName = strtolower($name);
	$getFile = $root .'cache.'.$formatName .'.php';
	if(fileExit($getFile)){
		$returnData = @require($getFile);
	}else{
		switch ($formatName){
			case 'adminrole': $returnData = writeCache('AdminRole') ;break;
			case 'config': $returnData = configCache(1);break;
			case 'category': $returnData = writeCache('Category',0,'display_order DESC,id DESC') ;break;
			case 'link': $returnData = writeCache('Link',0,'display_order DESC,id DESC');break;
			case 'menu': $returnData = writeCache('Menu',0,'display_order DESC,id DESC');break;
			case 'module': $returnData = writeCache('Module');break;
		}
	}
	return $returnData;
}

function getContent($file = NULL,$path = NULL){
	$gFile = empty($file) ?exit('error function getFile: file is LOST') : $file ;
	$getPath = empty($path) ?DATA : $path ;
	$getFile = $getPath .'/'.$gFile;
	if(!file_exists($getFile)) die("file:$getFile is LOST");
	return @require($getFile);
}

function putContent($data,$file = NULL,$path = NULL){
	$pFile = empty($file) ?exit('error function getFile: file is LOST') : $file ;
	$pPath = empty($path) ?DATA : $path ;
	if ($path != '.'){
		if(!is_dir($pPath)){
			@mk_dir($pPath);
		}
	}
	$putFile = $pPath.'/'.$pFile;
	@file_put_contents($putFile,$data);
}

function xCopy($source,$dest,$child = 0){
	if(!is_dir($source)){
		echo("Error:the $source is not a direction!");
		exit();
	}
	if(!is_dir($dest)){
		@mk_dir($dest,0777);
	}
	$fileHander = opendir($source);
	while (($file = readdir($fileHander)) !== false){
		$filepath = $source .'/'.$file;
		if (strcmp($file,'.') == 0 ||strcmp($file,'..') == 0 ){
			continue;
		}
		if(is_dir($filepath)){
			if($child) xCopy($source."/".$file,$dest."/".$file,$child);
		}else{
			copy($source."/".$file,$dest."/".$file);
		}
	}
}

function copyDir($source,$dest,$child = 0){
	if(!is_dir($source)){
		echo("Error:the $source is not a direction!");
		exit();
	}
	if(!is_dir($dest)){
		@mk_dir($dest,0777);
	}
	$fileHander = opendir($source);
	while (($file = readdir($fileHander)) !== false){
		$filepath = $source .'/'.$file;
		if (strcmp($file,'.') == 0 ||strcmp($file,'..') == 0 ) continue;
		if(is_dir($filepath)){
			if($child) xCopy($source."/".$file,$dest."/".$file,$child);
		}
	}
}

function getCategory($array,$parentid = 0,$level = 0,$add = 2,$repeat = '　') {
	$str_repeat = '';
	if($level) {
		for($j=0;$j<$level;$j++) {
		$str_repeat .= $repeat;
		}
	}
	$newarray = array();
	$temparray = array();
	foreach((array)$array as $v) {
		if($v['parent_id'] == $parentid) {
			$newarray[] = array(
				'id'=>$v['id'],
				'module'=>$v['module'],
				'title'=>$v['title'],
				'parent_id'=>$v['parent_id'],
                'category_id'=>$v['category_id'],
				'level'=>$level,
				'display_order'=>$v['display_order'],
				'description'=>$v['description'],
				'status'=>$v['status'],
				'create_time'=>$v['create_time'],
				'update_time'=>$v['create_time'],
				'status'=>$v['status'],
				'protected'=>$v['protected'],
				'str_repeat'=>$str_repeat
			);
			$temparray = getCategory($array,$v['id'],($level +$add));
			if($temparray) {
				$newarray = array_merge($newarray,$temparray);
			}
		}
	}
	return $newarray;
}

function bgStyle($data,$param = 1,$color = '#00F'){
	if($data == $param){
		return $color;
	}
}

function buildSelect($data,$parentId = 0,$selected = 0,$str = ''){
	$formatArray = getCategory($data,$parentId);
	foreach ((array)$formatArray as $row){
		if($row['id'] == $selected){
			$str .= '<option value="'.$row['id'] .'" selected="selected">'.$row['str_repeat'] .$row['title'] .'</option>';
		}else{
			$str .= '<option value="'.$row['id'] .'">'.$row['str_repeat'] .$row['title'] .'</option>';
		}
	}
	return $str;
}

function moduleTitle($name = '',$file = NULL,$path = NULL){
	$getData = getCache('Module');
	foreach ((array)$getData as $key=>$value){
		if($value['module_name'] == $name){
			echo $value['module_title'];
		}
	}
}

function dadds($str){
	$content = (!get_magic_quotes_gpc ()) ?addslashes($str) : $str;
	return trim($content);
}

function categoryModule($data){
	foreach ((array)$data as $row){
		if(in_array($row['module_name'],array('News','Product','Download','Job','Link','Ad'))){
			$datas[] = $row;
		}
	}
	return $datas;
}

function selectCategory($slid){
	$category = getCache('Category');
	foreach ((array)$category as $c){
		if($c['id'] == $slid){
			echo $c['title'];
		}
	}
}

function selectCategoryId($slid){
	$category = getCache('Category');
	foreach ((array)$category as $c){
		if($c['id'] == $slid){
			echo $c['id'];
		}
	}
}

function explodeUrl($url,$img = ''){
	$str = empty($url) ?'': explode("\n",$url);
	foreach ((array)$str as $key=>$row){
		$key = $key+1;
		$result .= "<a href='$row' target='_blank'><img src='$img' align='absmiddle'/>下载地址 $key</a><br />";
	}
	echo $result;
}

function sysmd5($str,$key='',$type='sha1'){
	$key =  $key ?  $key : C('ADMIN_ACCESS');
	return hash ( $type, $str.$key );
}

/**
* @param string $string 原文或者密文
* @param string $operation 操作(ENCODE | DECODE), 默认为 DECODE
* @param string $key 密钥
* @param int $expiry 密文有效期, 加密时候有效， 单位 秒，0 为永久有效
* @return string 处理后的 原文或者 经过 base64_encode 处理后的密文
*
* @example
*
*  $a = authcode('abc', 'ENCODE', 'key');
*  $b = authcode($a, 'DECODE', 'key');  // $b(abc)
*
*  $a = authcode('abc', 'ENCODE', 'key', 3600);
*  $b = authcode('abc', 'DECODE', 'key'); // 在一个小时内，$b(abc)，否则 $b 为空
*/
function authcode($string, $operation = 'DECODE', $key = '', $expiry = 0) 
{
	$ckey_length = 4;   
	// 随机密钥长度 取值 0-32;
	// 加入随机密钥，可以令密文无任何规律，即便是原文和密钥完全相同，加密结果也会每次不同，增大破解难度。
	// 取值越大，密文变动规律越大，密文变化 = 16 的 $ckey_length 次方
	// 当此值为 0 时，则不产生随机密钥


	$keya = md5(substr($key, 0, 16));
	$keyb = md5(substr($key, 16, 16));
	$keyc = $ckey_length ? ($operation == 'DECODE' ? substr($string, 0, $ckey_length): substr(md5(microtime()), -$ckey_length)) : '';

	$cryptkey = $keya.md5($keya.$keyc);
	$key_length = strlen($cryptkey);

	$string = $operation == 'DECODE' ? base64_decode(substr($string, $ckey_length)) : sprintf('%010d', $expiry ? $expiry + time() : 0).substr(md5($string.$keyb), 0, 16).$string;
	$string_length = strlen($string);

	$result = '';
	$box = range(0, 255);

	$rndkey = array();
	for($i = 0; $i <= 255; $i++) 
	{
		$rndkey[$i] = ord($cryptkey[$i % $key_length]);
	}

	for($j = $i = 0; $i < 256; $i++) 
	{
		$j = ($j + $box[$i] + $rndkey[$i]) % 256;
		$tmp = $box[$i];
		$box[$i] = $box[$j];
		$box[$j] = $tmp;
	}

	for($a = $j = $i = 0; $i < $string_length; $i++) 
	{
		$a = ($a + 1) % 256;
		$j = ($j + $box[$a]) % 256;
		$tmp = $box[$a];
		$box[$a] = $box[$j];
		$box[$j] = $tmp;
		$result .= chr(ord($string[$i]) ^ ($box[($box[$a] + $box[$j]) % 256]));
	}

	if($operation == 'DECODE') 
	{
		if((substr($result, 0, 10) == 0 || substr($result, 0, 10) - time() > 0) && substr($result, 10, 16) == substr(md5(substr($result, 26).$keyb), 0, 16)) 
		{
			return substr($result, 26);
		} 
		else 
		{
			return '';
		}
	} 
	else 
	{
		return $keyc.str_replace('=', '', base64_encode($result));
	}
}



?>