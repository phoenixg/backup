<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends MY_Controller {

	public function index()
	{
		$this->load->view('admin/login_index');
	}
	
	public function handle(){
		if (!filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL))
		{
			echo 'not valid email';
			die;
		}
		
		if (!filter_input(INPUT_POST, 'password', FILTER_SANITIZE_MAGIC_QUOTES))
		{
			echo 'not valid password';
			die;
		}
		
		$email = $this->input->post('email', TRUE);
		$password = $this->input->post('password', TRUE);
		
		$this->load->model('user_model');
		$result = $this->user_model->validate_user($email, $password);
		
		//debug
		$this->fb->log($result);
		
		if ($result === FALSE)
		{
			echo 'invalid password';
			die;
		}
		
		//set session
		$this->session->set_userdata('test', 'test_value'); 
		
		$this->load->helper('url');
		redirect(site_url().'/dashboard/main/');
		die;
	}

}















