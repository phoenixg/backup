<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

//http://10.254.241.93/att/doc/hf/schedule/index.php/schdl/index


class Schdl extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
	}
	
	/*
	public function test()
	{
		$this->load->model('m_schedule');
		$test = $this->m_schedule->getEventAllByNameAndDate('黄峰','2011-11-19');
		echo $test[0]->detail;
		echo '<br />';
		echo $test[1]->detail;
	}
	*/
	
	public function index()
	{
		$this->load->helper('cookie');
		
		//whether the first time to come
		
		
		
		
		
		
		
		
		
		
		$prev = $this->input->post("prev");
		$next = $this->input->post("next");
		
		//initialize the parameters
		if (!$prev && !$next){//default
			$date_start = date('Y-m-d');
			$data['date_start'] = $date_start;
			$date_end = date("Y-m-d",strtotime("+2weeks",strtotime($date_start)));
			
			$cookie = array(
                   'name'   => 'date_start',
                   'value'  => $date_start,
                   'expire' => '10000',
                   'path'   => '/',
             );
    	$this->input->set_cookie($cookie); 
			
		}elseif ($next == 'true' && !$prev){//next
			$date_start = $this->input->cookie('date_start', TRUE);
			
			$data['date_start'] = $date_start = date("Y-m-d",strtotime("+2weeks",strtotime($date_start)));;
			$date_end = date("Y-m-d",strtotime("+2weeks",strtotime($date_start)));

			$cookie = array(
                   'name'   => 'date_start',
                   'value'  => $date_start,
                   'expire' => '10000',
                   'path'   => '/',
               );
			$this->input->set_cookie($cookie); 
		}elseif($prev == 'true' && !$next) {//prev
			$date_start = $this->input->cookie('date_start', TRUE);
			
			$data['date_start'] = $date_start = date("Y-m-d",strtotime("-2weeks",strtotime($date_start)));;
			$date_end = date("Y-m-d",strtotime("+2weeks",strtotime($date_start)));
			
			$this->load->helper('cookie');
			$cookie = array(
                   'name'   => 'date_start',
                   'value'  => $date_start,
                   'expire' => '10000',
                   'path'   => '/',
               );
			$this->input->set_cookie($cookie); 
		}else{
			$this->load->helper('url');
			redirect('/schdl/index', 'refresh');
		}
		
		$this->load->helper('dateplus');
		$date_len = getChaBetweenTwoDate($date_end, $date_start);
		$data['date_len'] = $date_len;	
		
		//$person_list = $this->config->item('person_list');
		//$data['person_list'] = $person_list;
		//member array
		$this->load->model('m_schedule');
		$allMemberTotal = $this->m_schedule->getAllMemberTotal();
		$data['allMemberTotal'] = $allMemberTotal;
		//$data['allMemberName'] = $allMemberName;

		//date array
		for($i=0;$i<$date_len;$i++){
			$date_array[] = date('Y-m-d',strtotime('+'.$i.'days',strtotime($date_start)));
		}
		$data['date_array'] = $date_array;
		
		//loop:events
		$this->load->helper('date');
		foreach ($allMemberTotal as $info)
		{
			foreach ($date_array as $k => $date)
			{
				//echo $name['name'] . '|' .$date .'<br />';
				$tmp = $this->m_schedule->getEventAllByNameAndDate($info['name'],$date);
				if (count($tmp) > 1) {//0:no result, 1:only one event, >1:multi event
						$tmpArr['event_id'] = array();
						$tmpArr['start_time'] = array();
						$tmpArr['end_time'] = array();
						$tmpArr['detail'] = array();
					foreach ($tmp as $evt){
						//var_dump($evt->event_id);
						$tmpArr['event_id'][] = $evt->event_id;// the former is: $tmpArr['event_id'][] 
						$tmpArr['start_time'][] = $evt->start_time;
						$tmpArr['end_time'][] = $evt->end_time;
						$tmpArr['detail'][] = $evt->detail;
						/*
						echo '<pre>';
						var_dump($tmpArr);
						echo '</pre>';
						*/
					}
				}	else{
					//if (!empty($tmp)) echo $tmp[0]->detail;
					$tmpArr['event_id'] = (!empty($tmp)) ? $tmp[0]->event_id : '';
					$tmpArr['start_time'] = (!empty($tmp)) ? $tmp[0]->start_time : '';
					$tmpArr['end_time'] = (!empty($tmp)) ? $tmp[0]->end_time : '';
					$tmpArr['detail'] = (!empty($tmp)) ? $tmp[0]->detail : '';
				}			
				
				$events[$info['name']][$date] = $tmpArr;
			
			}
		}
		$data['events'] = $events;
				
		
		$this->load->view('v_schdl',$data);
		
	
	}
	
	public function ajaxaddevent()
	{
		$name = $this->input->post("name");
		$date = $this->input->post("date");
		$start_time_h = $this->input->post("start_time_h");
		$start_time_m = $this->input->post("start_time_m");
		$end_time_h = $this->input->post("end_time_h");
		$end_time_m = $this->input->post("end_time_m");
		$detail = $this->input->post("detail");
		$n_member = $this->input->post("n_member");
		
		
		$this->load->model('m_schedule');
		
		$query = $this->m_schedule->addEvent($n_member,$name, $date, $start_time_h, $start_time_m, $end_time_h, $end_time_m, $detail);
		
		if ($query === TRUE)
		{
			echo '1';//stands for ok
		}else{
			echo '0';
		}
	}

	public function ajaxaddstaff()
	{
		$name = $this->input->post("name");
		$this->load->model('m_schedule');
		
		$query = $this->m_schedule->addStaff($name);
		
		if($query === TRUE)
		{
			echo '1';
		}else{
			echo '0';
		}
	}
	
	public function ajaxdelstaff()
	{
		$name = $this->input->post("name");
		$this->load->model('m_schedule');
		
		$query = $this->m_schedule->delstaff($name);
		
		if ($query === TRUE) {
			echo '1';
		}else{
			echo '0';
		}
	}
	
	
	
	public function ajaxgetevent()
	{
		$name = $this->input->post("name");
		$date = $this->input->post("date");
		
		$this->load->model('m_schedule');
		
		$tmp = $this->m_schedule->getEventAllByNameAndDate($name, $date);
		if(count($tmp) > 1){
			foreach($tmp as $evt){
				$event_id[] = $evt->event_id;
				$start_time[] = $evt->start_time;
				$end_time[] = $evt->end_time;
				$detail[] = $evt->detail;
			}
		}else{
			$event_id = (!empty($tmp)) ? $tmp[0]->event_id : '';
			$start_time = (!empty($tmp)) ? $tmp[0]->start_time : '';
			$end_time = (!empty($tmp)) ? $tmp[0]->end_time : '';
			$detail = (!empty($tmp)) ? $tmp[0]->detail : '';
		}		
		
		echo json_encode(array("stat" => 1,
																	"event_id" => $event_id,
																	"start_time" => $start_time,
																	"end_time" => $end_time,
																	"detail" => $detail));
		
		
		
	}

	//modify the event
	public function ajaxmodifyevent()
	{
		$selected_date = $this->input->post('selected_date');
		$selected_name = $this->input->post('selected_name');
		
		$event_id = $this->input->post('event_id');
		$start_time = $this->input->post('start_time');
		$start_time = date('Y-m-d H:i:s',strtotime($start_time));
		$end_time = $this->input->post('end_time');
		$end_time = date('Y-m-d H:i:s',strtotime($end_time));
		$detail = $this->input->post('detail');
		
		$this->load->model('m_schedule');
		$query = $this->m_schedule->modifyEvent($event_id, $start_time, $end_time, $detail, $selected_date, $selected_name);
		if ($query === TRUE)
		{
			echo '1';//stands for ok
		}else{
			echo '0';
		}
	}
	
	
	//delete the event
	public function ajaxdeleteevent()
	{
		$event_id = $this->input->post('event_id');
		$this->load->model('m_schedule');
		$query = $this->m_schedule->deleteEvent($event_id);
		if ($query === TRUE)
		{
			echo '1';
		}else{
			echo '0';
		}
	}//end of ajaxdeleteevent
	
	
	//switch the language
	public function switchlang() {
		$lang = $this->input->get_post("lang");
		$cookie = array('name'   => 'schedule_user_lang',
                   'value'  => $lang,
                   'expire' => '86400',
                   'path'   => '/'
		);
		$this->input->set_cookie($cookie);
		
		$this->load->helper('url');
		redirect("/schdl/index");
	}
}






