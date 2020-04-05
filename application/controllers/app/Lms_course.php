<?php defined('BASEPATH') or exit('No direct script access allowed');

class Lms_course extends My_App
{

    public $index = 'app/lms_course/index';
    public $form = 'app/lms_course/form';
    public $form_lesson = 'app/lms_course/form-lesson';    
    public $redirect = 'app/lms_course';

    public function __construct(){
        parent::__construct();

        $this->load->model('app/M_LMS_Course');         
    }    

    public function index()
    {

        $data = [
            'title' => 'Course',
        ];

        $this->load->view($this->index, array_merge($data,$this->M_LMS_Course->datatables()));
    }

    public function datatables()
    {

        $data = $this->M_LMS_Course->data_table();

        echo $data;
    }

    public function create()
    {

        $data = array(
            'title' => 'Create Course',
            'ckeditor' => true,
        );

        $this->load->view($this->form, array_merge($data,$this->M_LMS_Course->required()));
    }    

    public function update($id){
        $data = array(
            'title' => 'Update',
            'ckeditor' => true,
            'data' => $this->M_LMS_Course->data_update($id),
            'section' => $this->M_LMS_Course->data_section($id),           
        );

        $this->load->view($this->form, array_merge($data,$this->M_LMS_Course->required()));
    }    

    public function delete($id)
    {
        if ($this->M_LMS_Course->process_delete($id) == TRUE) {
            echo true;
        }else {
            echo false;
        }
    }

    public function process(){

        if (!empty($this->input->post('id'))) {

            if ($this->M_LMS_Course->process_update() == TRUE) {

                $this->session->set_flashdata([
                    'message' => true,
                    'message_type' => 'info',
                    'message_text' => $this->lang->line('success_update'),
                ]);
            }   

            redirect(base_url($this->redirect));
        }else {

            for ($i=0; $i < 100 ; $i++) { 
                $create = $this->M_LMS_Course->process_create();
            }

            if ($create) {
               // redirect(base_url('app/lms_course/update/'.$create));
            }   
        }

    } 

    public function process_multiple()
    {

        $id = explode(',', $this->input->post('id'));
        $action = $this->input->post('action');

        /**
         * Update Post to Published
         */
        if ($action == 'post') {

            foreach ($id as $key => $item) 
            {
                $data[] = array(
                    'id' => $id[$key],
                    'status' => 'Published',
                );
            }

            if ($this->M_LMS_Course->process_multiple_update($data) == TRUE) {
                echo true;
            }else {
                echo false;
            }
        }        

        /**
         * Update Post to Draft
         */
        if ($action == 'draft') {

            foreach ($id as $key => $item) 
            {
                $data[] = array(
                    'id' => $id[$key],
                    'status' => 'Draft',
                );
            }

            if ($this->M_LMS_Course->process_multiple_update($data) == TRUE) {
                echo true;
            }else {
                echo false;
            }
        }

        /**
         * Delete Post
         */
        if ($action == 'delete') {

            if ($this->M_LMS_Course->process_multiple_delete($id) == TRUE) {
                echo true;
            }else {
                echo false;
            }
        }

    }         


    public function process_section() {

        if (!empty($this->input->post('id'))) {

            if ($this->M_LMS_Course->process_section_update() == TRUE) {

                $this->session->set_flashdata([
                    'message' => true,
                    'message_type' => 'info',
                    'message_text' => $this->lang->line('success_update'),
                ]);
            }   

        }else {

            if ($this->M_LMS_Course->process_section_create() == TRUE) {

                $this->session->set_flashdata([
                    'message' => true,
                    'message_type' => 'info',
                    'message_text' => $this->lang->line('success_create'),
                ]);
            }               
        }

        redirect($this->input->post('redirect'));
    }

    public function process_section_delete($id) {

        if ($this->M_LMS_Course->process_section_delete($id) == TRUE) {
            $this->session->set_flashdata([
                'message' => true,
                'message_type' => 'danger',
                'message_text' => $this->lang->line('success_delete'),
            ]);
        }else {
            $this->session->set_flashdata([
                'message' => true,
                'message_type' => 'danger',
                'message_text' => $this->lang->line('failed_delete'),
            ]);
        }

        redirect($this->agent->referrer());
    }

    public function process_section_sort(){

        if ($this->M_LMS_Course->process_section_sort() == TRUE) {

            $this->session->set_flashdata([
                'message' => true,
                'message_type' => 'info',
                'message_text' => $this->lang->line('success_update'),
            ]);
        }   

        redirect($this->input->post('redirect'));
    }

    public function create_lesson($id_section){

        $data = array(
            'title' => 'Create Lesson',
            'ckeditor' => true,
            'data' => $this->M_LMS_Course->required_lesson($id_section),
        );

        $this->load->view($this->form_lesson, $data);
    }

    public function update_lesson($id_section,$id_lesson){

        $data = array(
            'title' => 'Update Lesson',
            'ckeditor' => true,
            'data' => $this->M_LMS_Course->required_lesson($id_section),
            'lesson' => $this->M_LMS_Course->data_lesson_update($id_lesson),           
        );

        $this->load->view($this->form_lesson, $data);
    }    

    public function process_lesson(){

        if (!empty($this->input->post('id'))) {

            if ($this->M_LMS_Course->process_lesson_update() == TRUE) {

                $this->session->set_flashdata([
                    'message' => true,
                    'message_type' => 'info',
                    'message_text' => $this->lang->line('success_update'),
                ]);
            }   

        }else {

            if ($this->M_LMS_Course->process_lesson_create() == TRUE) {

                $this->session->set_flashdata([
                    'message' => true,
                    'message_type' => 'info',
                    'message_text' => $this->lang->line('success_create'),
                ]);
            }               
        }

        redirect(base_url('app/lms_course/update/'.$this->input->post('id_course')));
    }

    public function process_lesson_delete($id) {

        if ($this->M_LMS_Course->process_lesson_delete($id) == TRUE) {
            $this->session->set_flashdata([
                'message' => true,
                'message_type' => 'danger',
                'message_text' => $this->lang->line('success_delete'),
            ]);
        }else {
            $this->session->set_flashdata([
                'message' => true,
                'message_type' => 'danger',
                'message_text' => $this->lang->line('failed_delete'),
            ]);
        }

        redirect($this->agent->referrer());
    }  

    public function process_lesson_sort(){

        if ($this->M_LMS_Course->process_lesson_sort() == TRUE) {

            $this->session->set_flashdata([
                'message' => true,
                'message_type' => 'info',
                'message_text' => $this->lang->line('success_update'),
            ]);
        }   

        redirect($this->input->post('redirect'));
    }     

}