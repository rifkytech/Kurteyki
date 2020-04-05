<?php
defined('BASEPATH') OR exit('No direct script access allowed');

ini_set('max_execution_time', 0);
ini_set('memory_limit', '-1');

class Install extends CI_Controller {

	public function __construct(){
		parent::__construct();

		$this->load->model('M_Install_Table');
	}

	public function index()
	{

		if ($this->input->post()) {
			$this->process();
			exit;
		}

		$data = [
			'title' => 'Install App'
		];

		$this->load->view('install/index',$data);
	}

	public function process(){

		if ($this->session->userdata('DB_HOST')) {
			$this->session->sess_destroy();
		}
		$install_table = $this->M_Install_Table->install_table(); 

		if ($install_table == 'error_database_connection') {
			$this->session->set_flashdata([
				'message' => true,
				'message_type' => 'warning',
				'message_text' => 'Unable to connect to your database server using the provided settings.',
			]);
		}elseif ($install_table == 'success') {

			$this->session->set_flashdata([
				'message' => true,
				'message_type' => 'info',
				'message_text' => 'Success install database table.',
			]);

			/**
			 * Config file database application
			 */
			$file_database = file_get_contents('install/database_application.txt');
			$file_database = str_replace('[DB_HOST]', $this->session->userdata('DB_HOST'), $file_database);
			$file_database = str_replace('[DB_USER]', $this->session->userdata('DB_USER'), $file_database);
			$file_database = str_replace('[DB_PASS]', $this->session->userdata('DB_PASS'), $file_database);
			$file_database = str_replace('[DB_NAME]', $this->session->userdata('DB_NAME'), $file_database);
			file_put_contents('application/config/database.php', $file_database);

			/**
			 * Replace root index file
			 */
			$file_index = file_get_contents('install/index_application.txt');
			file_put_contents('index.php', $file_index);

		}else {
			$this->session->set_flashdata([
				'message' => true,
				'message_type' => 'danger',
				'message_text' => 'Error install database table.',
			]);
		}

		redirect(base_url());
	}
}
