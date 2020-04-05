<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends My_Site{

	public $redirect_login = 'auth';
	public $redirect_register = 'auth/register';	
	public $redirect_dashboard = 'user/courses';		

	public function __construct(){
		parent::__construct();

		$this->_Language->load();
		
		$this->load->library('form_validation');

		$this->load->model('user/M_Auth');
	}

	public function index()
	{

		$this->M_Auth->check('exist','user','user/profile');

		$this->session->set_userdata('csrf_code', substr(base_convert(sha1(uniqid(mt_rand())), 16, 36), 0, 32));

		$site = $this->site;

		$data = array(
			'title' => $this->lang->line('login').' '.$site['title'],
			'classbody' => 'o-page--center',
			'site' => $site
		);

		$this->load->view('user/auth/login',$data);
	}

	public function process_login(){
		
		$login = $this->M_Auth->login();

		if (!empty($this->input->post('redirect'))) {
			$redirect = '?'.http_build_query(['redirect' => $this->input->post('redirect')]);
			$this->redirect_login = $this->redirect_login.$redirect;
			$this->redirect_dashboard = urldecode($this->input->post('redirect'));
		}else{
			$this->redirect_dashboard = base_url($this->redirect_dashboard);
		}

		if ($login == 'invalid') {

			$this->session->set_flashdata([
				'message' => true,
				'message_type' => 'warning',
				'message_text' => $this->lang->line('invalid_csrf'),
			]);

			redirect(base_url($this->redirect_login));

		}elseif ($login == 'success') {

			redirect($this->redirect_dashboard);

		}elseif ($login == 'not_exist') {

			$this->session->set_flashdata([
				'message' => true,
				'message_type' => 'danger',
				'message_text' => $this->lang->line('failed_login'),
			]);

			redirect(base_url($this->redirect_login));
		}

	}

	public function register(){

		$this->M_Auth->check('exist','user','user/profile');

		$this->M_Auth->set_validation_register();

		if($this->form_validation->run() != false){

			$register = $this->M_Auth->register();

			if ($register == 'invalid') {

				$this->session->set_flashdata([
					'message' => true,
					'message_type' => 'warning',
					'message_text' => $this->lang->line('invalid_csrf'),
				]);

				redirect(base_url($this->redirect_register));
			}elseif ($register == 'success') {

				$this->session->set_flashdata([
					'message' => true,
					'message_type' => 'success',
					'message_text' => $this->lang->line('success_register'),
				]);

				redirect(base_url($this->redirect_login));

			}else{
				
				$this->session->set_flashdata([
					'message' => true,
					'message_type' => 'warning',
					'message_text' => $this->lang->line('failed_create'),
				]);

				redirect(base_url($this->redirect_register));
			}

		}else{

			$this->session->set_userdata('csrf_code', substr(base_convert(sha1(uniqid(mt_rand())), 16, 36), 0, 32));

			$site = $this->site;

			$data = array(
				'title' => $this->lang->line('register').' '.$site['title'],
				'classbody' => 'o-page--center',
				'site' => $site
			);

			$this->load->view('user/auth/register',$data);
		}		
	}

	public function process_logout(){

		$logout = $this->M_Auth->logout();

		if ($logout == 'success') {
			redirect(base_url());
		}
	}

}
