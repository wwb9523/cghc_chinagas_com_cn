<?php
/**
 * Created by PhpStorm.
 * User: APTX
 * Date: 2016/7/21
 * Time: 14:06
 */
if(!defined("YCITYCMS")) exit("Access Denied");
class CourseAction extends HomeAction{
	private $dao,$id,$down,$list_type;
	function _initialize(){
		parent::_initialize();
		$this->dao = M('Course');
		if(!isset($_GET['item'])){
			parent::_empty();
			exit(404);
		}
	}

	public function index()
	{
		$this->type = intval($_GET['item']);
		$row=M('Category')->where("id={$this->type}")->field('id,title,parent_id')->select();
		if(!$row){
			$this->error('记录不存在!!!');
		}
		$this->id = $row[0]['id'];
		$link = parent::getLinked('Category', 'parent_id', 'id', $this->id);
		if($row[0]['parent_id']==0)$this->parentId=$this->id;
		else $this->parentId=$row[0]['parent_id'];
		$this->assign('top_link', $link);
		$this->assign('data', $row[0]);
		$list_type = M('Category')->where("parent_id=$this->parentId")->field('title,id,parent_id')->select();
		$this->assign('list_type', $list_type);
		if($this->parentId==$this->id){
			$listId=array();
			foreach ($list_type as $item){
				$listId[]=$item['id'];
			}
			$listId[]=$this->id;
			$this->id=$listId;
		}
		$this->assign('id',$this->type);
		$condition['a.category_id']=array('in',$this->id);
		parent::getJoinList($condition, 'a.id DESC', 5, C('DB_PREFIX').'course a', C('DB_PREFIX').'category b on a.category_id=b.id','a.*,b.parent_id');
	}
}