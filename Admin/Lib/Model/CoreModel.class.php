<?php 
/**
 * 
 * Core(内核配置)
 *
 */

import("AdvModel");
class CoreModel extends AdvModel
{
	protected $_auto = array(
		array('title', 'dHtml', Model:: MODEL_BOTH, 'function'),
	);
}