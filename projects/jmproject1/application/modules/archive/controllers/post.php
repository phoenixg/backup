<?php
class Post extends MY_Controller{
	public function index()
	{
		$this->load->view('post_index');
	}
	
	public function show()
	{
		$this->load->model('post_model');
		$this->post_model->
		
		
		$data = array();	
		$this->load->view('post_show',$data);
	}
	
	
	public function upload()
	{
		$this->load->view('post_upload');
	}
	
	

}
