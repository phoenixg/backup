<?php

class M_schedule extends CI_Model{
	
	var $sch_issues = 'sch_issues';
	
	function __construct()
	{
		parent::__construct();
	}
	
	//$date : YYYY-mm-dd
	public function getIssuesByDateAndPerson($date,$person)
	{
		$query = $this->db->query("SELECT sch_issues.issue_content FROM sch_issues 
									WHERE sch_issues.issue_day = '$date' AND sch_issues.person = '$person';");
		$result = $query->result_array();

		return $result;
	}
	
	//decrepted
	public function getAllMemberName()
	{
		$query = $this->db->query("SELECT name FROM wbt_members");
		$result = $query->result_array();
		return $result;
	}
	
	public function getAllMemberTotal()
	{
		$query = $this->db->query("SELECT member_no,name,department FROM wbt_members ORDER BY order_fld;");
		$result = $query->result_array();
		return $result;
	}
	
	public function getEventByNameAndDate($name, $date)
	{
		$sql = "
			SELECT wbt_event.detail 
			FROM wbt_event
			INNER JOIN wbt_schedule 
			ON wbt_event.event_id=wbt_schedule.event_id 
			INNER JOIN wbt_members 
			ON wbt_members.member_no=wbt_schedule.member_no
			WHERE wbt_members.`name`='$name' AND wbt_schedule.`date`='$date';";
		
		$query = $this->db->query($sql);

		return $query->result();
	
	}
 	
	public function getEventAllByNameAndDate($name, $date)
	{
		$sql = "
			SELECT wbt_event.event_id,wbt_event.start_time,wbt_event.end_time,wbt_event.detail
			FROM wbt_event
			INNER JOIN wbt_schedule 
			ON wbt_event.event_id=wbt_schedule.event_id 
			INNER JOIN wbt_members 
			ON wbt_members.member_no=wbt_schedule.member_no
			WHERE wbt_members.`name`='$name' AND wbt_schedule.`date`='$date' ORDER BY wbt_event.start_time ASC;";
		
		$query = $this->db->query($sql);

		return $query->result();
		//var_dump($query->result());
	}
	
	public function modifyEvent($event_id, $start_time, $end_time, $detail,
																				$selected_date, $selected_name)
	{
		$sql = "SELECT wbt_event.event_id FROM wbt_event WHERE wbt_event.event_id = '$event_id';";
		$this->db->query($sql);
		if ($this->db->affected_rows() > 0 ){
			$sql = "UPDATE wbt_event SET 
										wbt_event.start_time='$start_time',
										wbt_event.end_time='$end_time',
										wbt_event.detail='$detail' 
								WHERE wbt_event.event_id='$event_id';";
			if ($this->db->query($sql)) 
			{
				return TRUE;
			}else{
				return FALSE;
			}
		}else{//else for affected_rows()
			$sql = "INSERT INTO wbt_event(wbt_event.event_id,
																							wbt_event.start_time,
																							wbt_event.end_time,
																							wbt_event.detail) 
								VALUES('','$start_time','$end_time','$detail');";
			if($this->db->query($sql)) {
				$event_id = $this->db->insert_id();
				
				//retrieve the member_no
				$sql = "SELECT wbt_members.member_no FROM wbt_members WHERE wbt_members.NAME= '$selected_name';";
				$selected_member_no = $this->db->query($sql)->row()->member_no;
				
				//insert
				$sql = "INSERT INTO wbt_schedule(wbt_schedule.id,
																										wbt_schedule.`date`,
																										wbt_schedule.member_no,
																										wbt_schedule.event_id) 
									VALUES('','$selected_date','$selected_member_no','$event_id');";
				if ($this->db->query($sql)){
					return TRUE;
				}else{
					return FALSE;
				}
				
				//return TRUE;
			}else{
				return FALSE;
			}
		}
	}//end of modifyEvent
	
	//deleteEvent
	public function deleteEvent($event_id)
	{
		$sql_1 = "DELETE FROM wbt_event WHERE wbt_event.event_id='$event_id';";
		$sql_2 = "DELETE FROM wbt_schedule WHERE wbt_schedule.event_id='$event_id';";
		
		if ($this->db->query($sql_1) && $this->db->query($sql_2)){
			return TRUE;
		}else{
			return FALSE;
		}
		
	}
	
	//addStaff
	public function addStaff($name)
	{
		$sql = "SELECT COUNT(*) as count FROM wbt_members;";
		$n = $this->db->query($sql)->row()->count;
		$n += 1;
		$sql = "INSERT INTO wbt_members(wbt_members.member_no,wbt_members.`name`,wbt_members.department) 
							VALUES('$n','$name',' ');";
		
		if($this->db->query($sql))
		{
			return TRUE;
		}else{
			return FALSE;
		}
	}
	
	//delStaff
	public function delStaff($name)
	{
		$sql = "DELETE FROM wbt_members WHERE wbt_members.`name`='$name';";
		
		if($this->db->query($sql))
		{
			return TRUE;
		}else{
			return FALSE;
		}
	
	}
	
	
	//addEvent
	public function addEvent($n_member, $name, $date, $start_time_h, $start_time_m, $end_time_h, $end_time_m, $detail)
	{
		//var_dump($name);die;
		
		//find the member_no
		$sql = "SELECT wbt_members.member_no,wbt_members.name,wbt_members.department FROM 
								wbt_members WHERE wbt_members.name='$name';";
		
		$tmp1 = $this->db->query($sql);
		$member_no = $tmp1->result();
		if($member_no){
			$member_no = $member_no[0]->member_no;// firefox works,IE not works
		}else{
			$member_no = $n_member+1; 
		}
		
		//var_dump($member_no);die;
		
		$start_time = '2011-11-11 '.$start_time_h.':'.$start_time_m.':'.'00';
		$end_time = '2011-11-11 '.$end_time_h.':'.$end_time_m.':'.'00';
		
		$sql = "INSERT INTO wbt_event(wbt_event.event_id,
																							wbt_event.start_time,
																							wbt_event.end_time,
																							wbt_event.detail)
								VALUES('','$start_time','$end_time','$detail');";
		if ($this->db->query($sql)){
			$event_id = $this->db->insert_id();
		}
		
		$sql = "INSERT INTO wbt_schedule(wbt_schedule.id,
																								wbt_schedule.date,
																								wbt_schedule.member_no,
																								wbt_schedule.event_id)
							VALUES('','$date','$member_no','$event_id');";
		
		if($this->db->query($sql)){
			return TRUE;
		}else{
			return FALSE;
		}
		
	}//end of addEvent
	
	/*
	//登录验证
	public function validate()
	{
		$this->db->where('username', $this->input->post('username'));
		$this->db->where('password', md5($this->input->post('password')));
		$query = $this->db->get('embryo9_membership');

		if($query->num_rows == 1)
		{
			return TRUE;
		}

	}

	//登录验证：是否为管理员
	public function validate_administrator()
	{
		$this->db->where('username',$this->input->post('username'));
		$this->db->where('password',md5($this->input->post('password')));
		$this->db->where('is_administrator',1);
		$query = $this->db->get('embryo9_membership');

		if ($query->num_rows == 1)
		{
			return TRUE;
		}

	}

	//创建用户
	public function create_member()
	{
		$this->db->where('username', $this->input->post('username'));
		$query = $this->db->get('embryo9_membership');

		if ($query->num_rows == 1)
		{
			$insert = FALSE;
		}
		else
		{
			$new_member_insert_data = array(
	'username' => $this->input->post('username'),
			//'email_address' => $this->input->post('email_address'),
	'password' => md5($this->input->post('password1'))
			);
			$insert = $this->db->insert('embryo9_membership', $new_member_insert_data);
		}

		return $insert;
	}

	//获取用户id
	public function get_userid($username)
	{
		$query = $this->db->query("SELECT `id` FROM `embryo9_membership`
	WHERE `username`='$username';");
		$userid = $query->row()->id;

		return $userid;
	}

	//根据用户id获取昵称 $uid:user_id
	public function get_nickname_by_id($uid)
	{
		$this->db->select('nickname');
		$query = $this->db->get_where('embryo9_membership',array('id'=>$uid));

		$result = $query->row();

		return $result;
	}
*/
}









