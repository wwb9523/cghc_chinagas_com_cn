<?php if (!defined('THINK_PATH')) exit();?>﻿

<!--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title><?php if(isset($contentDetail)): ?><?php echo ($contentDetail["title"]); ?>-<?php else: ?><?php if(isset($moduleTitle)): ?><?php echo ($moduleTitle); ?>-<?php endif; ?><?php endif; ?><?php echo ($sysConfig["site_name"]); ?>-<?php echo ($sysConfig["seo_title"]); ?>-Powered by Y-city</title><meta name="keywords" content="<?php echo (($contentDetail["keyword"])?($contentDetail["keyword"]):$sysConfig['seo_keyword']); ?>" /><meta name="description" content="<?php echo (($contentDetail["description"])?($contentDetail["description"]):$sysConfig['seo_description']); ?>" /><meta http-equiv="X-UA-Compatible" content="IE=7"/><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/><link rel="stylesheet" href="__PUBLIC__/Style/style2.css" type="text/css"><script type="text/javascript" src="__PUBLIC__/Js/jquery-1.9.1.min.js"></script><script type="text/javascript" src="__PUBLIC__/Js/marquee.js"></script><script type="text/javascript">        function showMenu (baseId, divId) {
            baseID = document.getElementById(baseId);
            divID  = document.getElementById(divId);
            if (showMenu.timer) clearTimeout(showMenu.timer);
            hideCur();
            divID.style.display = 'block';
            if(isOver(divId,'nav')){

            }

            showMenu.cur = divID;

            if (! divID.isCreate) {
                divID.isCreate = true;
                //divID.timer = 0;
                divID.onmouseover = function () {

                    if (showMenu.timer) clearTimeout(showMenu.timer);
                    hideCur();
                    divID.style.display = 'block';

                };

                function hide () {
                    showMenu.timer = divID.style.display = 'none';
                }

                divID.onmouseout = hide;
                baseID.onmouseout = hide;
            }
            function hideCur () {
                showMenu.cur && (showMenu.cur.style.display = 'none');
            }
        }

        function isOver(div11,div22) {
            var div1 = $('#'+div11);
            var div2 = $('.'+div22);
            div1Width=div1.width();
            div2Width = div2.width();
            div1Left = div1.offset().left;
            div1Top = div1.offset().top;
            div2Left = div2.offset().left;
            div1Right = div1Left+div1Width;
            div2Right = div2Left+div2Width;
            if(div1Right>div2Right){
                divID.style.left=80-div1Width;
                divID.style.right=0;
            }
        }
    </script><script language="javascript">        window.onload = function(){
            var mar = new Marquee("marquee");
            mar.Direction = 2;
            mar.Width = 260;
            mar.Height = 245;
            mar.Speed = 36;
            mar.Space = 1;
            mar.Tag = "ul";
            mar.Start();
        }
    </script></head><body class="body2"><div class="banner"><div class="logo"><a href="__ROOT__"><img src="__PUBLIC__/Images/college_logo.png"></a></div><div class="header_font"><a href="__ROOT__"><img src="__PUBLIC__/Images/header_font.png"></a></div></div><div class="nav"><ul><li class="home"><a class="on" href="__ROOT__"><b>首页</b></a></li><li><span hidden="hidden" class="<?php echo ($id=$pageList[0]['id']); ?>"></span><a href="<?php echo U('Page/detail');?>" id="nl_<?php echo ($id); ?>"  onMouseOver="showMenu('nl_<?php echo ($id); ?>','subnav<?php echo ($id); ?>');" ><b><?php echo ($pageList[0]['title']); ?></b></a><div id="subnav<?php echo ($id); ?>" class="subnav"><?php ($length=count($pageList));?><?php if(is_array($pageList)): $key = 0; $__LIST__ = $pageList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$row): $mod = ($key % 2 );++$key;?><?php if(($key)  !=  "1"): ?><a href="<?php echo U('Page/detail',array('item'=>$row['id']));?>"><?php echo ($row['title']); ?></a><?php if(($key)  !=  $length): ?>&nbsp;|&nbsp;<?php endif; ?><?php endif; ?><?php endforeach; endif; else: echo "" ;endif; ?></div></li><?php if(is_array($dataList)): $i = 0; $__LIST__ = $dataList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?><li><span hidden="hidden" class="<?php echo ($id=$item[0]['id']); ?>"></span><a href="<?php echo U('News/index',array('item'=>$item[0]['id']));?>" id="nl_<?php echo ($id); ?>"  onMouseOver="showMenu('nl_<?php echo ($id); ?>','subnav<?php echo ($id); ?>');"><b><?php echo ($item[0]['title']); ?></b></a><?php if($item[1]['id'] != ''): ?><div id="subnav<?php echo ($id); ?>" class="subnav" ><?php ($length=count($item));?><?php if(is_array($item)): $key = 0; $__LIST__ = $item;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$row): $mod = ($key % 2 );++$key;?><?php if(($key)  !=  "1"): ?><a href="<?php echo U('News/index',array('item'=>$row['id']));?>"><?php echo ($row['title']); ?></a><?php if(($key)  !=  $length): ?>&nbsp;|&nbsp;<?php endif; ?><?php endif; ?><?php endforeach; endif; else: echo "" ;endif; ?></div><?php endif; ?></li><?php endforeach; endif; else: echo "" ;endif; ?></ul></div><div class="main"><div class="listleft_s"><div class="listin"><div class="listlbg"><div class="ltbox"><span class="ltfont"><?php echo ($contentDetail["categoryName"]); ?></span></div></div><table  cellpadding="0" cellspacing="0" class="listtab"><?php if(is_array($list_type)): $i = 0; $__LIST__ = $list_type;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$type): $mod = ($i % 2 );++$i;?><tr><td width="20px" class="listtd"><img src="__PUBLIC__/Images/listico.png"></td><td class="listtd"><a href="<?php echo U('Down/index',array('item'=>$type['id']));?>"><?php echo ($type['title']); ?></a></td></tr><?php endforeach; endif; else: echo "" ;endif; ?></table></div><div class="link_left"><div class="leftbtn"><div class="leftbtn_in"><div class="link"><div class="dlink_img"><img src="__PUBLIC__/Images/download.png" class="link_img"></div><a href="<?php echo U('Down/index');?>">下载专区</a></div><div class="link"><div class="dlink_img"><img src="__PUBLIC__/Images/pingjian.png" class="link_img"></div><?php $condition = 'title=\'评建专区\' '; $order = ''; $limit = 10; if(!isset($Category)) : $CategoryDao = M('Category'); endif; if(!isset($comment)) :$comment = $CategoryDao->Where($condition)->Order($order)->Limit($limit)->findAll();endif; if(is_array($comment)): $i = 0; $__LIST__ = $comment;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$row): ++$i;$mod = ($i % 2 ); $currentTime = time();?><a href="<?php echo U('News/index',array('item'=>$row['id']));?>">评建专区</a><?php endforeach; endif; else: echo "" ;endif; ?></div><div class="link3"><div class="dlink_img"><img src="__PUBLIC__/Images/jingping.png" class="link_img"></div><?php $condition = 'title=\'精品课程\''; $order = ''; $limit = 10; if(!isset($Category)) : $CategoryDao = M('Category'); endif; if(!isset($party)) :$party = $CategoryDao->Where($condition)->Order($order)->Limit($limit)->findAll();endif; if(is_array($party)): $i = 0; $__LIST__ = $party;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): ++$i;$mod = ($i % 2 ); $currentTime = time();?><a href="<?php echo U('Course/index',array('item'=>$item['id']));?>">精品课程</a><?php endforeach; endif; else: echo "" ;endif; ?></div></div></div><div class="Flinks"><div class="lkfont"><span>友情链接</span></div><table class="lka"><?php $condition = '1=1'; $order = ''; $limit = '8'; if(!isset($Link)) : $LinkDao = M('Link'); endif; if(!isset($flinks_links)) :$flinks_links = $LinkDao->Where($condition)->Order($order)->Limit($limit)->findAll();endif; if(is_array($flinks_links)): $i = 0; $__LIST__ = $flinks_links;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$flinks_link): ++$i;$mod = ($i % 2 ); $currentTime = time();?><?php endforeach; endif; else: echo "" ;endif; ?><?php if(is_array($flinks_links)): $i = 0; $__LIST__ = $flinks_links;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$link): $mod = ($i % 2 );++$i;?><?php if(($mod)  ==  "0"): ?><tr><?php endif; ?><td><a href="<?php echo ($link['link_url']); ?>"><?php echo ($link['title']); ?></a></td><?php if(($mod)  ==  "1"): ?></tr><?php endif; ?><?php endforeach; endif; else: echo "" ;endif; ?></table></div></div></div><div class="listright_s"><div class="listrightin"><div class="ltitle"><div class="lrtitle"><span class="lrlink"><a href="__ROOT__" class="home">首页</a><?php if(is_array($top_link)): $i = 0; $__LIST__ = $top_link;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$link): $mod = ($i % 2 );++$i;?><?php if($i == 1): ?>&gt;<a class="tl" href="<?php echo U('Down/index');?>"><?php echo ($link['title']); ?></a><?php else: ?> &gt;<a class="tl" href="<?php echo U('Down/index',array('item'=>$link['id']));?>"><?php echo ($link['title']); ?></a><?php endif; ?><?php endforeach; endif; else: echo "" ;endif; ?></span><div class="blue"></div><span><?php echo ($contentDetail["categoryName"]); ?></span></div></div><div class="downloadlist"><div class="downloadtitle"><?php echo ($contentDetail["title"]); ?></div><table border="1" bordercolor="#d7d7d7" cellpadding="3" cellspacing="0" class="downloadtable"><tr><td class="dtd1">发布时间</td><td class="dtd2"><?php echo (date("Y-m-d",$contentDetail["create_time"])); ?></td></tr><tr><td class="dtd1">文件大小</td><td class="dtd2"><?php echo ($contentDetail["file_size"]); ?><?php echo ($contentDetail["file_size_unit"]); ?></td></tr><tr><td class="dtd1">文件类型</td><td class="dtd2"><?php echo ($contentDetail["extension"]); ?></td></tr><tr><td class="dtd1">下载次数</td><td class="dtd2"><?php echo ($contentDetail["view_count"]); ?>次</td></tr></table><div class="downloadbtn"><a href="<?php echo U('Down/downFiles',array('file'=>$contentDetail['attach_file']));?>">点击下载文件 >></a></div><div class="downloadbox"><div class="ddtitle">文件简介</div><div class="ddtext"><?php echo ($contentDetail["content"]); ?></div></div></div></div></div></div><div class="foot"><div class="ftbox"><div style="display:none"><a href="http://www.nikeairjordans.net" title="Cheap Nike Air Jordans For Sale" >Cheap Nike Air Jordans For Sale</a></div><img src="__PUBLIC__/Images/foot_logo.png" class="ftlogo"><div class="ftfont">版权所有：天津城建大学&nbsp;&nbsp;经济与管理学院<br/>Copyright &copy; 2012 天津城建大学&nbsp;&nbsp;经济与管理学院 All rights reserved.<br/>技术支持：<a href="http://www.y-city.net.cn">新城网络</a></div></div></div></body></html></body></html>