<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class My_Controller extends CI_Controller {
    
  function __construct() {
    parent::__construct();
        // must be logged in 
    //exit;
        
    }

    
    protected function send_email($subject,$message,$email){
              $this->load->library('email');
                $config = Array(
                  'protocol' => 'smtp',
                  'smtp_host' => 'mail.techinsidesystems.com',
                  'smtp_port' => 587,
                  'smtp_user' => 'satish.tiwari@techinsidesystems.com', // your email
                  'smtp_pass' => 'Satish@2020', // your password
                  'smtp_timeout'=>20,
                  'mailtype' => 'html',
                  'charset' => 'iso-8859-1',
                  'wordwrap' => TRUE
                );
                $this->email->initialize($config);
                $this->email->from('satish.tiwari@techinsidesystems.com','Account Techinside');
                $this->email->to($email);
                $this->email->subject($subject);
                $this->email->message($message); 
                if($this->email->send()){
                return true;
                }
                else{
                    return false;
                }
        
     }
}
?>