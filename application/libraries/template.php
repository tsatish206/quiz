<?php
class Template {
	//ci instance
	private $CI;
	//template Data
	var $template_data = array();

	public function __construct() 
	{
		$this->CI =& get_instance();
	}

	function set($content_area, $value)
	{
		$this->template_data[$content_area] = $value;
	}

	function load($template = '', $name ='', $view = '' , $view_data = array(), $return = FALSE)
	{
		$this->set($name , $this->CI->load->view($view, $view_data, TRUE));
		if($template == 'backend')
		{          
		  $this->CI->load->view('backend/main', $this->template_data);
		}
		else
		{			
		  $this->CI->load->view('frontend/'.$template, $this->template_data);
		}
	   
	}
                               
}
?>