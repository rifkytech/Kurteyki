<?php defined('BASEPATH') OR exit('No direct script access allowed');

Class My_User extends MY_Site {

	public function __construct(){
		parent::__construct();


		/**
        * Set Language
        */
		$this->_Language->load(['lms']);


		/**
        * Check Auth
        */
		if ($this->uri->segment(3) == 'midtrans_notification'){

		}else{
			$this->load->model('user/M_Auth'); 
			$this->M_Auth->check('not_exist', 'user', 'auth');         
		}

		/**
        * Load Meta Data
        */
		$this->load->model('user/M_Site_Meta');
		$this->site = $this->M_Site_Meta->init(); 
	}    

}