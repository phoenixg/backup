<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Schedule extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
	}
	
	public function index()
	{
		$date_start = date('Y-m-d');
		$data['date_start'] = $date_start;
		$date_end = date("Y-m-d",strtotime("+1weeks",strtotime($date_start)));
		
		$this->load->helper('date');
		$date_len = getChaBetweenTwoDate($date_end, $date_start);
		$data['date_len'] = $date_len;	
		
		$person_list = $this->config->item('person_list');
		$data['person_list'] = $person_list;

		for($i=0;$i<$date_len;$i++){
			$date_array[] = date('Y-m-d',strtotime('+'.$i.'days',strtotime($date_start)));
		}
		$data['date_array'] = $date_array;
		
		$this->load->model('m_schedule');
		foreach ($person_list as $person){
			foreach ($date_array as $date){
				$issue[$person][$date] = $this->m_schedule->getIssuesByDateAndPerson($date,$person);
			}
		}
		$data['issue'] = $issue;
		
		$this->load->view('v_schedule',$data);
	}
	
	
	
}
