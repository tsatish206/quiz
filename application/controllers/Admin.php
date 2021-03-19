<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends My_Controller {
  function __construct() {
    parent::__construct();
  }

  function login(){
  	$data['page_name'] = 'login';
  	$data['action'] = base_url().'admin/login';
  	if(!empty($this->input->post('username') && $this->input->post('password'))){
  		$admin = $this->db->get_where('admin',
  			array('username'=>$this->input->post('username'),
  				  'password'=>md5($this->input->post('password'))))->row_array();
  		if(!empty($admin)){
  			$this->session->set_userdata('role_id',$admin['role_id']);
  			$this->session->set_userdata('username',$admin['username']);
  			redirect(base_url('admin/quiz'));
  		}else{ 
            $this->session->set_flashdata('error_msg', 'Username or password invalid.');
  		} 
  	}
  	$this->load->view('backend/main',$data);
  }
  function fetch_quiz(){    
  	if($this->session->userdata('role_id')){
	  	$data['main'] = $this->db->get('guest')->result_array();
	  	$this->load->view('backend/quiz',$data);
	  }else{
	  	redirect(base_url('admin/login'));
	  }
  }

  function logout(){
      $this->session->sess_destroy();
      redirect(base_url('admin/login'));
    }

}