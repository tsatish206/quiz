<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Account extends My_Controller {
  function __construct() {
    parent::__construct();
    $this->load->database();
    $this->load->library('session');
    }

    function quiz(){
      if(!empty($this->session->userdata('id'))){
        $data['page_name'] = 'index';
        $this->load->view('frontend/main',$data); 
      }else{
        redirect(base_url('guest'));
      }
    }
    function index(){
      $data['page_name'] = 'guest';
      $data['action'] = base_url().'guest';
      if(!empty($this->input->post('name'))){
        $Register = array(
          'name'=> $this->input->post('name'),
          'email' => $this->input->post('email'),
          'phone' => $this->input->post('phone')
        );
        //print_r($Register);
        $this->db->insert('guest',$Register);
        $id = $this->db->insert_id();
        $this->session->set_userdata('id',$id);
        $this->session->set_userdata('name',$this->input->post('name'));
        redirect(base_url('account'));
      }
      $this->load->view('frontend/main',$data);  
    }
    function submit(){ 
      if(!empty($this->session->userdata('id'))){     
      $data['page_name'] = 'index';
      $url =  base_url('api.json');
      $data4 = file_get_contents($url);
      $json = json_decode($data4,true);
      $score= 0;
      foreach ($json['results'] as $key => $val) {
      foreach ($_POST['answer_'.$key] as $sat=>$ans) {
          if($val['correct_answer'] == $ans)
          {
            $score++;
          }
        }
      }
      $data['score'] = $score;
      $this->db->where('id',$this->session->userdata('id'));
      $this->db->update('guest',array('score'=>$score));
      $this->session->sess_destroy('id');
      echo "200::Welcome, ".$this->session->userdata('name')." Your Score is ".$score."";
      exit;
      }else{        
        redirect(base_url('guest'));
      } 
      
    }
    function logout(){
      $this->session->sess_destroy();
      redirect(base_url('guest'));
    }
  
}

 ?>
