<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends MY_Controller{

	public $index = 'app/auth/index';
	public $redirect_login = 'app/auth';
	public $redirect_dashboard = 'app/dashboard';	

	public function __construct(){
		parent::__construct();

		$this->_Language->load();		

		$this->load->model('app/M_Auth');
	}

	public function index()
	{

		$this->M_Auth->check('exist','status','app');

		$this->session->set_userdata('csrf_code', substr(base_convert(sha1(uniqid(mt_rand())), 16, 36), 0, 32));

		$data = array(
			'title' => APP_NAME,
			'classbody' => 'o-page--center',
		);

		$this->load->view($this->index,$data);
	}

	public function process_login(){
		
		$login = $this->M_Auth->login();

		if ($login == 'invalid') {

			$this->session->set_flashdata([
				'message' => true,
				'message_type' => 'warning',
				'message_text' => $this->lang->line('invalid_csrf'),
			]);

			redirect(base_url($this->redirect_login));

		}elseif ($login == 'success') {

			redirect(base_url($this->redirect_dashboard));

		}elseif ($login == 'not_exist') {

			$this->session->set_flashdata([
				'message' => true,
				'message_type' => 'danger',
				'message_text' => $this->lang->line('failed_login'),
			]);

			redirect(base_url($this->redirect_login));
		}

	}

	public function process_logout(){

		$logout = $this->M_Auth->logout();

		if ($logout == 'success') {
			redirect(base_url($this->redirect_login));
		}
	}

}
