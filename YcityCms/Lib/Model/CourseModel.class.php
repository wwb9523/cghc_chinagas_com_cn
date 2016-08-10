<?php
/**
 * Created by PhpStorm.
 * User: APTX
 * Date: 2016/7/21
 * Time: 14:11
 */
import("AdvModel");
class CourseModel extends AdvModel
{
	protected $_validate = array(
		array('title', 'require', '标题必填', 0, '', Model:: MODEL_BOTH),
	);
	protected $_auto = array(
		array('title', 'dHtml', Model:: MODEL_BOTH, 'function'),
		array('create_time', 'time', Model:: MODEL_INSERT, 'function'),
		array('update_time', 'time', Model:: MODEL_UPDATE, 'function'),
	);
}