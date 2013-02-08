<?php
class Glossary extends MY_Controller{
	public function index()
	{
	}
	
	public function show()
	{
		$data['title'] = 'glossary title';

		//取数据
		$this->load->model('glossary_model');
		$data['glossary'] = $this->glossary_model->fetch_all();
		
		$this->load->view('glossary_show', $data);
	}

	
	
}
