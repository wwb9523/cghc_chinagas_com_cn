<?php
/**
 * 
 * 下载
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */
if(!defined("YCITYCMS")) exit("Access Denied"); 
class DownAction extends HomeAction
{
    public $dao,$id,$down,$list_type;
    function _initialize()
    {
        parent::_initialize();
        $this->dao = M('Download');
        $this->down=M('Category')->where("module='Download' and parent_id=0")->findAll();
        $id=$this->down[0]['id'];
        $this->list_type = M('Category')->where("parent_id=$id")->field('title,id,parent_id')->select();
        $this->assign('list_type', $this->list_type);


    }
    /**
     * 列表
     *
     */
    public function index()
    {
        $item =isset($_GET['item'])?intval($_GET['item']):0;
        if(!$item) $row = $this->down;
        else {
            $row=M('Category')->where("module='Download' and id=$item")->findAll();
        }
        if(!$row){
            $this->error('记录不存在!!!');
        }
        $this->id=$row[0]['id'];
        $link = parent::getLinked('Category', 'parent_id', 'id', $this->id);
        $this->assign('top_link', $link);
        $this->assign('data', $row[0]);
        if(!$item){
            $listId=array();
            foreach ($this->list_type as $value){
                $listId[]=$value['id'];
            }
            $listId[]=$this->id;
            $this->id=$listId;
        }
        $condition['a.category_id'] = array('in', $this->id);
        $condition['a.status'] = array('eq', 0);
        $this->assign('category', $this->category);
        parent::getJoinList($condition, 'a.id DESC', 15, C('DB_PREFIX').'download a', C('DB_PREFIX').'category b on a.category_id=b.id','a.*, b.title as categoryName');
    }
    
    /**
     * 内容
     *
     */
    public function detail(){
        if(!isset($_GET['item'])){parent::_empty();exit(404);}
        $titleId = intval($_GET['item']);
        $condition['a.id']=$titleId;
        $commentCount = M('Comment')->where("title_id={$titleId} and module='Download'")->count();
        $this->assign('commentCount', $commentCount);
        $contentDetail=parent::getJustDetail(array('a.id='.$titleId, "id={$titleId}"), 'view_count', C('DB_PREFIX').'download a', C('DB_PREFIX').'category b on a.category_id=b.id','a.*, b.title as categoryName');
        $contentDetail['attach_file']=str_replace('/','-down-',$contentDetail['attach_file']);
        $this->assign('contentDetail',$contentDetail);
        $link = parent::getLinked('Category', 'parent_id', 'id', $contentDetail['category_id']);
        $this->assign('top_link', $link);
        $this->display();
    }

    public function downFiles()
    {
        $file=str_replace('-down-','/',$_GET['file']);
        $filename=Uploads_PATH.DIRECTORY_SEPARATOR.$file; //文件名
        $ext=pathinfo($filename,PATHINFO_EXTENSION);
        $date=date("Ymd-H:i:m");
        header( "Content-type:  application/octet-stream ");
        header( "Accept-Ranges:  bytes ");
        header( "Accept-Length: " .filesize($filename));
        header( "Content-Disposition:  attachment;  filename= {$date}.{$ext}");
        echo file_get_contents($filename);
        readfile($filename);
    }
}