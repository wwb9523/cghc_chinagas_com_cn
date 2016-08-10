<?php
/**
 * 
 * 首页
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */
if(!defined("YCITYCMS")) exit("Access Denied");
class IndexAction extends HomeAction 
{
	public $dao,$conf;
	function _initialize()
    {
        parent::_initialize();
	    $this->conf=array(
		    'educate'=>array(
			    'title'=>'教育教学',
		    ),
		    'academic'=>array(
			    'title'=>'科研动态'
		    ),
		    'studentWork'=>array(
			  'title'=> '学生工作'
		    ),
		    'employment'=>array(
			    'title'=>'就业指南'
		    ),
		    'collegeNews'=>array(
			    'title'=>'学院新闻',
			    'limit'=>8
		    ),
		    'noticeNews'=>array(
			    'title'=> '通知公告',
		    )
	    );
    }
	
	public function index()
	{
		$link=M('link')->field('title,link_url')->findAll();
		$this->assign('links',$link);
		foreach ($this->conf as $item=>$value){
			$condition=array();
			$condition['title']=$value['title'];
			$row=M('Category')->where($condition)->field('id')->select();
			$id=array();
			$id[]=$row[0]['id'];
			if($child=M('Category')->where("parent_id=$id[0]")->field('id')->select()){
				foreach ($child as $vo){
					$id[]=$vo['id'];
				}
			}
			$condition=array();
			$condition['b.id']=array('in',$id);
			$limit=$value['limit']?$value['limit']:9;
			$news=parent::getJustList($condition,'a.id DESC',C('DB_PREFIX').'news a',C('DB_PREFIX').'category b on a.category_id=b.id','a.*',$limit);
			$news[0]['categoryTitle']=$value['title'];
			$news[0]['parentId']=$row[0]['id'];
			$this->assign($item,$news);
		}
        $this->display();
	}
}