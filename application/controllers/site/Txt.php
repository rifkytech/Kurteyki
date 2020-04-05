<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Txt extends MY_Controller{

	public $data;
	public function __construct()
	{
		parent::__construct();

		header("Content-Type: text/plain");

		$this->load->model('site/M_Site');

		$this->data = $this->M_Site->read_site();
	}  

	public function robots_txt()
	{
		echo $this->data['robots_txt'];
	}

	public function ads_txt()
	{
		echo $this->data['ads_txt'];
	}
	
}
