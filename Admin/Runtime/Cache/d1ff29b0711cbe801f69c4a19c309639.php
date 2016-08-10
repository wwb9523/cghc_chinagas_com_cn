<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
	<head>
		<base href="/">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
		<title>新城网络企业网站管理平台</title>

		<!--                       CSS                       -->
		<!-- Reset Stylesheet -->
		<link rel="stylesheet" href="__ROOT__/Public/Admin/css/reset.css"  type="text/css" media="screen" />
		<!-- Main Stylesheet -->
		<link rel="stylesheet" href="__PUBLIC__/Admin/css/style.css" type="text/css" media="screen" />
		<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
		<link rel="stylesheet" href="__PUBLIC__/Admin/css/invalid.css" type="text/css" media="screen" />	
        <!-- Colorpicker Stylesheet -->
        <link rel="stylesheet" href="__PUBLIC__/Admin/scripts/colorpicker/colorpicker.css" type="text/css" media="screen" />
        <!-- UEditor Stylesheet -->
        <link rel="stylesheet" type="text/css" href="__PUBLIC__/Js/ueditor/themes/default/ueditor.css" media="screen" />
		<!-- Colour Schemes
		Default colour scheme is green. Uncomment prefered stylesheet to use it.
		<link rel="stylesheet" href="__PUBLIC__/Admin/css/blue.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="__PUBLIC__/Admin/css/red.css" type="text/css" media="screen" />  
		-->
		<!-- Internet Explorer Fixes Stylesheet -->
		<!--[if lte IE 7]>
			<link rel="stylesheet" href="__PUBLIC__/Admin/css/ie.css" type="text/css" media="screen" />
		<![endif]-->
		<!--                       Javascripts                       -->
        <!-- UEditor -->

        <script type="text/javascript" src="__PUBLIC__/Js/ueditor/editor_config.js"></script>
    	<script type="text/javascript" src="__PUBLIC__/Js/ueditor/editor_ui_all.js"></script>
        <!-- WdatePicker -->
        <script type="text/javascript" src="__PUBLIC__/Js/My97DatePicker/WdatePicker.js"></script>
		<!-- colorpicker -->
		<script type="text/javascript" src="__PUBLIC__/Admin/scripts/colorpicker/colorpicker.js"></script>
		<!-- jQuery -->
		<script type="text/javascript" src="__PUBLIC__/Admin/scripts/jquery-1.3.2.min.js"></script>
        <!-- jQuery Validation -->
        <script type="text/javascript" src="__PUBLIC__/Js/Jquery/jquery.validate.js"></script>
		<!-- jQuery Configuration -->
		<script type="text/javascript" src="__PUBLIC__/Admin/scripts/simpla.jquery.configuration.js"></script>
		<!-- Facebox jQuery Plugin -->
		<script type="text/javascript" src="__PUBLIC__/Admin/scripts/facebox.js"></script>
		<!-- jQuery WYSIWYG Plugin -->
		<script type="text/javascript" src="__PUBLIC__/Admin/scripts/jquery.wysiwyg.js"></script>
		<!-- jQuery Datepicker Plugin -->
		<!-- script type="text/javascript" src="__PUBLIC__/Admin/scripts/jquery.datePicker.js"></script -->
		<script type="text/javascript" src="__PUBLIC__/Admin/scripts/jquery.date.js"></script>
		<!--[if IE]><script type="text/javascript" src="__PUBLIC__/Admin/scripts/jquery.bgiframe.js"></script><![endif]-->
		<!-- Internet Explorer .png-fix -->
		<!--[if IE 6]>
			<script type="text/javascript" src="__PUBLIC__/Admin/scripts/DD_belatedPNG_0.0.7a.js"></script>
			<script type="text/javascript">
				DD_belatedPNG.fix('.png_bg, img, li');
			</script>
		<![endif]-->
	</head>
<body>
	<div id="body-wrapper">
