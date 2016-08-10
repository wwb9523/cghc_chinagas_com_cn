<?php 
/**
 * 
 * News(新闻)
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */

class TestAction extends BaseAction
{
    protected $category , $dao;
    function _initialize()
    {
        parent::_initialize();
        //取所有分类，过滤出新闻模块主ID
        $category = D('Category')->Order('display_order DESC,id DESC')->findAll();
        foreach ((array)$category as $row){
            if($row['module'] == 'News'){
                $parentId = $row['id'];
            }
        }
        //取主ID下属分类
        $this->assign('parentId', $parentId);
        $this->assign('category', $category);
        $this->dao = D('Journal');
    }

    /**
	 * 列表
	 *
	 */
    public function index()
    {
        ini_set("memory_limit","512M");
        $condition = array();
        $dataList = $this->dao->Field('id,title,content')->Where($condition)->findAll();
        //dump($dataList);
        foreach ($dataList as $key => $value) {
            $data['id'] = $value['id'];
            $data['content'] = str_replace("http://ceshi.chinagas.com.cn/","http://cghc.chinagas.com.cn/",$value['content']);
            $dao = $this->dao->save($data);
        }

    }
}
