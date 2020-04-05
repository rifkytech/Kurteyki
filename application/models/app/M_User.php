<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_User extends CI_Model
{

	public $table_user = 'tb_user';

	public function data_post(){
		return [
			'old_password' => sha1($this->input->post('old_password')),
			'new_password' => sha1($this->input->post('new_password')),
			'confirm_new_password' => sha1($this->input->post('confirm_new_password')),
		];
	}

	public function change_password(){

		$data_post = $this->data_post();

		$user = $this->_Process_MYSQL->get_data($this->table_user,['id' => $this->session->userdata('id')])->row_array();

		if ($data_post['old_password'] != $user['password']) {
			return 'error_old_password';
		}

		if ($data_post['new_password'] != $data_post['confirm_new_password']) {
			return 'error_confirm_password';
		}

		if ($data_post['old_password'] == $user['password'] AND $data_post['new_password'] == $data_post['confirm_new_password']) {

			$data_update = array(
				'password' => $data_post['new_password'],
			);

			if ($this->_Process_MYSQL->update_data($this->table_user, $data_update, array('id' => $this->session->userdata('id'))) == TRUE) {
				return 'success';
			}
		}

		return false;
	}

}