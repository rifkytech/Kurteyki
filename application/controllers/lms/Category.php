<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends My_Lms{

	public function __construct()
	{
		parent::__construct();

		$this->load->model('lms/_Courses');
		$this->load->model('lms/M_Category');
	}  

	public function index($category)
	{

		$site = $this->site;
		$template = $this->template;
		$widget= $this->widget;	
		$courses = $this->M_Category->data_courses($site,$category);

		$data = [		
			'site' => $site,
			'template' => $template,
			'widget' => $widget,				
			'courses' => $courses
		];
		
		$this->load->view('lms/category/index', $data);
	}

}
