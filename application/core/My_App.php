<?php defined('BASEPATH') OR exit('No direct script access allowed');

class My_App extends MY_Controller
{

    /**
     * First Load Module App    
     */
    
    public function __construct()
    {
        parent::__construct();

        /**
         * Set Language
         */
        $this->_Language->load(['app']);   

        /**
         * Check Auth
         */
        $this->load->model('app/M_Auth'); 
        $this->M_Auth->check('not_exist', 'status', 'app/auth');      
    }

}
