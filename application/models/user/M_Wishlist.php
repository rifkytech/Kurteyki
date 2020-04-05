<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_Wishlist extends CI_Model
{

	public $table_lms_courses = 'tb_lms_courses';
	public $table_lms_user_wishlist = 'tb_lms_user_wishlist';

	public function read($site){

		$this->db->select('
			tb_lms_courses.*
			');
		$this->db->from($this->table_lms_user_wishlist);		
		$this->db->join($this->table_lms_courses, 'tb_lms_courses.id = tb_lms_user_wishlist.id_courses', 'LEFT JOIN');
		$this->db->where("tb_lms_user_wishlist.id_user",$this->session->userdata('id_user')); 
		$this->db->order_by('tb_lms_user_wishlist.id','DESC');
		$user_courses =$this->db->get();

		if ($user_courses->num_rows() < 1) return false;	

		$read =  $user_courses->result_array();	

		$all_courses = $this->_Courses->read_long($site,$read);

		foreach ($all_courses as $courses) {
			$lesson = $this->_Lesson->build_lesson($courses);

			$all_data[] = array_merge($courses,$lesson);
		}

		return $all_data;
	}

	public function process(){

		$id = base64_decode($this->input->post('id'));

		$post_data = [
			'id_user' => $this->session->userdata('id_user'),
			'id_courses' => $id,
		];

		/** check if user have wishlist */
		$user_wishlist = $this->_Process_MYSQL->get_data($this->table_lms_user_wishlist,$post_data);

		if ($user_wishlist->num_rows() < 1) {
			if ($this->add_wishlist($post_data)) {
				echo 'success_add';
			}
		}else{
			if ($this->remove_wishlist($post_data)) {
				echo 'success_remove';
			}
		}

	}

	public function add_wishlist($post_data){

		/** check if courses exist */
		$courses = $this->_Process_MYSQL->get_data($this->table_lms_courses,['id' => $post_data['id_courses']]);

		if ($courses->num_rows() > 0) { 

			$post_data['time'] = date('Y:m:d H:i:s');
			return $this->_Process_MYSQL->insert_data($this->table_lms_user_wishlist, $post_data);
		}else {
			redirect(base_url());
		}

	}

	public function remove_wishlist($post_data){

		/** check if courses exist */
		$courses = $this->_Process_MYSQL->get_data($this->table_lms_courses,['id' => $post_data['id_courses']]);

		if ($courses->num_rows() > 0) { 
			return $this->_Process_MYSQL->delete_data($this->table_lms_user_wishlist, $post_data);
		}else {
			redirect(base_url());
		}

	}	

}