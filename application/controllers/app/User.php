<?php  
defined('BASEPATH') OR exit('no direct script access allowed');

class User extends MY_App 
{

	public $index = 'app/user/index';
	public $redirect = 'app/user';

	public function __construct(){
		parent::__construct();

		$this->load->model('app/M_User');	
	}


	public function index(){

		$data = [
			'title' => 'User',
		];

		$this->load->view($this->index,$data);
	}

	public function process(){

		$password = $this->M_User->change_password();

		if ($password == 'error_old_password') {

			$this->session->set_flashdata([
				'message' => true,
				'message_type' => 'danger',
				'message_text' => $this->lang->line('error_old_password'),
			]);

		}
		
		if ($password == 'error_confirm_password') {

			$this->session->set_flashdata([
				'message' => true,
				'message_type' => 'danger',
				'message_text' => $this->lang->line('error_confirm_password'),
			]);

		}

		if ($password == 'success') {
			$this->session->set_flashdata([
				'message' => true,
				'message_type' => 'info',
				'message_text' => $this->lang->line('sucess_change'),
			]);
		}

		redirect(base_url($this->redirect));

	}
}
