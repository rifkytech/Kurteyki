<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_Site_Meta_Courses_Category extends CI_Model
{

	public $table_lms_category = 'tb_lms_category'; 	

	public function read($slug){

		$this->db->select('name');
		$this->db->from($this->table_lms_category);		
		$this->db->where('slug',$slug);
		$query = $this->db->get();

		if ($query->num_rows() < 1) redirect(base_url());

		$category = $query->row_array();

		return $category;
	}

}