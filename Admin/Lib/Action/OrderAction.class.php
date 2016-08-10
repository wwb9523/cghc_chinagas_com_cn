<?php 
/**
 * 
 * Order(订单)
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */

class OrderAction extends BaseAction
{
    protected $category, $dao;
    function _initialize()
    {
        parent::_initialize();
        //取所有分类，过滤出新闻模块主ID
        //$category = M('Category')->Order('display_order DESC,id DESC')->findAll();
        //foreach ((array)$category as $row){
            //if($row['module'] == 'Product'){
                //$parentId = $row['id'];
            //}
        //}
        //取主ID下属分类  
        //$this->assign('parentId', $parentId);
        //$this->assign('category', $category);
        $this->dao = D('Order');
    }

    /**
	 * 列表
	 *
	 */
    public function index()
    {
        parent::_checkPermission();
        $condition = array();
        $realname = formatQuery($_GET['realname']);
        $orderBy = trim($_GET['orderBy']);
        $orderType = trim($_GET['orderType']);
        $status =  intval($_GET['status']);
        $setOrder = setOrder(array('a.id'), $orderBy, $orderType);
        $pageSize = intval($_GET['pageSize']);
        $realname &&  $condition['realname'] = array('like', '%'.$realname.'%');
        $status && $condition['status'] = array('eq', $status);
        $count = $this->dao->where($condition)->count();
        $listRows = empty($pageSize) || $pageSize> 100 ? 15 : $pageSize ;
        $p = new page($count, $listRows);
        $dataList = $this->dao->Table(C('DB_PREFIX').'order a')->Join(C('DB_PREFIX').'product b on a.title_id=b.id')->Field('a.*,b.title')->Order($setOrder)->Where($condition)->Limit($p->firstRow.','.$p->listRows)->findAll();
        $page = $p->show();
        if($dataList !== false){
            $this->assign('dataList', $dataList);
            $this->assign('pageBar', $page);
        }
        parent::_sysLog('index');
        $this->display();
    }

    /**
	 * 信息查看
	 *
	 */
    public function detail()
    {
        parent::_checkPermission();
        $item = intval($_GET["id"]);
        $record = $this->dao->Table(C('DB_PREFIX').'order a')->Join(C('DB_PREFIX').'product b on a.title_id=b.id')->Field('a.*,b.title')->where('a.id='.$item)->find();
        if(empty($item) || empty($record)) parent::_message('error', '记录不存在', U('Order/index'));
        /*if($record['status'] == 0){
            $update['status'] = 1;
            $this->dao->Where('id='.$item)->save($update);
        }*/
        $this->assign('vo', $record);
        parent::_sysLog('index');
        $this->display();
    }

    /**
	 * 提交编辑
	 *
	 */
    public function doModify()
    {
        parent::_checkPermission('Order_modify');
        parent::_setMethod('post');
        $item = intval($_POST['id']);
        empty($item) && parent::_message('error','记录不存在', U('Order/index'));;
        $dao = D("Order");
        if($daoCreate = $this->dao->create())
        {
            $daoSave = $this->dao->save();
            if(false !== $daoSave)
            {
                parent::_sysLog('modify');
                parent::_message('success', '更新完成', U('Order/index'));
            }else
            {
                parent::_message('error', '更新失败', U('Order/index'));
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
        parent::_checkPermission('Order_command');
        if(getMethod() == 'get'){
            $operate = trim($_GET['operate']);
        }elseif(getMethod() == 'post'){
            $operate = trim($_POST['operate']);
        }else{
            parent::_message('error', '只支持POST,GET数据');
        }
        $newCategory = intval($_POST['newCategory']);
        switch ($operate){
            case 'delete': parent::_delete('Order', U('Order/index'));break;
            case 'update': parent::_batchModify(0, $_POST, array('title','display_order'));break;
            default: parent::_message('error', '操作类型错误') ;
        }
    }
}
