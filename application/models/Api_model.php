<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Api_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->library('session');
    }
    public function get_email($email,$password) {
    $this->db->select('id', 'email','password', 'account_status');
    $this->db->from('login_tbl');
    $this->db->where('email', $email);
    $this->db->where('password', $password);
    $query = $this->db->get();
    // check is $query have a data ?
    if ($query->num_rows() > 0) {
        // return data
        return $query->row_array();
    } else {
        return false;
    } 
   }
   
   
     
     public function send_message($mobile,$message){
         //echo $mobile ."-".$message;
         //exit;
         $authKey = "344510AQEpRtKbFX5f86e35fP1";
        //Multiple mobiles numbers separated by comma
        $mobileNumber = $mobile;
        //Sender ID,While using route4 sender id should be 6 characters long.
        $senderId = "techin";
        //Your message to send, Add URL encoding here.
        $message = urlencode($message);
        //Define route 
        $route = "4";
        $country = "91";
        //Prepare you post parameters
        $postData = array(
            'authkey' => $authKey,
            'mobiles' => $mobileNumber,
            'message' => $message,
            'sender' => $senderId,
            'route' => $route,
            'country' => $country
        );
        //API URL
        $url="http://manage.msgwave.com/api/sendhttp.php";
        
        // init the resource
        $ch = curl_init();
        curl_setopt_array($ch, array(
            CURLOPT_URL => $url,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_POST => true,
            CURLOPT_POSTFIELDS => $postData
            //,CURLOPT_FOLLOWLOCATION => true
        ));
        //Ignore SSL certificate verification
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        //get response
        $output = curl_exec($ch);
        
        //Print error if any
        if(curl_errno($ch))
        {
            echo 'error:' . curl_error($ch);
        }
        
        curl_close($ch);
        
       // echo $output;
         /*$send =  "http://manage.msgwave.com/api/sendhttp.php?authkey=344510AQEpRtKbFX5f86e35fP1&mobiles='.$mobile.'&message='.$message.'&sender=techin&route=4&country=91";
         if($send){
             return true;
         }else{
             return false;
         }*/
     }
     
     // Compress image
    public function compressedImage($source, $path, $quality) {

            $info = getimagesize($source);

            if ($info['mime'] == 'image/jpeg') 
                $image = imagecreatefromjpeg($source);

            elseif ($info['mime'] == 'image/gif') 
                $image = imagecreatefromgif($source);

            elseif ($info['mime'] == 'image/png') 
                $image = imagecreatefrompng($source);

            imagejpeg($image, $path, $quality);

    }
   
   public function test(){
        echo 123;
    }
    public function validate_request(){
        $Headers = $this->input->request_headers();
        print_r($Headers);
        //die();
        $Token = ($Headers['token'] ? $Headers['token'] : ($this->input->post("token") ? $this->input->post('token'): $this->input->get('token')));
        echo $Token;
        print_r($_SESSION);
        print_r($this->session);
        if ($Token == ""){
            $data = array('status'=>0,'message'=>'token is empty');
            echo json_encode($data);
            die();
            
        }elseif ($Token == $this->session->userdata('api_token')){
            return true;
        }else{
            $data = array(
                "status"=>0,
                "message"=>"token is not validate",
                "data" => $this->session->userdata('api_token')
                );
            echo json_encode($data);
            die(); 
        }
        //die();
    }
    public function login($data){
        $_SESSION['hard'] = 123;
        $query = $this->db->get_where("api",array("api_key"=>$data['api_key'], "api_salt"=>$data['api_salt']));//->row();
        $query = $query->row();
        //print_r($query);
        return $query;
    }
    
}
