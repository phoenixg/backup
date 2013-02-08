<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Error extends MY_Controller {

	public function show_404()
	{
		$this->load->view('404');
	}

}
