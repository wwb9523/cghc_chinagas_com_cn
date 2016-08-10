<?php 
/**
 * 
 * Notice(公告)
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */

class NoticeAction extends BaseAction
{
    public $dao;
	function _initialize()
	{
		parent::_initialize();
		$this->dao = D('News');
	}
	
	/**
	 * 列表
	 *
	 */
	public function index()
	{
		parent::_checkPermission();
		$condition = array();
		$title = formatQuery($_GET['title']);
		$orderBy = trim($_GET['orderBy']);
		$orderType = trim($_GET['orderType']);
		$recommend = intval($_GET['recommend']);
		$categoryId = intval($_GET['categoryId']);
		$userId = intval($_GET['userId']);
		$status =  intval($_GET['status']);
		$istop = intval($_GET['istop']);
		$createTime = trim($_GET['createTime']);
		$createTime1 = trim($_GET['createTime1']);
		$viewCount = intval($_GET['viewCount']);
		$viewCount1 = intval($_GET['viewCount1']);
		$setOrder = setOrder(array(array('viewCount', 'a.view_count'), 'a.id'), $orderBy, $orderType, 'a');
		$setTime = setTime($createTime, $createTime1);
		$setViewCount = setViewCount($viewCount, $viewCount1);
		$pageSize = intval($_GET['pageSize']);
		$title &&  $condition['a.title'] = array('like', '%'.$title.'%');
		$recommend && $condition['a.recommend'] = array('eq', $recommend);
		$categoryId &&  $condition['a.category_id'] = array('eq', $categoryId);
		$status && $condition['a.status'] = array('eq', $status);
		$userId && $condition['a.user_id'] = array('eq', $userId);
		$istop && $condition['a.istop'] = array('eq', $istop);
		$createTime1 && $condition['a.create_time'] = array('between', $setTime);
		$viewCount1 && $condition['a.view_count'] = array('between', $setViewCount);
		$count = $this->dao->where($condition)->count();
		$listRows = empty($pageSize) || $pageSize > 100 ? 15 : $pageSize ;
		$p = new page($count, $listRows);
		$condition['b.module']='Notice';
		$dataList = $this->dao->Table(C('DB_PREFIX').'news a')->Join(C('DB_PREFIX').'category b on a.category_id=b.id')->where($condition)->Field('a.*,b.title as category')->Order($setOrder)->Where($condition)->Limit($p->firstRow.','.$p->listRows)->findAll();
		$page = $p->show();
		if ($list !== false)
		{
			$this->assign('pageBar', $page);
			$this->assign('dataList', $dataList);
		}
		parent::_sysLog('index');
		$this->display();
		/*parent::_checkPermission();
		$condition = array();
		$title = formatQuery($_GET['title']);
		$orderBy = trim($_GET['orderBy']);
		$orderType = trim($_GET['orderType']);
		$status =  intval($_GET['status']);
		$istop = intval($_GET['istop']);
		$viewCount = intval($_GET['viewCount']);
		$viewCount1 = intval($_GET['viewCount1']);
		$setViewCount = setViewCount($viewCount, $viewCount1);
		$setOrder = setOrder(array(array('viewCount', 'view_count'), 'id'), $orderBy, $orderType);
		$setTime = setTime($createTime, $createTime1);
		$pageSize = intval($_GET['pageSize']);
		$title &&  $condition['title'] = array('like', '%'.$title.'%');
		$status && $condition['status'] = array('eq', $status);
		$istop && $condition['istop'] = array('eq', $istop);
		$viewCount1 && $condition['view_count'] = array('between', $setViewCount);
		$count = $this->dao->where($condition)->count();
		$listRows = empty($pageSize) || $pageSize > 100 ? 15 : $pageSize ;
		$p = new page($count, $listRows);
		$dataList = $this->dao->Where($condition)->Order($setOrder)->Limit($p->firstRow.','.$p->listRows)->findAll();
		$page = $p->show();
		if ($dataList !== false) {
			$this->assign('pageBar', $page);
			$this->assign('dataList', $dataList);
		}
		parent::_sysLog('index');
		$this->display();*/
	}
	