<!-- Wrapper for the radial gradient background -->
		<div id="sidebar">
        	<div id="sidebar-wrapper">
                <!-- Sidebar with logo and menu -->
                <h1 id="sidebar-title"><a href="#">Simpla Admin</a></h1>
                <!-- Logo (221px wide) -->
                <a href="#"><img id="logo" src="__PUBLIC__/Admin/images/logo.png" alt="logo" /></a>
                <!-- Sidebar Profile links -->
                <div id="profile-links">你好，<a href="<?php echo U('User/modify',array('id'=>$adminId, 'jumpUri'=>'run' ));?>"><?php echo ($realName); ?></a><br /><br /><a href="<?php echo ($frontUrl); ?>" target="_blank" title="浏览网站">浏览网站</a> | <a href="<?php echo U('Public/logout');?>" title="退出系统">退出系统</a></div>        
                <ul id="main-nav">  <!-- Accordion Menu -->
                    <li>
                        <a href='<?php echo U("Index/index");?>' class='nav-top-item no-submenu <?php if($moduleName == Index ): ?>current<?php endif; ?>'><!-- Add the class "no-submenu" to menu items with no sub menu -->系统首页</a>       
                    </li>
                    <!--<li> 
                        <a href="#" class="nav-top-item current">--><!-- Add the class "current" to current menu item --><!--Articles</a>
                        <ul>
                            <li><a href="#">Write a new Article</a></li>
                            <li><a class="current" href="#">Manage Articles</a></li>--> <!-- Add class "current" to sub menu items also -->
                            <!--<li><a href="#">Manage Comments</a></li>
                            <li><a href="#">Manage Categories</a></li>
                        </ul>
                    </li>-->
                    <li>
                        <a href="#" class='nav-top-item <?php if(($moduleName == Config) OR ($moduleName == Module) OR ($moduleName == Theme) OR ($moduleName == User) OR ($moduleName == Role)): ?>current<?php endif; ?>'>基本设置</a>
                        <ul>
                            <li class="Config"><a href="<?php echo U("Config/index");?>" <?php if(($moduleName == Config)): ?>class="current"<?php endif; ?>>系统配置</a></li>
                            <li class="Module"><a href="<?php echo U("Module/index");?>" <?php if(($moduleName == Module)): ?>class="current"<?php endif; ?>>系统模块</a></li>
                            <li class="Theme"><a href="<?php echo U("Theme/index");?>" <?php if(($moduleName == Theme)): ?>class="current"<?php endif; ?>>风格主题</a></li>
                            <li class="User"><a href="<?php echo U("User/index");?>" <?php if(($moduleName == User) OR ($moduleName == Role)): ?>class="current"<?php endif; ?>>管理员管理</a></li>
                            <!-- li class="AdminRole"><a href="<?php echo U("AdminRole/index");?>" <?php if(($moduleName == AdminRole)): ?>class="current"<?php endif; ?>>角色管理</a></li -->
                        </ul>
                    </li>
                    <li>
                        <a href="#" class='nav-top-item <?php if(($moduleName == Ad) OR ($moduleName == Category) OR ($moduleName == Link)): ?>current<?php endif; ?>'>模块管理</a>
                        <ul>
                            <!-- li class="Menu"><a href="<?php echo U("Menu/index");?>">导航管理</a></li -->
                            <!--<li class="Ad"><a href="<?php echo U("Ad/index");?>">广告管理</a></li>-->
                            <li class="Category"><a href="<?php echo U("Category/index");?>">分类管理</a></li>
                            <li class="Link"><a href="<?php echo U("Link/index");?>">友情链接管理</a></li>
                            <!-- li class="Feedback"><a href="<?php echo U("Feedback/index");?>">留言管理</a></li>
                            <li class="Job"><a href="<?php echo U("Job/index");?>">招聘管理</a></li>
                            <li class="Tags"><a href="<?php echo U("Tags/index");?>">标签管理</a></li>
                            <li class="Comment"><a href="<?php echo U("Comment/index");?>">评论管理</a></li -->
                        </ul>
                    </li>

                    <li>
                        <a href="#" class='nav-top-item <?php if(($moduleName == News) OR($moduleName == Course) OR ($moduleName == Download) OR ($moduleName == Page) OR ($moduleName == Article) OR ($moduleName == Video) OR ($moduleName == Journal) OR ($moduleName == Notice) OR ($moduleName == Person)): ?>current<?php endif; ?>'>内容管理</a>
                        <ul>
                            <li class="News"><a href="<?php echo U('News/index');?>" <?php if(($moduleName == News)): ?>class="current"<?php endif; ?>>新闻管理</a></li>
                            <li class="Notice"><a href="<?php echo U('Notice/index');?>"<?php if(($moduleName == Notice)): ?>class="current"<?php endif; ?>>公告管理</a></li>
                            <li class="Download"><a href="<?php echo U('Download/index');?>" <?php if(($moduleName == Download)): ?>class="current"<?php endif; ?>>下载管理</a></li>
                            <li class="Page"><a href="<?php echo U('Page/index');?>" <?php if(($moduleName == Page)): ?>class="current"<?php endif; ?>>单页管理</a></li>
                            <li class="Course"><a href="<?php echo U('Course/index');?>" <?php if(($moduleName == Course)): ?>class="current"<?php endif; ?>>精品课程管理</a></li>
                           <!-- <li class="Page"><a href="<?php echo U('Page/modify',array('id'=>1));?>" <?php if(($moduleName == Page)): ?>class="current"<?php endif; ?>>单页管理</a></li> -->
                           <!-- <li class="Article"><a href="<?php echo U('Article/index');?>" <?php if(($moduleName == Article)): ?>class="current"<?php endif; ?>>投稿管理</a></li> -->
                            <!--<li class="Video"><a href="<?php echo U('Video/index');?>" <?php if(($moduleName == Video)): ?>class="current"<?php endif; ?>>视频管理</a></li>
                            <li class="Journal"><a href="<?php echo U('Journal/index');?>" <?php if(($moduleName == Journal)): ?>class="current"<?php endif; ?>>期刊管理</a></li>
                            <li class="Person"><a href="<?php echo U('Person/index');?>" <?php if(($moduleName == Person)): ?>class="current"<?php endif; ?>>企业人物管理</a></li>-->
						</ul>
                    </li>
                    <li>
                        <a href="#" class='nav-top-item <?php if(($moduleName == Member) OR ($moduleName == Group)): ?>current<?php endif; ?>'>会员管理</a>
                        <ul>
                            <li class="Config"><a href="<?php echo U("Member/index");?>" <?php if(($moduleName == Member)): ?>class="current"<?php endif; ?>>会员资料管理</a></li>
                            <!-- li class="Module"><a href="<?php echo U("Group/index");?>" <?php if(($moduleName == Group)): ?>class="current"<?php endif; ?>>会员组管理</a></li -->
                        </ul>
                    </li>
                    <li>
                        <a href="#" class='nav-top-item <?php if(($moduleName == Core) OR ($moduleName == Tools) OR ($moduleName == Label) OR ($moduleName == Database) OR ($moduleName == AdminLog)): ?>current<?php endif; ?>'>高级设置</a>
                        <ul>
                        	<li class="Core"><a href="<?php echo U("Core/index");?>" <?php if(($moduleName == Core)): ?>class="current"<?php endif; ?>>内核配置</a></li>
                        	<li class="Tools"><a href="<?php echo U("Tools/index");?>" <?php if(($moduleName == Tools)): ?>class="current"<?php endif; ?>>工具箱</a></li>
                            <!-- li class="Label"><a href="<?php echo U("Label/index");?>">数据调用</a></li -->
                            <li class="Database"><a href="<?php echo U("Database/index");?>" <?php if(($moduleName == Database)): ?>class="current"<?php endif; ?>>数据库管理</a></li>
                            <li class="AdminLog"><a href="<?php echo U("AdminLog/index");?>" <?php if(($moduleName == AdminLog)): ?>class="current"<?php endif; ?>>操作日志</a></li>
						</ul>
                    </li>  
                </ul>
                <!-- End #main-nav -->
				<div id="messages" style="display: none">
                <!-- Messages are shown when a link with these attributes are clicked: href="#messages" rel="modal"  -->
                    <h3>3 Messages</h3>
                    <p>
                        <strong>17th May 2009</strong> by Admin<br />
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue.
                        <small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
                    </p>
                    <p>
                        <strong>2nd May 2009</strong> by Jane Doe<br />
                        Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.
                        <small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
                    </p>
                    <p>
                        <strong>25th April 2009</strong> by Admin<br />
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue.
                        <small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
                    </p>
                    <form action="" method="post">
                        <h4>New Message</h4>
                        <fieldset>
                            <textarea class="textarea" name="textfield" cols="79" rows="5"></textarea>
                        </fieldset>
                        <fieldset>
                            <select name="dropdown" class="small-input">
                                <option value="option1">Send to...</option>
                                <option value="option2">Everyone</option>
                                <option value="option3">Admin</option>
                                <option value="option4">Jane Doe</option>
                            </select>
                            <input class="button" type="submit" value="Send" />
                        </fieldset>
                    </form>
                </div>
                <!-- End #messages -->
            </div>
        </div>
        <!-- End #sidebar -->
