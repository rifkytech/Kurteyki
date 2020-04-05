<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_Site_Meta_Courses extends CI_Model
{

	public $table_lms_courses = 'tb_lms_courses';

	public function read($slug){

		$this->db->select('*');
		$this->db->from($this->table_lms_courses);		
		$this->db->where('permalink',urldecode($slug));
		$this->db->where("time <= NOW()");
		$this->db->where("status = 'Published'");
		$this->db->order_by('time','DESC');
		$query = $this->db->get();

		if ($query->num_rows() < 1) redirect(base_url());

		$courses = $query->row_array();

		return $courses;
	}

}