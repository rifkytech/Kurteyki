<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Payment extends My_User
{

    public $order = 'user/payment/order';
    public $waiting = 'user/payment/waiting'; 
    public $success = 'user/payment/success';    

    public function __construct(){
        parent::__construct();

        $this->load->model('lms/_Courses');
        $this->load->model('lms/_Lesson');

        $this->load->model('user/M_Payment');
        $this->load->model('user/M_Profile');              
    }   
    
    public function order($id)
    {

        $site = $this->site;
        $widget= $this->widget; 
        $courses = $this->M_Payment->read($site,$id);
        $midtrans = $this->M_Payment->create_token($courses);

        $data = array(
            'site' => $site,
            'widget' => $widget,    
            'courses' =>  $courses,
            'midtrans' =>  $midtrans
            );

        $this->load->view($this->order, $data);
    }   

    public function process(){

        /** check if ajax request */
        if ($this->input->is_ajax_request()) {

            $process = $this->M_Payment->process();

            if ($process) {

                echo json_encode([
                    'status' => true,
                    'message' => $this->lang->line('success_transaction'),
                    'redirect' => $process
                    ]);
            }else{

                echo json_encode([
                    'status' => false,
                    'message' => $this->lang->line('failed_transaction')
                    ]);
            }

        }else{
            redirect(base_url());
        }

    } 

    public function use_coupon(){
        /** check if ajax request */
        if ($this->input->is_ajax_request()) {

            $process = $this->M_Payment->check_coupon();

            if ($process) {
                echo json_encode([
                    'status' => 'valid',
                    'discount_coupon' => $process['discount_coupon'],
                    'price_total' => $process['price_total'],
                    'midtrans_token' => $process['midtrans_token'],                    
                    'message' => 'Kode Voucher valid',
                    ]);
            }else{
                echo json_encode([
                    'status' => 'invalid',
                    'message' => 'Kode Voucher tidak valid',
                    ]);
            }

        }else{
            redirect(base_url());
        }        
    }

    public function waiting(){

        $site = $this->site;

        $data = array(
            'site' => $site,
            'classbody' => 'o-page--center',
            );

        $this->load->view($this->waiting, $data);
    }

    public function success(){

        $site = $this->site;

        $data = array(
            'site' => $site,
            'classbody' => 'o-page--center',
            );

        $this->load->view($this->success, $data);
    }    

    public function notification(){

        $notification = $this->M_Payment->handle();

        echo json_encode($notification);
    }
}