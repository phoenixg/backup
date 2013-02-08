<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');
	
/**
 * Bread Crumb Generator
 * 
 * @author huangfeng
 * 
 * Usage:
		$this->breadcrumb->init_crumb(array('DELIMITER' => '&nbsp;&gt;&nbsp', 'HTML_TYPE' => 'anchor'));//optional (default)
		or
		$this->breadcrumb->init_crumb(array('DELIMITER' => '|', 'HTML_TYPE' => 'anchor')); //optional
		or
		$this->breadcrumb->init_crumb(array('HTML_TYPE' => 'ul')); //optional

  		$this->breadcrumb->append_crumb();
  		or
		$this->breadcrumb->append_crumb('aliasA', 1);
		$this->breadcrumb->append_crumb('aliasB', 2);
		$this->breadcrumb->append_crumb('aliasC', 3);
		
		$this->breadcrumb->generateHTML();
 */

class Breadcrumb {
	private static $_breadcrumb = array();
	private $_CI;
	private $_delimiter;
	private $_css_id;
	private $_html_type;
	protected $home;
	protected $index;
	protected $base_url;
	
	/**
	 * 初始化
	 */
	public function __construct()
	{
		//获取CI实例
		$this->_CI = & get_instance();

		//加载面包屑配置文件
		$this->_CI->config->load('breadcrumb');
		
		//获取基础配置信息
		$this->_delimiter = $this->_CI->config->item('breadcrumb_delimiter');
		$this->_css_id = $this->_CI->config->item('breadcrumb_css_id');
		$this->_html_type = $this->_CI->config->item('breadcrumb_html_type');
		$this->home = $this->_CI->config->item('breadcrumb_home');
		$this->index = $this->_CI->config->item('breadcrumb_index');
		$this->base_url = $this->_CI->config->item('base_url');
		
		//初始化
		$this->_init_crumb_arr();
		
		//添加log
		log_message('debug', "Breadcrumb Class Initialized");
	}
	
	/**
	 * 初始化自定义设置
	 */
	public function init_crumb($config = array())
	{
		//改变成用户自定义的面包屑设置
		$this->_delimiter = isset($config['DELIMITER']) ? $config['DELIMITER'] : $this->_delimiter;
		$this->_html_type = isset($config['HTML_TYPE']) ? $config['HTML_TYPE'] : $this->_html_type;
	}

	/**
	 * 初始化面包屑数组
	 */
	private function _init_crumb_arr()
	{
		$this->_breadcrumb = array(
								'0' => array($this->home => $this->base_url . $this->index . '/')
		);
	}
	
	/**
	 * 添加一条面包屑
	 * @param $alias
	 */
	public function append_crumb($alias = '', $segments = null)
	{
		$cnt = count($this->_breadcrumb);
	
		$seg_num = ($segments == null) ? $cnt : $segments;
		
		if (!in_array($seg_num, array('1','2','3')))
		{
			return;
		}
		
		$seg1 = $this->_CI->uri->segment(1,'');
		$seg2 = $this->_CI->uri->segment(2,'');
		$seg3 = $this->_CI->uri->segment(3,'');
		
		$base_url_full = $this->_breadcrumb['0'][$this->home];
		
		if ($seg_num == 1)
		{	
			$display = ($alias == '') ? strtoupper($seg1) : strtoupper($alias);
			$this->_breadcrumb[] = array($display => $base_url_full . $seg1 . '/');
		}
		
		if ($seg_num == 2)
		{
			$display = ($alias == '') ? strtoupper($seg2) : strtoupper($alias);
			$this->_breadcrumb[] = array($display => $base_url_full . $seg1 . '/' . $seg2 . '/');
		}
		
		if ($seg_num == 3) 
		{
			$display = ($alias == '') ? strtoupper($seg3) : strtoupper($alias);
			$this->_breadcrumb[] = array($display => $base_url_full . $seg1 . '/' . $seg2 . '/' . $seg3 . '/');
		}
		
	}
	
	/**
	 * 生成面包屑HTML
	 */
	public function generateHTML()
	{	
		switch ($this->_html_type) {
			case 'anchor':
				$html = '<div id="'.$this->_css_id.'">';
				foreach ($this->_breadcrumb as $crumb) 
				{
					foreach ($crumb as $display => $addr)
					{
						$html .= '<a href="'. $addr .'">' . $display . '</a>' . $this->_delimiter;
					}
				}
				
				$html = rtrim($html, $this->_delimiter).'</div>';
			break;
			
			case 'ul':
				$html = '<ul id="'.$this->_css_id.'">';
				foreach ($this->_breadcrumb as $crumb)
				{
					foreach ($crumb as $display => $addr)
					{
						$html .= '<li><a href="'. $addr .'">' . $display . '</a></li>';
					}
				}
				$html .= '</ul>';
			break;
		}

		return $html;
	}
}