<script type="text/javascript">
    $(document).ready(function() {
        $("#mainForm").validate({
			//debug:true,
            rules: {
                title: "required",
                content: "required"
            },
            messages: {
                title: "标题必须填写",
                content: "内容必须填写"
            }
        });
        colorPicker();
    });
</script>
		<div id="main-content">
        <!-- Main Content Section with everything -->
			<noscript>
            <!-- Show a notification if the user has disabled javascript -->
                <div class="notification error png_bg">
					<div>
						您的浏览器不支持Javascript或者已经禁用了Javascript。请升级您的浏览器或者<a href="http://www.google.com/support/bin/answer.py?answer=23852" title="如何启用 JavaScript">启用</a>Javascript支持才能正确浏览页面.
					</div>
				</div>
			</noscript>
			<!-- Page Head -->
			<ul class="shortcut-buttons-set">
				
                <li><a class="shortcut-button" href="<?php echo U('Notice/index');?>"><span>
					<img src="__PUBLIC__/Admin/Images/icons/arrow_left_48.png" alt="icon" /><br />
					返回公告列表
				</span></a></li>
				
			</ul><!-- End .shortcut-buttons-set -->
			<div class="clear"></div>
            <!-- End .clear -->
			<div class="content-box"><!-- Start Content Box -->
				<div class="content-box-header">
					<h3>公告管理</h3>
					<ul class="content-box-tabs">
						<li><a href="#tab1" class="default-tab">必填信息</a></li> <!-- href must be unique and match the id of target div -->
						<li><a href="#tab2">选填信息</a></li>
					</ul>
					<div class="clear"></div>
				</div> <!-- End .content-box-header -->
				<div class="content-box-content">
                    <form method="post" action="<?php echo U("Notice/doInsert");?>" id="mainForm" enctype="multipart/form-data">
					    <div class="tab-content default-tab" id="tab1"> <!-- This is the target div. id must match the href of this div's tab -->
						    <fieldset> <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
							    <p>
								    <label>公告标题</label>
								    <input class="text-input large-input" type="text" name="title" id="title" />
							    </p>
							    <p>
								    <label>标题样式</label>
                                    <div style=" display:block; float:left" title="点击取颜色" class="color_picker" id="color_picker" onclick="colorPicker()">&nbsp;</div>颜色
                                    <input type="hidden" name="style_color" id="style_color" size="10" value="#ffffff" />&nbsp;
                                    <input type="checkbox" name="checkbox" id="checkbox" value="bold" /> 加粗
                                    <input type="checkbox" name="checkbox" id="checkbox" value="underline" /> 下划线
							    </p>
                                <!-- p>
                            	    <label>起止时间</label>
                                    <input name="start_time" type="text" class="text-input Wdate" id="start_time" style="width:160px"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false,readOnly:true})" value="<?php echo date('Y-m-d',time())?>"/>
								-
            					    <input name="end_time" type="text" class="text-input Wdate" id="end_time" style="width:160px"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false,readOnly:true})" value="<?php echo date('Y-m-d',time()+2592000)?>"/>
                                </p -->
                                    <label>详细说明</label>
                                    <textarea class="text-input textarea" name="content" id="content" cols="79" rows="4"><?php echo ($vo["content"]); ?></textarea>
							    <p>
                                    <input class="button" type="submit" name="submit" value="提交更新"/>
                                    <input class="button" type="reset" name="button" id="button" value="还原重填"/>
							    </p>
                            </fieldset>
					    </div> <!-- End #tab1 -->
					    <div class="tab-content" id="tab2">
                            <fieldset class="column-left">
                                <p>
                                    <label>模板</label>
                                    <input class="text-input medium-input" type="text" name="template" id="template" />
                                    <br /><small>若本模块拥有多个模板文件供调用，可在此填入相应的模板名（无需填写.html），保持默认则留空即可。</small>
                                </p>
                                <p>
                                    <label>上传附件</label>
                                    <input class="medium-input" type="file" name="attach_file" id="attach_file" />
                                </p>
                                <p>
                                    <label>关键词</label>
                                    <input class="text-input medium-input" type="text" name="keyword" id="keyword" />
                                    <br /><small>各个关键词之间请用","或者"|"隔开（注：此处为英文半角符号）</small>
                                </p>
                                <p>
                                    <label>外链地址</label>
                                    <input class="text-input medium-input" type="text" name="link_url" id="link_url" />
                                    <br /><small>填写外链地址后，本条目链接将自动转向所填写的网址，以上填写的信息将不会显示。</small>
                                </p>
                            </fieldset>
                            <fieldset class="column-right">
                                <p>
                                    <label>来源</label>
                                    <input class="text-input medium-input" type="text" name="copy_from" id="copy_from" />
                                </p>
                                <p>
                                    <label>来源链接</label>
                                    <input class="text-input medium-input" type="text" name="from_link" id="from_link" />
                                </p>
                                <p>
                                    <label>标签</label>
                                    <input class="text-input medium-input" type="text" name="tags" id="tags" />
                                    <br /><small>各个标签之间请用","隔开（注：此处为英文半角符号）</small>
                                </p>
							    <p>
                                    <label>其它参数</label>
                                    <select name="recommend" id="recommend">
                              		    <option value="0" selected="selected">默认不推荐</option>
                              		    <option value="1">推荐</option>
                            	    </select>
								    <select name="status" id="status">
				          			    <option value="0" selected="selected">默认显示</option>
				          			    <option value="1">隐藏</option>
                        		    </select>
                                    <select name="istop" id="istop">
				          			    <option value="0" selected="selected">默认不置顶</option>
				          			    <option value="1">置顶</option>
              					    </select>
                                    浏览 <input name="view_count" type="text" id="view_count" value="0" size="5" maxlength="12"  />
								    排序 <input name="display_order" type="text" id="display_order" value="0" size="5" maxlength="12"  />
                                    <br /><small>置顶以修改时间倒序排列，即后修改的排在先修改的前面；排序以排列序数倒序排列，默认为0，数字越大，则越靠前</small>
                                </p>
                                <p>
                                    <label>录入时间</label>
                                    <input class="text-input Wdate" type="text" name="create_time" id="create_time" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false,readOnly:true,isShowToday:true})" value="<?php echo date('Y-m-d ')?>" />
                                </p>
						    </fieldset>
						    <div class="clear"></div><!-- End .clear -->
						    <p>
                                <input class="button" type="submit" name="submit" value="提交更新"/>
                                <input class="button" type="reset" name="button" id="button" value="还原重填"/>
						    </p>
					    </div> <!-- End #tab2 -->
                    </form>
				</div> <!-- End .content-box-content -->
			</div> <!-- End .content-box -->
			<div class="clear"></div>
<script type="text/javascript">
    var editor = new baidu.editor.ui.Editor({
        UEDITOR_HOME_URL:'__PUBLIC__/Js/ueditor/',
        iframeCssUrl :'__PUBLIC__/Js/ueditor/themes/default/iframe.css',
        textarea:'content',
        initialContent:''
    });
    editor.render('content');
</script>
			<div id="footer">
				<small> <!-- Remove this notice or replace it with whatever you want -->
						&#169; Copyright 2011 <a href="http://www.qeeyang.com" target="_blank">Qeeyang Technology Co.,Ltd.</a> | Powered by <a href="http://www.y-city.net.cn" target="_blank">Y-city</a>
				</small>
			</div>
            <!-- End #footer -->
		</div>
        <!-- End #main-content -->
	</div>
</body>
</html>