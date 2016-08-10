<?php
/**
 * 
 * 新闻
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */
if(!defined("YCITYCMS")) exit("Access Denied"); 
class NewsAction extends HomeAction
{
    public $dao,$category,$id,$type,$parentId;
    function _initialize()
    {
        parent::_initialize();
        if(!isset($_GET['item'])){parent::_empty();exit(404);}
        $notice=M('Category')->where('parent_id=0 and title="通知公告"')->field('id,parent_id,title')->select();
        $noticeId=intval($notice[0]['id']);
        $condition['b.id']=$noticeId;
        $noticeNews=M('News')->table(C('DB_PREFIX').'news a')->join(C('DB_PREFIX').'category b on a.category_id=b.id')->where($condition)->field('a.*,b.title as categoryTitle')->limit(9)->select();
        $this->assign('noticeNews',$noticeNews);
    }
    
    /**
     * 列表
     *
     */
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
        parent::getJoinList($condition, 'a.id DESC', 15, C('DB_PREFIX').'news a', C('DB_PREFIX').'category b on a.category_id=b.id','a.*,b.parent_id');
    }
    
    public function detail(){
        $titleId = intval($_GET['item']);
        parent::getJoinDetail(array("a.id={$titleId}", "id={$titleId}"), 'view_count', C('DB_PREFIX').'news a', C('DB_PREFIX').'category b on a.category_id=b.id','a.*, b.id as categoryId,b.title as categoryName');/* b.title as categoryName 调用当前分类名称 */
    }

}