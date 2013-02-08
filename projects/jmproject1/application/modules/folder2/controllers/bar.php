<?php
class Bar extends MY_Controller{
	public function __construct()
	{
		parent::__construct();
	}


	public function index()
	{
		$this->load->module('folder1/foo');
		//or
		//$this->load->module('module');
		//then u can use
		$this->foo->index();


		$a = modules::run('folder1/foo/aaa');
		var_dump($a);
	}

}
