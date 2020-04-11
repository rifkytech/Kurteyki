<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Install_Table extends CI_Model {


	public function install_table(){

		$post = $this->input->post();
		$config = $this->build_database_configuration($post);
		$check = $this->load->database($config, TRUE);


		if (!$check->conn_id){
			return 'error_database_connection';
		}else {

			$this->load->database($config);
		}

		/**
		 * Delete All Table IF Exist
		 */
		$this->delete_table();

		/**
		 * Run Query SQL From kurteyki.sql
		 */
		$this->db->trans_off();
		$this->db->trans_start(TRUE);
		$this->db->trans_begin();

		$query = file_get_contents('install/table.sql') ;
		$this->db->query($query);

		if ($this->db->trans_status() == TRUE) 
		{
			$this->db->trans_commit();

			$this->session->set_userdata([
				'DB_HOST' => $post['host'],
				'DB_NAME' => $post['database'],
				'DB_USER' => $post['username'],
				'DB_PASS' => $post['password'],
				'DB_PORT' => $post['port'],				
			]);

			return 'success';
		}
		else 
		{
			$this->db->trans_rollback();
			return 'failed';
		}

	}

	public function build_database_configuration($data){

		define('DB_HOST', $data['host']);
		define('DB_NAME', $data['database']);
		define('DB_USER', $data['username']);
		define('DB_PASS', $data['password']);
		define('DB_PORT', $data['port']);

		$config = array(
			'dsn'	   => 'mysql:host='.DB_HOST.';port='.DB_PORT.';dbname='.DB_NAME.';charset=utf8;',
			'hostname' => DB_HOST,
			'username' => DB_USER,
			'password' => DB_PASS,
			'database' => DB_NAME,
			'dbdriver' => 'pdo',
			'dbprefix' => '',
			'pconnect' => FALSE,
			'db_debug' => (ENVIRONMENT !== 'development'),
			'cache_on' => FALSE,
			'cachedir' => '',
			'char_set' => 'utf8',
			'dbcollat' => 'utf8_general_ci',
			'swap_pre' => '',
			'encrypt'  => FALSE,
			'compress' => FALSE,
			'stricton' => FALSE,
			'failover' => array(),
			'save_queries' => FALSE
		);


		return $config;
	}

	public function delete_table(){
		return $this->db->query('DROP TABLE `tb_blog_pages`, `tb_blog_post`, `tb_blog_post_category`, `tb_blog_post_comment`, `tb_blog_post_tags`, `tb_site`, `tb_site_meta`, `tb_site_template`, `tb_site_template_style`, `tb_site_template_widget`, `tb_site_visitor`, `tb_user`;');
	}

}
