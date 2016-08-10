<?php 
/**
 * 
 * Link(友情链接)
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */

class LinkAction extends BaseAction
{
    public $dao;
    function _initialize()
    {
        parent::_initialize();
        $getData = getCache('Category');
        $data['link_category'] = getCategory($getData, 35);
        $this->assign($data);
        $this->dao = D('Link');
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
        $status =  intval($_GET['status']);
        $istop = intval($_GET['istop']);
        $setOrder = setOrder(array(array('viewCount', 'view_count'),'id'), $orderBy, $orderType);
        $setTime = setTime($createTime, $createTime1);
        $pageSize = intval($_GET['pageSize']);
        $title &&  $condition['title'] = array('like', '%'.$title.'%');
        $status && $condition['status'] = array('eq', $status);
        $istop && $condition['istop'] = array('eq', $istop);
        $count = $this->dao->where($condition)->count();
        $listRows = empty($pageSize) || $pageSize > 100 ? 15 : $pageSize ;
        $p = new page($count, $listRows);
        $dataList = $this->dao->Order($setOrder)->Where($condition)->Limit($p->firstRow.','.$p->listRows)->findAll();
        $page = $p->show();
        if($dataList !== false)
        {
            $this->assign('pageBar', $page);
            $this->assign('dataList', $dataList);
        }
        parent::_sysLog('index');
        $this->display();
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
        parent::_checkPermission('Link_insert');
        parent::_setMethod('post');
        if($daoCreate = $this->dao->create())
        {
            $style = createStyle($_POST);
            $this->dao->title_style = $style['title_style'];
            $this->dao->title_style_serialize = $style['title_style_serialize'];
            $uploadFile = upload($this->getActionName(), 0, 0, 0 );
            if ($uploadFile)
            {
                $this->dao->link_type = 'image';
                $this->dao->attach_image = formatAttachPath($uploadFile[0]['savepath']) . $uploadFile[0]['savename'];
            }
            $daoAdd = $this->dao->add();
            if(false !== $daoAdd)
            {
                writeCache('Link');
                parent::_sysLog('insert', "录入:$daoAdd");
                parent::_message('success', '录入成功');
            }else
            {
                parent::_message('error', '录入成功');
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
        $record = $this->dao->Where('id='.$item)->find();
        if (empty($item) || empty($record)) parent::_message('error', '记录不存在');
        $this->assign('vo',$record);
        $this->display();
    }

    /**
     * 提交编辑
     *
     */
    public function doModify()
    {
        parent::_checkPermission('Link_modify');
        parent::_setMethod('post');
        $item = intval($_POST['id']);
        $convertText = intval($_POST['convertText']);
        empty($item) && parent::_message('error', 'ID获取错误,未完成编辑');
        if($daoCreate = $this->dao->create())
        {
            $style = createStyle($_POST);
            $this->dao->title_style = $style['title_style'];
            $this->dao->title_style_serialize = $style['title_style_serialize'];
            $uploadFile = upload($this->getActionName(), 0, 0, 0 );
            //转换成文本链接
            if($convertText){
                $this->dao->link_type = 'text';
                $this->dao->attach_image = '';
                @unlink('./'.$this->upload.$_POST['old_image']);
            }
            if ($uploadFile)
            {
                $this->dao->link_type = 'image';
                $this->dao->attach_image = formatAttachPath($uploadFile[0]['savepath']) . $uploadFile[0]['savename'];
                @unlink('./'.$this->upload.$_POST['old_image']);
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
        parent::_checkPermission('Link_command');
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
            case 'setStatus': parent::_setStatus('set');break;
            case 'unSetStatus': parent::_setStatus('unset');break;
            case 'update': parent::_batchModify(0, $_POST, array('title', 'link_url', 'display_order'), __URL__, 'Link', 'display_order DESC,id DESC');break;
            default: parent::_message('error', '操作类型错误') ;
        }
    }
}
