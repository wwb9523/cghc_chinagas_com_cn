<?php 
/**
 * 
 * Admin(管理员)
 *
 */

import("AdvModel");
class MemberModel extends AdvModel
{
    protected $_validate = array(
        array('username', 'require', '用户名必填', 0, '', Model:: MODEL_BOTH),
        array('password', 'require', '密码必填', 0, '', Model:: MODEL_INSERT),
        array('username', '', '用户已经存在', 1, 'unique', Model:: MODEL_INSERT),
    );
    protected $_auto = array(
        array('create_time', 'time', Model:: MODEL_INSERT, 'function'),
		array('update_time', 'time', Model:: MODEL_UPDATE, 'function'),
    );
}