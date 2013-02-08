<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Main extends MY_Controller {

	public function __construct()
	{

	}
	
	
	public function index()
	{
		$this->load->view('dashboard/main');
	}

}