	/**
	 * 录入
	 *
	 */
	public function insert()
	{
		parent::_checkPermission();
		$this->display();
	}
	
	/**
	 * 提交录入
	 *
	 */
	public function doInsert()
	{ 
		dump("jinlaile ");
		parent::_checkPermission('News_insert');
		parent::_setMethod('post');
		if($daoCreate = $this->dao->create())
		{
			$style = createStyle($_POST);
			$this->dao->user_id = parent::_getAdminUid();
			$this->dao->username = parent::_getAdminName();
			$this->dao->title_style = $style['title_style'];
			$this->dao->title_style_serialize = $style['title_style_serialize'];
			$category=M('category')->where("parent_id=0 and module='Notice' ")->field('id')->select();
			$category_id=$category[0]['id'];
			$this->dao->category_id=$category_id;
			$uploadFile = upload($this->getActionName(), 0, 0, 0);

            if ($uploadFile)
            {
                $this->dao->attach_image = formatAttachPath($uploadFile[0]['savepath']) . $uploadFile[0]['savename'];
            }
			$daoAdd = $this->dao->add();
			if(false !== $daoAdd)
			{
				parent::_sysLog('insert', "录入:$daoAdd");
				parent::_message('success', '录入成功');
			}else
			{
				parent::_message('error', '录入失败');
			}
		}else
		{
			parent::_message('error', $this->dao->getError());
		}
	}
	
	/**
	 * 编辑
	 *
	 */
	public function modify()
	{
		parent::_checkPermission();
		$item = intval($_GET["id"]);
		$record = $this->dao->where('id='.$item)->find();
		if (empty($item) || empty($record)) parent::_message('error', '记录不存在');
		$this->assign('vo', $record);
		$this->display();
	}
	
	/**
	 * 提交编辑
	 *
	 */
	public function doModify()
	{
		parent::_checkPermission('Notice_modify');
		parent::_setMethod('post');
		$item = intval($_POST['id']);
		empty($item) && parent::_message('error', 'ID获取错误,未完成编辑');
		if($daoCreate = $this->dao->create())
		{
			$style = createStyle($_POST);
			$this->dao->title_style = $style['title_style'];
			$this->dao->title_style_serialize = $style['title_style_serialize'];
			$uploadFile = upload($this->getActionName(), 0, 0, 0);
            if ($uploadFile)
            {
                $this->dao->attach_file = formatAttachPath($uploadFile[0]['savepath']) . $uploadFile[0]['savename'];
                @unlink('./'.$this->upload.$_POST['old_file']);
            }
			$daoSave = $this->dao->save();
			if(false !== $daoSave)
			{
				parent::_sysLog('modify', "编辑:$item");
				parent::_message('success', '更新成功');
			}else
			{
				parent::_message('error', '更新失败');
			}
		}else
		{
			parent::_message('error', $this->dao->getError());
		}
	}
	
	/**
     * 批量操作
     *
     */
	public function doCommand()
	{
		parent::_checkPermission('Notice_command');
		if(getMethod() == 'get'){
            $operate = trim($_GET['operate']);
        }elseif(getMethod() == 'post'){
            $operate = trim($_POST['operate']);
        }else{
            parent::_message('error', '只支持POST,GET数据');
        }
		$newCategory = intval($_POST['newCategory']);
		switch ($operate){
			case 'delete': parent::_delete();break;
			case 'setTop': parent::_setTop('set');break;
			case 'unSetTop': parent::_setTop('unset');break;
			case 'setStatus': parent::_setStatus('set');break;
			case 'unSetStatus': parent::_setStatus('unset');break;
			case 'update': parent::_batchModify(0, $_POST, array('title', 'display_order'));break;
			default: parent::_message('error', '操作类型错误') ;
		}
	}
}
