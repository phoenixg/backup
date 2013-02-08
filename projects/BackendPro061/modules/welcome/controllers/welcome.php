<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Welcome
 *
 * The default welcome controller
 */
class Welcome extends Public_Controller
{
	function Welcome()
	{
		parent::Public_Controller();
	}

	function index()
	{
		// Display Page
		
		$data['header'] = "欢迎！";
		$data['page'] = $this->config->item('backendpro_template_public') . 'welcome';
		$data['module'] = 'welcome';
		
		//var_dump($this->_container);//string(20) "public/container.php"

		$this->load->view($this->_container,$data);
	}
}


