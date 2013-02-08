<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends MX_Controller
{
	function __construct()
	{
		parent::__construct();
		
		$this->load->library('asset');
		
		log_message('debug','MY Controller class loaded');
	}
}

//include_once("Admin_controller.php");
