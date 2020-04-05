<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_Order extends CI_Model
{

	public $table_lms_courses = 'tb_lms_courses';
	public $table_lms_user_payment = 'tb_lms_user_payment';

	public function read(){

		$this->db->select('
			tb_lms_courses.title as title,
			tb_lms_user_payment.*,
			');
		$this->db->from($this->table_lms_user_payment);		
		$this->db->join($this->table_lms_courses, 'tb_lms_courses.id = tb_lms_user_payment.id_courses', 'LEFT JOIN');
		$this->db->where("tb_lms_user_payment.id_user",$this->session->userdata('id_user')); 
		$this->db->order_by('tb_lms_user_payment.id','DESC');
		$read =$this->db->get()->result_array();

		$this->load->model('_Currency');

		$all_data = false;
		foreach ($read as $data) {
			$data['amount'] = $this->_Currency->set_currency($data['amount']);
			$all_data[] = $data;
		}

		return $all_data;
	}

}