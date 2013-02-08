<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class User_model extends CI_Model {
	const TBL_USERS = 'jm_users';
	
	/**
	 * 标识用户的唯一键：{"user_displayname"|"user_email"}
	 *
	 * @access private
	 * @var array
	 */
	private $_unique_key = array('user_displayname', 'user_email');
	
	/**
	 * 构造函数
	 *
	 * @access public
	 * @return void
	 */
	function __construct()
	{
		parent::__construct();
		log_message('debug', 'User_model class loaded');
	}

	/**
	 * 验证用户是否存在
	 *
	 * @access public
	 * @param string - $email
	 * @param string - $password
	 * @return mixed - FALSE/id
	 */
	public function validate_user($email, $password)
	{
		$data = FALSE;
		
		$this->db->where('user_email', $email);
		$query = $this->db->get(self::TBL_USERS);
		
		if($query->num_rows() == 1)
        {
            $data = $query->row_array();
        }
      	
		if(!empty($data))
		{
			$data = ((md5($password) == $data['user_password'])) ? $data : FALSE;
		}
		
		$query->free_result();
		
		return $data;
	}
	
	
	
	
	
	/**
	 * @deprecated
	 */
	public function is_admin( $email, $password )
	{
		$query = "SELECT id FROM jm_users 
					WHERE user_email = '".$email."' AND user_password = '".md5($password)."'";
		$result = $this->db->query($query);
		var_dump($result);
		
		
	}
	






}
