<?php
/**
 * 
 * 单页
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */
if(!defined("YCITYCMS")) exit("Access Denied"); 
class PageAction extends HomeAction
{
    public $dao;
    function _initialize()
    {
        parent::_initialize();
        $this->dao = M('Page');
        $notice=M('Category')->where('parent_id=0 and title="通知公告"')->field('id,parent_id,title')->select();
        $noticeId=intval($notice[0]['id']);
        $condition['b.id']=$noticeId; 
        $noticeNews=M('News')->table(C('DB_PREFIX').'news a')->join(C('DB_PREFIX').'category b on a.category_id=b.id')->where($condition)->field('a.*,b.title as categoryTitle')->limit(9)->select();
        $this->assign('noticeNews',$noticeNews);
    }

    /**
     * 详细信息
     *
     */
    public function detail()
    {
        $type=$this->dao->field('title,id')->select();
		$item =isset($_GET['item'])?intval(($_GET['item'])):1;
        $name='';
        foreach ($type as $vo){
            if($vo['id']==$item)$name=$vo['title'];
        }
        $this->assign('name', $name);
        $this->assign('list_type',$type);
        parent::getDetail("id='{$item}'");
    }
}