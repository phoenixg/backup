<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Home
 */
class Home extends Admin_Controller
{
	function Home()
	{
		parent::Admin_Controller();

		log_message('debug','BackendPro : Home class loaded');
	}
	
	function index()
	{

		// Include dashboard Javascript code
		$this->bep_assets->load_asset('bep_dashboard');

		// Load the dashboard library
		$this->load->module_library('dashboard','dashboard');

		// Load any widget libraries
		$this->load->module_library('dashboard','Statistic_widget');

		// Assign widgets to dashboard
		$this->dashboard->assign_widget(new widget($this->lang->line('dashboard_example'),$this->lang->line('dashboard_example_body')),'left');
		$this->dashboard->assign_widget(new widget($this->lang->line('dashboard_statistics'),$this->statistic_widget->create()),'right');

		// Load dashboard onto page
		$data['dashboard'] = $this->dashboard->output();


		// Display Page
		$data['header'] = $this->lang->line('backendpro_dashboard');
		$data['page'] = $this->config->item('backendpro_template_admin') . "home";
		$this->load->view($this->_container,$data);

	}
}
