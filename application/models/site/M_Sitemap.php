<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_Sitemap extends CI_Model
{

	public $table_lms_courses = 'tb_lms_courses';
	public $table_blog_post = 'tb_blog_post';
	public $table_blog_pages = 'tb_blog_pages';	

	public function loop_courses($splid){
		$total_post = $this->db
		->select("id")
		->from($this->table_lms_courses)
		->where("time <= NOW()")
		->where("status = 'Published'")        
		->get()->num_rows();

		return ceil($total_post / $splid);
	}

	public function loop_blog_post($splid){
		$total_post = $this->db
		->select("id")
		->from($this->table_blog_post)
		->where("time <= NOW()")
		->where("status = 'Published'")        
		->get()->num_rows();

		return ceil($total_post / $splid);
	}

	public function loop_blog_pages($splid){
		$total_post = $this->db
		->select("id")
		->from($this->table_blog_pages)
		->where("time <= NOW()")
		->where("status = 'Published'")        
		->get()->num_rows();

		return ceil($total_post / $splid);
	}	

	public function sitemap_courses($page,$splid){

		$limit = $splid;

		if ($page == 1) {
			$index = 0;
		}else {
			$index = $limit * ($page - 1);
		}

		$data = $this->db
		->select("permalink")
		->from($this->table_lms_courses)
		->where("time <= NOW()")
		->where("status = 'Published'")
		->limit($limit,$index)
		->order_by('id','ASC')
		->get();

		if ($data->num_rows() < 1) return false;

		return $data->result_array();
	}	

	public function sitemap_blog_post($page,$splid){

		$limit = $splid;

		if ($page == 1) {
			$index = 0;
		}else {
			$index = $limit * ($page - 1);
		}

		$data = $this->db
		->select("permalink")
		->from($this->table_blog_post)
		->where("time <= NOW()")
		->where("status = 'Published'")
		->limit($limit,$index)
		->order_by('id','ASC')
		->get();

		if ($data->num_rows() < 1) return false;

		return $data->result_array();
	}

	public function sitemap_blog_pages($page,$splid){

		$limit = $splid;

		if ($page == 1) {
			$index = 0;
		}else {
			$index = $limit * ($page - 1);
		}

		$data = $this->db
		->select("permalink")
		->from($this->table_blog_pages)
		->where("time <= NOW()")
		->where("status = 'Published'")
		->limit($limit,$index)
		->order_by('id','ASC')
		->get();

		if ($data->num_rows() < 1) return false;
		
		return $data->result_array();
	}	

}