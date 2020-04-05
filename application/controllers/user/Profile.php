<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends My_User
{

    public $index = 'user/profile/index';
    public $redirect = 'user/profile';

    public function __construct(){
        parent::__construct();

        $this->load->model('user/M_Profile');       
    }   
    
    public function index()
    {

        $site = $this->site;
        $profile = $this->M_Profile->read();

        $data = array(
            'site' => $site,
            'profile' =>  $profile
        );

        $this->load->view($this->index, $data);
    }

    public function process(){

        $process = $this->M_Profile->process_update();

        if ($process == 'error_old_password') {

            $this->session->set_flashdata([
                'message' => true,
                'message_type' => 'danger',
                'message_text' => $this->lang->line('error_old_password'),
            ]);

        }
        
        if ($process == 'error_confirm_password') {

            $this->session->set_flashdata([
                'message' => true,
                'message_type' => 'danger',
                'message_text' => $this->lang->line('error_confirm_password'),
            ]);

        }

        if ($process == 'success') {
            $this->session->set_flashdata([
                'message' => true,
                'message_type' => 'info',
                'message_text' => $this->lang->line('success_update'),
            ]);
        }

        redirect(base_url($this->redirect));

    }
}
