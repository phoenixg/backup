<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Glossary_model extends CI_Model {
	function __construct()
	{
		parent::__construct();
		log_message('debug', 'Glossary_model class loaded');
	}

	function fetch_all()
	{
		$sql = 'SELECT jm_glossary.*, jm_users.user_displayname 
				FROM jm_glossary INNER JOIN jm_users
				ON jm_glossary.glossary_translator_id = jm_users.id
				ORDER BY jm_glossary.glossary_name';
		
		//$test = mysql_query($sql);
		//var_dump($test);
		/*
		$this->db->select('jm_glossary.*, jm_users.user_displayname');
		$this->db->from('jm_glossary');
		$this->db->join('jm_users', 'jm_users.id = jm_glossary.glossary_translator_id');
		return $this->db->get();
		*/
		$this->db->select('jm_glossary.*, jm_users.user_displayname');
		$this->db->from('jm_glossary');
		$this->db->join('jm_users','jm_glossary.glossary_translator_id = jm_users.id','inner');
		$this->db->order_by('jm_glossary.glossary_name');
		return $this->db->get()->result();
		
		
		//return $this->db->limit($num)->order_by('glossary_name')->from('jm_glossary')->get()->result();  
		//var_dump($this->db->limit($num)->order_by('glossary_name')->from('jm_glossary')->get());
		//var_dump($this->db->limit($num)->order_by('glossary_name')->from('jm_glossary')->get()->join('jm_glossary.glossary_translator_id = jm_users.id'));
	}
	






}
