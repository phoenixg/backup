<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 加载Asset的类
 * 
 * 用于加载各自页面自己的css、js、icon等等
 * 用于处理跟asset有关的操作
 * @author gopher.huang@gmail.com
 *
 */

class CI_Asset {
	
	private $_CI;
	private $_assets_url;
	
	function __construct()
	{
		$this->_CI = & get_instance();
		$this->_assets_url = $this->_CI->config->item('assets_url');
		
    	log_message('debug','CI Asset class loaded');
	}
	
	/**
	 * add asset
	 * 
	 * eg. $this->asset->add_asset(basename(dirname(dirname(__FILE__))), 'glossary_show', 'css')
	 * 
	 * @param module name
	 * @param file name
	 * @param asset type
	 */
	public function add_asset($module_name, $file_name, $asset_type)
	{
		return $this->_assets_url . $asset_type . '/' . $module_name . '/' . $file_name . '.' . $asset_type;
	}
	
	
	
	
	
}
