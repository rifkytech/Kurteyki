<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_Courses extends CI_Model
{

	public $table_lms_courses = 'tb_lms_courses';
	public $table_lms_courses_section = 'tb_lms_courses_section';
	public $table_lms_courses_lesson = 'tb_lms_courses_lesson';         

	public $table_lms_user_courses = 'tb_lms_user_courses';

	public function data_course($site,$slug){

		$courses =  $this->query_post($site,$slug);

		/**
		 * check user courses, wishlist
		 */
		$user_courses = $this->_Courses->check_courses($courses);
		$user_wishlist = $this->_Courses->check_wishlist($courses);		

		$build_lesson = $this->_Lesson->build_lesson($courses);

		// echo json_encode($build_lesson);
		// exit;

		$related_post = $this->related_post($site,$courses['id'],$courses['id_category']);

		return array_merge($courses,$user_courses,$user_wishlist,$build_lesson,$related_post);
	}

	public function query_post($site,$slug){
		$this->db->select('*');
		$this->db->from($this->table_lms_courses);		
		$this->db->where('permalink',urldecode($slug));
		$this->db->order_by('time','DESC');
		$query = $this->db->get();

		$read = $query->row_array();

		/**
	    * Build Courses
	    */		
		$post = $this->_Courses->read_long_single($site,$read);

		return $post;
	}

	public function related_post($site,$id_courses,$id_category) {

		$this->db->select('*');
		$this->db->from($this->table_lms_courses);		
		$this->db->limit(3);
		$this->db->where("time <= NOW()");
		$this->db->where("status = 'Published'"); 
		$this->db->where('id !=',$id_courses);  
		$this->db->where('id_category',$id_category);  
		$this->db->order_by('time','DESC');
		$query = $this->db->get();

		$count = $query->num_rows();


		if ($count < 1) return [
			'related_post' => false
		];

		$read = $query->result_array();

		/**
	    * Build Courses
	    */		
		$courses = $this->_Courses->read_long($site,$read);

		return [
			'related_courses' => $courses
		];
	}	

}