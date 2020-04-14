<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_Auth extends CI_Model
{

    public $table_user = 'tb_user';

    public function data_post(){

        $full_name = strip_tags($this->input->post('full_name'));
        $password = strip_tags($this->input->post('password'));
        $password_confirm = strip_tags($this->input->post('password_confirm'));
        $email = strip_tags($this->input->post('email'));
        $no_handphone = strip_tags($this->input->post('no_handphone'));        
        $csrf_code = $this->input->post('csrf_code');

        return [
            'full_name' => $full_name,
            'password' => $password,
            'password_confirm' => $password_confirm,
            'email' => $email,
            'no_handphone' => $no_handphone,
            'csrf_code' => $csrf_code,
        ];
    }

    public function login(){

        $post_data = $this->data_post();

        if ($post_data['csrf_code'] != '' AND $this->session->userdata('csrf_code') == $post_data['csrf_code']) {

            $data = array(
                'email' => $post_data['email'],
                'password' => sha1($post_data['password']),
                'grade' => 'User'        
            );

            $read = $this->_Process_MYSQL->get_data($this->table_user,$data);


            if ($read->num_rows() > 0) {

                $read_data = $read->row_array();
                $id = $read_data['id'];

                $data_update = array(
                    'last_login' => date('Y:m:d H:i:s'),
                );

                if ($this->_Process_MYSQL->update_data($this->table_user, $data_update, array('id' => $id)) == TRUE) {

                    $this->session->set_userdata(array(
                        'id_user' => $read_data['id'],                        
                        'username' => $read_data['username'],
                        'photo' => $read_data['photo'],
                        'grade' => $read_data['grade'],                        
                        'user' => "login"
                    ));

                    $this->session->unset_userdata('csrf_code');

                    return 'success';
                }

            }else {

                return 'not_exist';
            }

        }else {

            return 'invalid';
        }
    }    

    public function register(){

        $post_data = $this->data_post();

        if ($post_data['csrf_code'] != '' AND $this->session->userdata('csrf_code') == $post_data['csrf_code']) {

            $data = array(
                'username' => $post_data['full_name'],
                'password' => sha1($post_data['password']),  
                'email' => $post_data['email'],                      
                'no_handphone' => $post_data['no_handphone'],
                'grade' => 'User',
                'created' => date('Y:m:d H:i:s'),
                'status' => 'Active',                
            );

            if ($this->_Process_MYSQL->insert_data($this->table_user,$data)) {

                return 'success';
            }

        }else {

            return 'invalid';
        }        
    }


    function logout(){

        $this->session->sess_destroy();
        return 'success';
    }

    function check($type,$data,$redirect){
        if ($type == 'exist') {
            if ($this->session->userdata($data)) {
                redirect(base_url($redirect));
            }
        }elseif ($type == 'not_exist') {
            if (empty($this->session->userdata($data))) {
                redirect(base_url($redirect));
            }
        }
    }    

    /**
     * Validation register
     */
    
    public function set_validation_register(){

        $this->form_validation->set_rules([
            [
                'field' => 'full_name',
                'label' => 'lang:full_name',
                'rules' => 'trim|required|min_length[5]|max_length[100]',
                'errors' => [
                    'required' => '{field} '.$this->lang->line('must_filled'),
                ]
            ],
            [
                'field' => 'email',
                'label' => 'lang:email',
                'rules' => [
                    'trim',
                    'required',
                    'valid_email',
                    [
                        'email_checker',
                        function($email){

                            $read = $this->_Process_MYSQL->get_data($this->table_user,['email' => $email]);

                            if ($read->num_rows() > 0) {

                                $this->form_validation->set_message('email_checker', $this->lang->line('email_exist'));

                                return false;

                            }else {

                                return true;
                            }
                        }
                    ]
                ],
                'errors' => [
                    'required' => '{field} '.$this->lang->line('must_filled')
                ]
            ],
            [
                'field' => 'no_handphone',
                'label' => 'lang:no_handphone',
                'rules' => 'trim|required|numeric|min_length[10]|max_length[20]',
                'errors' => [
                    'required' => '{field} '.$this->lang->line('must_filled')
                ]
            ],
            [
                'field' => 'password',
                'label' => 'lang:password',
                'rules' => 'trim|required|min_length[5]',
                'errors' => [
                    'required' => '{field} '.$this->lang->line('must_filled')
                ]
            ],
            [
                'field' => 'password_confirm',
                'label' => 'lang:password_confirm',
                'rules' => 'trim|required|min_length[5]|matches[password]',
                'errors' => [
                    'required' => '{field} '.$this->lang->line('must_filled'),
                    'matches' => '{field} '.$this->lang->line('not_same')
                ]
            ],
        ]);

        $this->form_validation->set_message('min_length', '{field} '.$this->lang->line('min_length_start').' {param} '.$this->lang->line('min_length_end'));
        $this->form_validation->set_message('max_length', '{field} '.$this->lang->line('max_length_start').' {param} '.$this->lang->line('max_length_end'));
        $this->form_validation->set_message('numeric', '{field} '.$this->lang->line('must_number'));
    }    

}
