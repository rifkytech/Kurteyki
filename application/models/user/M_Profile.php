<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_Profile extends CI_Model
{

	public $table_user = 'tb_user';

	public function read(){
		return $this->_Process_MYSQL->get_data($this->table_user, ['id' => $this->session->userdata('id_user')])->row_array();
	}

	public function process_update(){

		$post = $this->input->post();

		$post_data = [
			'username' => $post['full_name'],
			'no_handphone' => $post['no_handphone'],
		];

		/**
		 * if new image
		 */
		if (!empty($_FILES['photo']['name'])) {

			$image_old = $post['photo_old'];

			$upload_photo = $this->_Process_Upload->Upload_File(
				'image', // config upload
				'storage/user/', // dir upload
				'photo', // file post data
				$image_old, // delete file
				'user_photo', // file name
				'resize', //is image for resizing image or create thumb
			);

			if ($upload_photo['photo']) {
				$post_data['photo'] =  $upload_photo['photo'];
				$this->session->set_userdata(array('photo' => $post_data['photo']));
			}
		}		

		/**
		 * if new password
		 */
		if (
			!empty($post['new_password']) 
			AND 
			!empty($post['password_confirm']) 
			AND 
			!empty(!empty($post['old_password']))
		) {

			$user = $this->_Process_MYSQL->get_data($this->table_user,['id' => $this->input->post('id_user')])->row_array();

			if (sha1($post['old_password']) != $user['password']) {
				return 'error_old_password';
			}

			if ($post['new_password'] != $post['password_confirm']) {
				return 'error_confirm_password';
			}

			if (sha1($post['old_password']) == $user['password'] AND $post['new_password'] == $post['password_confirm']) {
				$post_data['password'] = sha1($post['new_password']);
			}

		}

		if ($this->_Process_MYSQL->update_data($this->table_user,$post_data,['id' => $this->input->post('id_user')])) {

			return 'success';
		}
	}	

}