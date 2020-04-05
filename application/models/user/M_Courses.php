<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_Courses extends CI_Model
{

	public $table_lms_courses = 'tb_lms_courses';
	public $table_lms_user_courses = 'tb_lms_user_courses';

	public function read($site){

		$this->db->select('
			tb_lms_courses.*
			');
		$this->db->from($this->table_lms_user_courses);		
		$this->db->join($this->table_lms_courses, 'tb_lms_courses.id = tb_lms_user_courses.id_courses', 'LEFT JOIN');
		$this->db->where("tb_lms_user_courses.id_user",$this->session->userdata('id_user')); 
		$this->db->order_by('tb_lms_user_courses.id','DESC');
		$user_courses =$this->db->get();

		// echo json_encode($user_courses->result_array());
		// exit;

		if ($user_courses->num_rows() < 1) return false;	

		$read =  $user_courses->result_array();	

		$all_courses = $this->_Courses->read_long($site,$read);

		foreach ($all_courses as $courses) {
			$lesson = $this->_Lesson->build_lesson($courses);

			$all_data[] = array_merge($courses,$lesson);
		}

		return $all_data;
	}

	public function add_courses(){

		$id = base64_decode($this->input->post('id'));

		$post_data = [
			'id_user' => $this->session->userdata('id_user'),
			'id_courses' => $id,
		];

		/** check if courses exist */
		$courses = $this->_Process_MYSQL->get_data($this->table_lms_courses,['id' => $id]);

		$read_courses = $courses->row_array();

		if (empty($read_courses['price'])) {
			if ($courses->num_rows() > 0) { 

				/** check if user have courses */
				$user_courses = $this->_Process_MYSQL->get_data($this->table_lms_user_courses,$post_data);

				if ($user_courses->num_rows() < 1) {

					$post_data['time'] = date('Y:m:d H:i:s');
					return $this->_Process_MYSQL->insert_data($this->table_lms_user_courses, $post_data);
				}else{
					redirect(base_url());
				}
			}else {
				redirect(base_url());
			}
		}else {
			redirect(base_url());
		}

	}

}