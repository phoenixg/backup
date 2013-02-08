<?php
class Foo extends MY_Controller{
	public function index()
	{
		$this->load->view('foo_message');
	}
	
	public function aaa()
	{
		echo 'aaaaaaaa';
	}

}
