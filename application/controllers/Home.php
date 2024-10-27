<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->library('session');
		$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
		$this->output->set_header('Pragma: no-cache');
	}

	public function index()
	{
		$this->home();
		
	}

	public function home()
	{
		
		$tenant = $this->crud_model->get_tenant();
		echo "<pre>";
		print_r($tenant);
		echo "</pre>";
		
		#echo $this->uuid->v5(time());
		#echo $this->uuid->v4();
		
		#$get_data = $this->crud_model->get_data();
		#echo "<pre>";
		#print_r($get_data);
		#echo "</pre>";
		
	}
	
	public function test_email()
	{
		/*
		$to = 'someEmail@gmail.com';
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		$headers .= 'From: no-reply@me.net'."\r\n";

		//email subject
		$subject = 'Test Mail';
		$params1 = '1';
		$message = $this->load->view('templates/emails/default', array('params1' => $params1), true);

		$this->email_model->push($to, $subject, $message, $headers);
		*/
	}
	
	public function process_email()
	{
		return $this->email_model->process_queue(30);
	}
	
}
