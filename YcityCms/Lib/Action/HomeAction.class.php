<?php
/**
 * 
 * Global(全局)
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */
if(defined('APP_PATH')!='./YcityCms' && !defined("YCITYCMS"))  exit("Access Denied");
class HomeAction extends Action
{
    public $globalCategory, $globalMenu, $sysConfig;
    /**
     * 初始化
     *
     */
    function _initialize()
    {
        //取配置
        if(fileExit('./cms.config.php')){
            $this->sysConfig = @require_once('./cms.config.php');
        }else{
            $this->sysConfig = M('Config')->where('id=1')->find();
        }

        //检测是否停止
        $this->assign('sysConfig', $this->sysConfig);
        if($sysConfig['web_status'] == 1){
            $this->display('Public:stop');
            exit();
        }
        //取分类
        $this->globalCategory = getCache('Category');

        //取导航
        $this->globalMenu = getCache('Menu');
        $this->assign('globalMenu', $this->globalMenu);

        //导入函数
        Load('extend');
        //导入分页类
        import("ORG.Util.Page");
        $this->assign('moduleName', MODULE_NAME);
        $this->getHeaderData();
    }

    public function _empty()
    {
        header("HTTP/1.0 404 Not Found");//使HTTP返回404状态码
        $this->display("Public:notFound");
    }

    public function getHeaderData(){
        $this->dao = D('Category');
        $categoryAll = $this->dao->where('parent_id!=-1 and module="News"')->Order('id ASC')->findAll();
        $dataList = getCategory($categoryAll);
        $categoryList=array();
        foreach ($dataList as $item){
                 if($item['level']==0)$categoryList[$item['id']][]=$item;
                 if($item['level']==2)$categoryList[$item['parent_id']][]=$item;
        }
        $PageList=M('Page')->field('id,title')->findAll();
        $Page=$this->dao->where("module='Page' and parent_id=0")->findAll();
        $PageList=array_merge($Page,$PageList);
        /*$Course=$this->dao->where("module='Course' and parent_id=0")->findAll();
        $CourseId=intval($Course[0]['id']);
        $CourseList=$this->dao->where("parent_id=$CourseId")->select();
        $CourseList=array_merge($Course,$CourseList);
        $this->assign('courseList', $CourseList);*/
        $this->assign('pageList', $PageList);
        $this->assign('dataList', $categoryList);
    }
    /*
    *查询
    */
    public function search($conditions='',$table)
    {
        $condition=!empty($conditions)?$conditions:'';
        $resultList=$this->dao->where($condition)->Table($table)->select();
        $this->assign('searchResultList',$resultList);
        $this->display();
    }

    /**
    *获取类型列表
    */
    public function getCategory($conditions='')
    {
        $condition = !empty($conditions) ? $conditions : '' ;
        $selectitems=$this->dao->where($condition)->select();
        $this->assign('selectitems',$selectitems);
        $this->display();  
    }
    /**
    *获取简单列表
    */
    public function getSimpleList($conditions='')
    {
        $condition = !empty($conditions) ? $conditions : '' ;
        $dataContentList=$this->dao->where($condition)->select();
        $this->assign('dataContentList',$dataContentList);
    }
    /**
     * 数据列表
     *
     * @param $conditions 条件
     * @param $orders 排序
     * @param $listRows 每页显示数量
     * @param $joind 是否表关联
     * @param $table 关联表
     * @param $join 
     * @param $fields 取字段
     */
    public function getList($conditions = '', $orders = '' , $listRows = '')
    {
        $condition = !empty($conditions) ? $conditions : '' ;
        $pageCount = $this->dao->where($condition)->count();
        $listRows = empty($listRows) ? 15 : $listRows;
        $orderd = empty($orders) ? 'id DESC' : $orders;
        $paged = new page($pageCount, $listRows);
        $dataContentList = $this->dao->Where($condition)->Order($orderd)->Limit($paged->firstRow.','.$paged->listRows)->select();
        $pageContentBar = $paged->show();
        $this->assign('dataContentList', $dataContentList);
        $this->assign('pageContentBar', $pageContentBar);
        $this->display();
    }

    /**
     * 数据列表,表关联
     *
     * @param $conditions 条件
     * @param $orders 排序
     * @param $listRows 每页显示数量
     * @param $joind 是否表关联
     * @param $table 关联表
     * @param $join 
     * @param $fields 取字段
     */
    public function getJoinList($conditions = '', $orders = '' , $listRows = '', $table = '', $join = '', $fields = '')
    {
        $condition = !empty($conditions) ? $conditions : '' ;
        $pageCount = $this->dao->Where($condition)->Table($table)->Join($join)->Field($fields)->count();
        $listRows = empty($listRows) ? 15 : $listRows;
        $orderd = empty($orders) ? 'id DESC' : $orders;
        $paged = new page($pageCount, $listRows);
        $dataContentList = $this->dao->Table($table)->join($join)->field($fields)->Where($condition)->Order($orderd)->Limit($paged->firstRow.','.$paged->listRows)->select();
        $pageContentBar = $paged->show();
        $this->assign('dataContentList', $dataContentList);
        $this->assign('pageContentBar', $pageContentBar);
        $this->display();
    }

