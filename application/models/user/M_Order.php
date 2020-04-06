<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_Order extends CI_Model
{

	public $table_lms_courses = 'tb_lms_courses';
	public $table_lms_user_payment = 'tb_lms_user_payment';

	public function read($site){

		$limit = $site['user_limit_data'];
		$count_data = $this->query(true);

		if (empty($count_data)) return false;

		if ($this->input->get('showall')) {
			$limit = $count_data;
		}
		
		$index = ($this->input->get('page')) ? $limit*($this->input->get('page')-1) : 0;

		$pagination = $this->_Pagination->pagination($count_data,$limit,base_url('user/order'),FALSE,TRUE,'page');	

		$read_data = $this->query(false,$limit,$index);
		if (empty($read_data)) redirect(base_url('user/order'));

		return [
			'data' => $read_data,
			'pagination' => $pagination,
			'count_data' => $count_data			
		];
	}

	public function query($count = false,$limit = false,$index = false){

		$this->db->select('
			tb_lms_courses.title as title,
			tb_lms_user_payment.*,
			');
		$this->db->from($this->table_lms_user_payment);
		if (!$count) {
			$this->db->limit($limit,$index);
		}		
		$this->db->join($this->table_lms_courses, 'tb_lms_courses.id = tb_lms_user_payment.id_courses', 'LEFT JOIN');
		$this->db->where("tb_lms_user_payment.id_user",$this->session->userdata('id_user')); 
		$this->db->order_by('tb_lms_user_payment.id','DESC');
		$query =$this->db->get();

		if ($query->num_rows() < 1) return false;

		if (!$count) {

			$this->load->model('_Currency');

			$all_data = false;
			foreach ($query->result_array() as $data) {
				$data['amount'] = $this->_Currency->set_currency($data['amount']);
				$all_data[] = $data;
			}

			return $all_data;
		}else {
			return $query->num_rows();
		}

	}	

	public function query_post($site,$id){

		$this->db->select('*');
		$this->db->from($this->table_lms_courses);		
		$this->db->where_in('id',$id);
		$this->db->order_by('time','DESC');		
		$read = $this->db->get()->result_array();

		/**
	    * Build Course
	    */
		$all_courses = $this->_Courses->read_long($site,$read);

		foreach ($all_courses as $courses) {
			$lesson = $this->_Lesson->build_lesson($courses);

			$all_data[] = array_merge($courses,$lesson);
		}

		return $all_data;
	}		

}