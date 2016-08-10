<?php 
/**
 * 
 * Product(��Ʒ)
 *
 * @package      	shuguangCMS_Corp
 * @author          shuguang QQ:5565907 <web@sgcms.cn>
 * @copyright     	Copyright (c) 2008-2010  (http://www.sgcms.cn)
 * @license         http://www.sgcms.cn/license.txt
 * @version        	$Id: ProductModel.class.php v2.0 2010-01-01 06:59:03 shuguang $

 */

import("AdvModel");
class VideoModel extends AdvModel
{
	protected $_validate = array(
		array('title', 'require', '�������',0, '', Model:: MODEL_BOTH),
		array('content', 'require', '���ݱ���', 0, '', Model:: MODEL_BOTH),
	);
	protected $_auto = array(
		array('title', 'dHtml', Model:: MODEL_BOTH, 'function'),
		array('link', 'cvHttp', Model:: MODEL_BOTH, 'function'),
		array('tags', 'formatTags', Model:: MODEL_BOTH, 'function'),
		array('create_time', 'strtotime', Model:: MODEL_BOTH, 'function'),
	);
}