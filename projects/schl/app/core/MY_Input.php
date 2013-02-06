<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class MY_Input extends CI_Input {
	/* extend CI_input  ,a uri like 
			 * http://g.cn/att/index.php/login/gtvo/studio/3000001/id/123
			 * will be translate to
			 *  controller :login
			 *    function : gtvo
			 *    $_POST : array("studio" => 3000001, "id" => 123)
			 *    use $this->input->post("studio") or $this->input->post() 
			 *    to get it/them at controllers
			 */
	/**
	 * set an item to the POST array
	 *
	 * @access	public
	 * @param	string
	 * @param	string
	 * @param	bool
	 * @return	boolean
	 */
	function set_to_post($index, $value, $xss_clean = FALSE) {
		if ($index === false || $value === false) {
			show_error("you get a wrong URI-param structure");
			//log_message("error","you get a wrong URI-param structure");
		}
		
		if (!empty($_POST[$index])) {
			show_error("URI-param rewrited");
			//log_message("error","URI-param rewrited");
		}
		
		if ($xss_clean === TRUE) {
			$_POST[$this->security->xss_clean($index)] = $this->security->xss_clean($value);
		}
		return true;
	
	}
	
	/*
	 *  for a uri like
	 * http://example.com/index.php/login/gtvo/studio/3000001/id/123
	 * it will return string "/studio/3000001/id/123"
	 */
	function get_suffix() {
		$CI = &get_instance();
		$post = $CI->input->post();
		$result = "";
		if (is_array($post)) {
			foreach ($post as $key => $value) {
				$result .= "/" . $key . "/" . $value;
			}
		}
		return $result;
	}
	
}