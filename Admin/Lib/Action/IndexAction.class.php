<?php 
/**
 * 
 * Index(后台首页)
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */

class IndexAction extends BaseAction{
    function _initialize()
    {
        parent::_initialize();
        $adminId = parent::_getAdminUid();
        $username = parent::_getAdminName();
        $roleId = parent::_getRoleId();
		$roleName = parent::_getRoleName();
		$realName = parent::_getRealName();
        // if (!$roleId || !$adminId) $this->redirect(U('Public/login'));
        $this->assign('adminId', $adminId);
        $this->assign('username', $username);
        $this->assign('security', $security);
		$this->assign('roleName', $roleName);
		$this->assign('realName', $realName);
        parent::_checkPermission();
    }

    /**
     * 后台管理首页
     *
     */
    public function index()
    {
        $data['serverSoft'] = $_SERVER['SERVER_SOFTWARE'];
        $data['serverOs'] = PHP_OS;
        $data['phpVersion'] = PHP_VERSION;
        $data['phpUploadSize'] = ini_get('file_uploads') ? ini_get('upload_max_filesize'): '禁止上传';
        $data['serverUri'] = $_SERVER['SERVER_NAME'];
        $data['maxExcuteTime'] = ini_get('max_execution_time').' 秒';
        $data['maxExcuteMemory'] = ini_get('memory_limit');
        $data['phpGpc'] = get_magic_quotes_gpc() ? '开启' : '关闭';;
        $data['excuteUseMemory'] =  function_exists('memory_get_usage') ? byte_format(memory_get_usage()) : '未知';
        $dao = new Model();
        $getMysqlVersion = $dao->query('select version()');
        $data['mysqlVersion'] = $getMysqlVersion[0]['version()'];
        $data['sys_version'] = $this->sys_version;
        $update = safe_b64encode(serialize($data));
        //获取备忘信息
        //$data['notepad'] = M('Admin')->Where("id=".parent::_getAdminUid())->find();
		//获取用户信息
		$user = D('User')->where('id='.parent::_getAdminUid())->find();//获取用户
		$this->assign('user', $user);
		//统计信息
		$data['statNews'] = D('News')->count();
		$data['statProduct'] = D('Product')->count();
		$data['statDownload'] = D('Download')->count();
		$data['statNotice'] = D('Notice')->count();
		$data['statPage'] = D('Page')->count();
		$data['statComment'] = D('Comment')->count();
		$data['statFeedback'] = D('Feedback')->count();
		$data['statMember'] = D('Member')->count();
		$data['statCategory'] = D('Category')->count();
        $this->assign($data);
        $this->assign('update', $update);
        parent::_sysLog('index');
        $this->display();
    }

    /**
     * 更新备忘信息
     *
     */
    /*public function updateNotepad()
    {
        $notepad = substr($_POST['notepad'], 0, 2000);
        $dao = M('Admin');
        if($daoCreate = $dao->create())
        {
            $dao->notepad = $notepad;
            $dao->id = parent::_getAdminUid();
            $daoSave = $dao->save();
            if(false !== $daoSave)
            {
               die('ok');
            }else
            {
                die('更新失败');
            }
        }else
        {
           die($dao->getError());
        }
    }*/
}
