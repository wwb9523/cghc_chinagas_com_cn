<?php
/**
 * 
 * Public(公共)
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */

class PublicAction extends Action{
    private $adminId;
    private $roleId;
    function _initialize()
    {
        $this->adminId = Session::get('adminId');
        $this->roleId = Session::get('roleId');
    }

    /**
     * 登录页
     *
     */
    public function login()
    {
        $jumpUri = safe_b64decode($_GET['jumpUri']);
        $this->assign('jumpUri', $jumpUri);
        $this->display();
    }

    /**
     * 提交登录
     *
     */
    public function doLogin()
    {
		Load('extend');//加载Thinkphp扩展函数库
        $username = trim($_POST['username']);
        $password = trim($_POST['password']);
        $verifyCode = trim($_POST['verifyCode']);
        if(empty($username) || empty($password)){
            //self::_message('error', '用户名，密码必须填写', U('Public/login'));
            echo 'emptyInfo';
            exit();
        }elseif(md5($verifyCode) != Session::get('verify'))
        {
            //self::_message('error', '验证码错误', U('Public/login'));
            echo 'errorVerifyCode';
            exit();
        }

        $condition = array();
        $dao = D('User');
        $condition["username"] = $username;
        $record = $dao->where($condition)->find();
        //echo $dao->getLastSql();
        if(false == $record)
        {
            echo 'usernameFalse';
            exit();
            //self::_message('error', '用户信息不存在，登录失败');
        }else{
            if ($record['password'] != md5($password)){
                echo 'passwordFalse';
                exit();
                //self::_message('error', '密码错误', U('Public/login'));
            }
            if ($record['role_id'] == 2) {
                echo 'roleFalse';
                exit();
                //self::_message('error', '当前用户被限制登录，请联系管理员', U('Public/login'));
            }
            $roleDao = D('Role');
            $getRole = $roleDao->where("id={$record['role_id']}")->find();
            if(empty($getRole)){
                echo 'roleLost';
                exit();
            }
            //检测用户组权限，如果是all 或者是 1 则记录SESSION ，权限检测时跳过读取数据库
            if($getRole['role_permission'] == 'all' || $record['role_id'] == 1){
                Session::set('permission', 'all');
            }
            Session::set('username', $record['username']);
            Session::set('adminId', $record['id']);
            Session::set('roleId', $record['role_id']);
            Session::set('adminAccess', C('ADMIN_ACCESS'));
			Session::set('roleName', $getRole['role_name']);
			Session::set('realName', $record['realname']);

            /**
             * 记录日志
             */
            $getConfig = getCache('cms.config.php', './');
            $sysLog = $getConfig['sys_log'];
            $sysLogExt = $getConfig['sys_log_ext'];
            if(!empty($sysLog) && in_array('login', explode(',', $sysLogExt))){
                Load('extend');
                $dao = D('AdminLog');
                $dao->user_id = intval($record['id']);
                $dao->username = $username;
                $dao->action = '登录系统';
                $dao->ip = get_client_ip();
                $dao->create_time = time();
                $daoAdd = $dao->add();
                $lastSql = $dao->getLastSql();
                if(false === $daoAdd) die("日志写入失败:{$lastSql}");

            }
			$dao = D('User');
			$data = array();
			$data['id'] = intval($record['id']);
			$data['last_login_time'] = time();
			$data['last_ip'] = get_client_ip();
			$data['login_count'] = array('exp','login_count+1');
			$dao->save($data);

            echo 'loginSuccess';
            exit();
            //self::_message('success', '登录成功', U('Index/index'), 1);
        }
    }

    /**
     * 验证码
     *
     */
    public function verify()
    {
        import('ORG.Util.Image');
        if(isset($_REQUEST['adv']))
        {
            Image::showAdvVerify();
        }
        else
        {
            Image::buildImageVerify();
       }
    }

    /**
     * 输出信息
     *
     * @param unknown_type $type
     * @param unknown_type $content
     * @param unknown_type $jumpUrl
     * @param unknown_type $time
     * @param unknown_type $ajax
     */
    public function _message($type = 'success', $content = '更新成功', $jumpUrl = __URL__, $time = 3, $ajax = false)
    {
        $jumpUrl = empty($jumpUrl) ? __URL__ : $jumpUrl ;
        if($type == 'success'){
            $this->assign('jumpUrl', $jumpUrl);
            $this->assign('waitSecond', $time);
            $this->success($content, $ajax);
        }elseif($type == 'error'){
            $this->assign('jumpUrl', $jumpUrl);
            $this->assign('waitSecond', $time);
            $this->error($content, $ajax);
        }elseif($type == 'redirect'){
            $this->redirect($jumpUrl);
        }
    }

    /**
     * 无权限操作显示页
     *
     */
    public function accessFalse()
    {
        $this->display();
    }

    /**
     * 退出登录
     *
     */
    public function logout()
    {
        if(!empty($this->adminId)) {
            Session::destroy();
            cookie('tempTheme', null);
            self::_message('success', '登出成功', U('Public/login'));
        }else {
            self::_message('success', '已经退出登录', U('Public/login'));
        }
    }
}
