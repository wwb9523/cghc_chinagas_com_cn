<?php 
/**
 * 
 * Service(服务单页)
 *
 */

import("AdvModel");
class ServiceModel extends AdvModel
{
    protected $_validate = array(
        array('title', 'require', '标题必须填写', self::MODEL_BOTH),
        array('link_label', 'require', '链接标识必须填写', self::MODEL_BOTH),
        array('link_label', '', '标识必须唯一，请更换其它名称！', 0, 'unique', Model:: MODEL_INSERT), // 在新增的时候验证link_label字段是否唯一
        array('content', 'require', '内容必须', Model::MODEL_BOTH),

    );
    protected $_auto = array(
        array('title', 'dHtml', Model::MODEL_BOTH,'function'),
        array('update_time', 'time', Model:: MODEL_UPDATE, 'function'),
        array('create_time', 'time', Model:: MODEL_INSERT, 'function'),
    );
}