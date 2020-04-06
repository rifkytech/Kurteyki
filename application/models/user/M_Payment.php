<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_Payment extends CI_Model
{

	public $table_lms_courses = 'tb_lms_courses';
	public $table_lms_user_payment = 'tb_lms_user_payment';	
	public $table_lms_user_courses = 'tb_lms_user_courses';

	public function read($site,$id){

		$this->db->select('
			tb_lms_courses.*
			');
		$this->db->from($this->table_lms_courses);		
		$this->db->where('tb_lms_courses.id',$id);
		$this->db->where('tb_lms_courses.price != 0');
		$this->db->where("time <= NOW()");
		$this->db->where("status = 'Published'"); 				
		$courses_detail =$this->db->get();

		if ($courses_detail->num_rows() < 1) redirect(base_url());

		$read_courses =  $courses_detail->row_array();	

		$check_user_courses = $this->_Process_MYSQL->get_data($this->table_lms_user_courses,[
			'id_courses' => $read_courses['id'],
			'id_user' => $this->session->userdata('id_user'),
		])->num_rows();

		if ($check_user_courses > 0) redirect(base_url());

		$all_courses = $this->_Courses->read_long_single($site,$read_courses);

		$lesson = $this->_Lesson->build_lesson($all_courses);

		foreach ($lesson['all_data'] as $all_lesson) {
			foreach ($all_lesson['lesson'] as $detail_lesson) {
				$id_lesson[] = $detail_lesson['id'];  
				$type_lesson[] = $detail_lesson['type'];
			}
		}

		$lesson['total_lesson'] = count($id_lesson);
		$lesson['count_type_lesson'] = array_count_values($type_lesson);

		$all_data = array_merge($all_courses,$lesson);

		return $all_data;
	}

	public function midtrans_key($site){
		\Midtrans\Config::$serverKey = $site['midtrans']['server_key'];
		\Midtrans\Config::$isProduction = ($site['midtrans']['status_production'] == 'Yes') ? true : false;
		\Midtrans\Config::$isSanitized = true;
		\Midtrans\Config::$is3ds = true;
	}	

	public function create_token($courses){

		/**
		 * Read User Data
		 */
		$user = $this->M_Profile->read();

		/**
		 * Include Midtrans Key
		 */
		$this->midtrans_key($this->site);

		$transaction_details = [
			'order_id' => $user['id'].'C'.$courses['id'].'T'.date('ymdHis'),
			'gross_amount' => $courses['price_original'], 
		];

		$expiry = [
			"start_time" => date('Y-m-d H:i:s O'),
			"unit" => "day",
			"duration" => 1
		];

		$item_details = [
			[
				'id' => $courses['id'],
				'price' => $courses['price_original'],
				'quantity' => 1,
				'name' => $courses['title']
			]
		];

		$customer_details = array(
			'first_name'    => $user['username'], 			
			'email'         => $user['email'],
			'phone'         => $user['no_handphone'],
		);

		$credit_card = [
			"secure" => true,
			"save_card" => false
		];

		$transaction = array(
			'transaction_details' => $transaction_details,
			'expiry' => $expiry,
			'credit_card' => $credit_card,
			'customer_details' => $customer_details,
			'item_details' => $item_details,
		);

		try {

			// $payment = \Midtrans\Snap::createTransaction($transaction);
			$snapToken =  \Midtrans\Snap::getSnapToken($transaction);

			return [
				'token' => $snapToken,
			];		
		}
		catch (Exception $e) {

			echo $this->lang->line('error_midtrans_config');
			exit;
		}	


	}

	public function process(){

		$request_body = file_get_contents('php://input');
		$post = json_decode($request_body,TRUE);

		$id_order = $post['order_id'];
		$id_courses = explode('C', $id_order)[1];
		$id_courses = explode('T', $id_courses)[0];

		$post_data = [
			'id' => $post['order_id'],
			'id_user' => $this->session->userdata('id_user'),
			'id_courses' => $id_courses,			
			'type' => $post['payment_type'],
			'amount' => (int)$post['gross_amount'],
			'token' => $post['token'],
			'time' => $post['transaction_time'],
			'status' => $post['transaction_status'],
		];

		if ($this->_Process_MYSQL->insert_data($this->table_lms_user_payment, $post_data)) {
			if ($post_data['status'] == 'pending') {
				return base_url('payment/waiting');
			}else{
				return base_url('payment/success');
			}
		}else{
			return false;
		}
	}	

	public function handle(){

		$this->midtrans_key($this->site);

		if (!empty($this->input->get('order_id'))) {
			try {

				$notif = \Midtrans\Transaction::status($this->input->get('order_id'));		
			} catch (Exception $e) {
				
				echo $e->getMessage();
				exit;
			}
		}else {			
			try {
				@$notif = new \Midtrans\Notification();
			} catch (Exception $e) {

				echo $e->getMessage();
				exit;				
			}
		}

		$transaction = $notif->transaction_status;
		// $type = $notif->payment_type;
		// $fraud = $notif->fraud_status;
		$order_id = $notif->order_id;

        /**
         *  transaction_status
         *  values: capture, settlement, pending, cancel, expire
         */

        if ($transaction == 'settlement') {
        	return $this->update_status($order_id,'Purchased');
        } else if ($transaction == 'pending') {
        	return ['status' => false];
        } else if ($transaction == 'deny') {
        	return $this->update_status($order_id,'Failed');            
        } else if ($transaction == 'expire') {
        	return $this->update_status($order_id,'Failed');
        } else if ($transaction == 'cancel') {
        	return $this->update_status($order_id,'Failed');
        }

    }

    public function update_status($order_id,$status){

    	$post_data = [
    		'status' => $status,
    	];

    	if ($this->_Process_MYSQL->update_data($this->table_lms_user_payment,$post_data,['id' => $order_id])) {

    		if ($status == 'Purchased') {
    			if ($this->insert_purchased_courses($order_id)) {
    				return [
    					'status' => true,
    					'message' => 'Success Update Status id : '.$order_id.' to '.$status,
    					'redirect' => base_url('user/order')
    				];
    			}
    		}else {
    			if ($this->delete_purchased_courses($order_id)) {
    				return [
    					'status' => true,
    					'message' => 'Success Update Status id : '.$order_id.' to '.$status,
    					'redirect' => base_url('user/order')
    				];
    			}
    		}

    	}
    }

    public function insert_purchased_courses($id_order){

    	$read_payment = $this->_Process_MYSQL->get_data($this->table_lms_user_payment,['id' => $id_order])->row_array();

    	$post_data = [
    		'id_user' => $read_payment['id_user'],
    		'id_courses' => $read_payment['id_courses'],
    	];
    	$post_data['time'] = date('Y:m:d H:i:s');

    	return $this->_Process_MYSQL->insert_data($this->table_lms_user_courses, $post_data);
    }

    public function delete_purchased_courses($id_order){

    	$read_payment = $this->_Process_MYSQL->get_data($this->table_lms_user_payment,['id' => $id_order])->row_array();

    	$post_data = [
    		'id_user' => $read_payment['id_user'],
    		'id_courses' => $read_payment['id_courses'],
    	];

    	return $this->_Process_MYSQL->delete_data($this->table_lms_user_courses, $post_data);
    }    

}