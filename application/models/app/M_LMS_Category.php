<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_LMS_Category extends CI_Model
{    

    public $table_lms_category = 'tb_lms_category';

    public function datatables(){

        return [
            'datatable' => true,
            'datatables_data' => "
            [{'data': 'checkbox',className:'c-table__cell u-pl-small u-pr-small', width:'50'},
            {'data': 'id',className:'c-table__cell'},
            {'data': 'name',className:'c-table__cell u-pl-zero',width:'100%'},
            {'data': 'parent',className:'c-table__cell u-pl-zero',width:'100%'},            
            {'data': 'alat',className:'c-table__cell', width:'100'} ]
            ",
        ];
    }

    public function data_table(){

        header('Content-Type: application/json');  

        $this->datatables->select('id, name,parent');
        $this->datatables->from($this->table_lms_category);
        $this->datatables->add_column('checkbox', '
            <td>
            <div class="c-choice c-choice--checkbox">
            <input type="checkbox" id="checkbox-$1" class="c-choice__input" name="id[]" value="$1">
            <label for="checkbox-$1" class="c-choice__label">&nbsp;</label>
            </div>
            </td>
            ', 'id');
        $this->datatables->edit_column('name', '$1', 'ucwords(name)');
        $this->datatables->edit_column('parent', '$1', 'getparent(parent)');
        $this->datatables->add_column('alat', '
            <button type="button" class="c-btn--custom c-btn--small c-btn c-btn--info" name="action-view"><i class="fa fa-eye"></i></button>
            <button class="c-btn--custom c-btn--small c-btn c-btn--success action-edit" type="button" data-id="$1" data-name="$2" data-title="Update" data-toggle="modal" data-target="#modal"><i class="fa fa-edit"></i></button>
            <button type="button" data-title="are you sure ?" data-text="want to delete $2" class="c-btn c-btn--danger c-btn--custom action-delete" data-href="'. base_url('app/lms_category/delete/$1') .'">
            <i class="fa fa-trash"></i>
            </button>
            ', 'id,name');
        return $this->datatables->generate();
    }    

    public function required($withpost = false){

        $data = [
            'categorys' => $this->_Process_MYSQL->get_data($this->table_lms_category,['parent =' => ''])->result_array()
        ];

        return $data;
    }

    public function data_post()
    {

        $post_data = [          
            'name' => strip_tags($this->input->post('name')),
            'slug' => slug(strip_tags($this->input->post('name'))),
            'parent' => strip_tags($this->input->post('parent')),
            'icon' => strip_tags($this->input->post('icon')),
            'image' => strip_tags($this->input->post('image')),
        ];

        /**
         * Check if process create > merge time data
         */
        if (empty($this->input->post('id'))) {

            $post_merge = array(
                'time' => date('Y-m-d H:i:s'),
            );

            $post_data = array_merge($post_data, $post_merge);   
        }         

        /**
         * Check if process update > merge updated data
         */
        if (!empty($this->input->post('id'))) {

            $post_merge = array(
                'updated' => date('Y-m-d H:i:s'),
            );

            $post_data = array_merge($post_data, $post_merge);   
        }   
        
        return $post_data;        
    }    

    public function check_data(){

        $data = ['name' => strtolower($this->input->post('name'))];

        return $this->_Process_MYSQL->get_data($this->table_lms_category,$data)->num_rows();
    }    

    public function process_create(){

        if ($this->check_data() < 1) {

            if ($this->_Process_MYSQL->insert_data($this->table_lms_category,$this->data_post())) {
                return 'success';
            }else{
                return false;
            }
        }else {
            return 'invalid';
        }
    }

    public function process_update(){

        if ($this->check_data() < 1) {

            if ($this->_Process_MYSQL->update_data($this->table_lms_category,$this->data_post(),['id' => $this->input->post('id')])) {
                return 'success';
            }else{
                return false;
            }
        }else {
            return 'invalid';
        } 

    }  

    public function process_delete($id){
        return $this->_Process_MYSQL->delete_data($this->table_lms_category, array('id' => $id));
    }

    public function process_multiple_delete($id){
        return $this->_Process_MYSQL->delete_data_multiple($this->table_lms_category, $id, 'id');
    }    

}
