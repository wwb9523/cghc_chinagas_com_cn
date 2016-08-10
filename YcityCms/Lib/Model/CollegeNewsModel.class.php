<?php
/**
 * Created by PhpStorm.
 * User: APTX
 * Date: 2016/7/11
 * Time: 9:59
 */
import("AdvModel");
class CollegeNewsModel extends AdvModel
{
	protected $_validate = array(
		array('title', 'require', '标题必填', 0, '', Model:: MODEL_BOTH),
		array('content', 'require', '内容必填', 0,'', Model:: MODEL_BOTH),
	);
	protected $_auto = array(
		array('title', 'dHtml', Model:: MODEL_BOTH, 'function'),
		array('start_time', 'strtotime', Model:: MODEL_BOTH, 'function'),
		array('end_time', 'strtotime', Model:: MODEL_BOTH, 'function'),
		array('create_time', 'time', Model:: MODEL_BOTH, 'function'),
	);
}