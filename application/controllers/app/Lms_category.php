<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Lms_category extends My_App{


    public $index = 'app/lms_category/index';
    public $form = 'app/lms_category/form';
    public $redirect = 'app/lms_category';

    public function __construct(){
        parent::__construct();

        $this->load->model('app/M_LMS_Category');         
    }    

    public function index()
    {

        $data = [
            'title' => 'LMS Category',
        ];

        $this->load->view($this->index, array_merge($data,$this->M_LMS_Category->datatables()));
    }    

    public function datatables()
    {

        $data = $this->M_LMS_Category->data_table();

        echo $data;
    }  

    public function create()
    {

        $data = array(
            'title' => 'LMS Category',
            'sub_title' => 'Create Category',
        );

        $this->load->view($this->form, array_merge($data,$this->M_LMS_Category->required()));
    }       

    public function delete($id)
    {
        if ($this->M_LMS_Category->process_delete($id) == TRUE) {
            echo true;
        }else {
            echo false;
        }
    }

    public function process(){

        if (!empty($this->input->post('id'))) {

            if ($this->M_LMS_Category->process_update() == 'success') {

                $this->session->set_flashdata([
                    'message' => true,
                    'message_type' => 'info',
                    'message_text' => $this->lang->line('success_update'),
                ]);
            }elseif ($this->M_LMS_Category->process_update() == 'invalid') {

                $this->session->set_flashdata([
                    'message' => true,
                    'message_type' => 'warning',
                    'message_text' => $this->lang->line('duplicate_category'),
                ]); 
            }else{

                $this->session->set_flashdata([
                    'message' => true,
                    'message_type' => 'warning',
                    'message_text' => $this->lang->line('failed_update'),
                ]);              
            }            

        }else {    

            if ($this->M_LMS_Category->process_create() == 'success') {

                $this->session->set_flashdata([
                    'message' => true,
                    'message_type' => 'info',
                    'message_text' => $this->lang->line('success_create'),
                ]);
            }elseif ($this->M_LMS_Category->process_create() == 'invalid') {

                $this->session->set_flashdata([
                    'message' => true,
                    'message_type' => 'warning',
                    'message_text' => $this->lang->line('duplicate_category'),
                ]); 
            }else{

                $this->session->set_flashdata([
                    'message' => true,
                    'message_type' => 'warning',
                    'message_text' => $this->lang->line('failed_create'),
                ]); 
            }

        }

        redirect(base_url($this->redirect));

    }    

    public function process_multiple()
    {

        $id = explode(',', $this->input->post('id'));
        $action = $this->input->post('action');

        if ($action == 'delete') {

            if ($this->M_LMS_Category->process_multiple_delete($id) == TRUE) {
                echo true;
            }else {
                echo false;
            }
        }

    }    

}