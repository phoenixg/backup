<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller {
	
	function __construct() {
		try {
			parent::__construct();
			
			/* extend CI_input  ,a uri like 
			 * http://example.com/index.php/login/gtvo/studio/3000001/id/123
			 * will be translate to
			 *  controller :login
			 *    function : gtvo
			 *    $_POST : array("studio" => 3000001, "id" => 123)
			 *    use $this->input->post("studio") or $this->input->post() 
			 *    to get it/them at controllers
			 */
			$input_array = $this->uri->uri_to_assoc(3);
			if (is_array($input_array)) {
				foreach ($input_array as $index => $value) {
					$this->input->set_to_post($index, $value, true);
				}
			}
			
			//echo $this->input->get_suffix();
		}
		catch(Exception $e)	{
			throw new RuntimeException($e);
		}
	}
	

	
	
}