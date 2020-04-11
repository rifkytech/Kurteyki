<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Search extends My_Lms{

	public function __construct()
	{
		parent::__construct();

		$this->load->model('lms/_Courses');
		$this->load->model('lms/M_Search');
	}  

	public function index()
	{

		$keyword = strip_tags($this->input->get('q'));

		$site = $this->site;
		$template = $this->template;
		$widget= $this->widget;	
		$courses = $this->M_Search->data_courses($site,$keyword);		

		$data = [		
			'site' => $site,
			'template' => $template,
			'widget' => $widget,				
			'courses' => $courses
		];
		
		$this->load->view('lms/'.$template['name'].'/search/index', $data);
	}

}
