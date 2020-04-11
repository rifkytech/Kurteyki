<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Courses extends My_Lms{

	public function __construct()
	{
		parent::__construct();

		$this->load->model('lms/_Lesson');
		$this->load->model('lms/_Courses');
		$this->load->model('lms/M_Courses');	
	}  

	public function index($slug)
	{

		$site = $this->site;
		$template = $this->template;
		$widget= $this->widget;
		$courses = $this->M_Courses->data_course($site,$slug);

		$data = [		
			'site' => $site,
			'template' => $template,
			'widget' => $widget,			
			'courses' => $courses
		];

		$this->load->view('lms/'.$template['name'].'/courses/index', $data);
	}

}
