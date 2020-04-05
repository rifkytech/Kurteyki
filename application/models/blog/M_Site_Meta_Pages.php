<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_Site_Meta_Pages extends CI_Model
{

	public $table_blog_pages = 'tb_blog_pages';		

	public function read($slug){
		$this->db->select('
			title,
			permalink,
			time,	
			updated,	
			content,
			');
		$this->db->from($this->table_blog_pages);		
		$this->db->where_in('permalink',$slug);
		$query = $this->db->get();

		if ($query->num_rows() < 1) redirect(base_url());

		$pages = $query->row_array();

		return $pages;
	}

}