    /**
     * 数据列表,表关联
     *
     * @param $conditions 条件
     * @param $orders 排序
     * @param $listRows 每页显示数量
     * @param $joind 是否表关联
     * @param $table 关联表
     * @param $join 
     * @param $fields 取字段
     */
    public function getJustList($conditions = '', $orders = '' , $table = '', $join = '', $fields = '',$listRows)
    {
        $condition = !empty($conditions) ? $conditions : '' ;
        $orderd = empty($orders) ? 'id DESC' : $orders;
        $listRows = empty($listRows) ? 15 : $listRows;
        $dataContentList = $this->dao->Table($table)->join($join)->field($fields)->Where($condition)->Order($orderd)->Limit($listRows)->select();
        return $dataContentList;
    }

    /**
     * 数据集
     *
     * @param $conditions 条件
	 *
     */
    public function getDetail($conditions = '', $viewCount = false)
    {
        empty($conditions) && self::_message('errorUri', '查询条件丢失', U('Index/index'));
        $contentDetail = $this->dao->Where($conditions)->find();
        empty($contentDetail) && self::_message('errorUri', '记录不存在', U('Index/index'));
		//更新查看次数
		$viewCount && $this->dao->setInc($viewCount, $conditions);
        $this->assign('contentDetail', $contentDetail);
        $this->display( );
    }

    /**
    *数据集
    */
    public function getSimpleDetail($conditions = '', $viewCount = false)
    {
        empty($conditions) && self::_message('errorUri', '查询条件丢失', U('Index/index'));
        $contentDetail = $this->dao->Where($conditions)->find();
        empty($contentDetail) && self::_message('errorUri', '记录不存在', U('Index/index'));
        //更新查看次数
        $viewCount && $this->dao->setInc($viewCount, $conditions);
        $this->assign('contentDetail', $contentDetail);
    }

    public function getLinked($model,$parent,$child,$parentId,$arr=array())
    {
        $condition[$child]=$parentId;
        $data=M($model)->where($condition)->select();
        if($data){
            $arr=array_merge($this->getLinked($model,$parent,$child,$data[0][$parent],$arr),$data);
        }
        //   $arr=array_reverse($arr);
        return  $arr;
    }
    /**
     * 数据集,表关联
     * 此处查询条件可能为数组
     * @param $conditions 条件
     * @param $joind 是否表关联
     * @param $table 关联表
     * @param $join 
     * @param $fields 取字段
     */
    public function getJoinDetail($conditions = '', $viewCount = false, $table = '', $join = '', $fields = '')
    {
        empty($conditions) && self::_message('errorUri', '查询条件丢失', U('Index/index'));
		
		$condition1 = is_array($conditions) ? $conditions[0] : $conditions;
		$condition2 = is_array($conditions) ? $conditions[1] : $conditions;

        $contentDetail = $this->dao->Table($table)->Join($join)->Field($fields)->Where($condition1)->find();
        empty($contentDetail) && self::_message('errorUri', '记录不存在', U('Index/index'));
		//更新查看次数
		$viewCount && $this->dao->setInc($viewCount, $condition2);
        $this->assign('contentDetail', $contentDetail);
        $link = $this->getLinked('Category', 'parent_id', 'id', $contentDetail['categoryId']);
        $this->assign('top_link', $link);
        $this->display();
    }

        /**
     * 数据集,表关联
     * 此处查询条件可能为数组
     * @param $conditions 条件
     * @param $joind 是否表关联
     * @param $table 关联表
     * @param $join 
     * @param $fields 取字段
     */
    public function getJustDetail($conditions = '', $viewCount = false, $table = '', $join = '', $fields = '')
    {
        empty($conditions) && self::_message('errorUri', '查询条件丢失', U('Index/index'));
        
        $condition1 = is_array($conditions) ? $conditions[0] : $conditions;
        $condition2 = is_array($conditions) ? $conditions[1] : $conditions;

        $contentDetail = $this->dao->Table($table)->Join($join)->Field($fields)->Where($condition1)->find();
        empty($contentDetail) && self::_message('errorUri', '记录不存在', U('Index/index'));
        //更新查看次数
        $viewCount && $this->dao->setInc($viewCount, $condition2);
       // $this->assign('contentDetail', $contentDetail);
        return $contentDetail;
    }

    /**
     * 验证码
     *
     */
    function verify()
    {
        import('ORG.Util.Image');
        Image::buildImageVerify();
    }

    /**
     * 输出信息
     *
     * @param $type
     * @param $content
     * @param $jumpUrl
     * @param $time
     * @param $ajax
     */
    protected function _message($type = 'success', $content = '更新成功', $jumpUrl = __URL__, $time = 3, $ajax = false)
    {
        $jumpUrl = empty($jumpUrl) ? __URL__ : $jumpUrl ;
        switch ($type){
            case 'success':
                $this->assign('jumpUrl', $jumpUrl);
                $this->assign('waitSecond', $time);
                $this->success($content, $ajax);
                break;
            case 'error':
                $this->assign('jumpUrl', 'javascript:history.back(-1);');
                $this->assign('waitSecond', $time);
                $this->assign('error', $content);
                $this->error($content, $ajax);
                break;
            case 'errorUri':
                $this->assign('jumpUrl', $jumpUrl);
                $this->assign('waitSecond', $time);
                $this->assign('error', $content);
                $this->error($content, $ajax);
                break;
            default:
                die('error type');
                break;
        }
    }
}

