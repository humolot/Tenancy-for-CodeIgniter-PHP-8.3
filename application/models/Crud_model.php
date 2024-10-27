<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Crud_model extends Tenant_model
{

	public function __construct()
	{
		parent::__construct();
		$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
		$this->output->set_header('Pragma: no-cache');
	}

	public function get_tenant()
	{
		$this->db->where('id', $this->tenant_id);
		return $this->db->get('tenants')->row_array();
	}
	
	
	//EXAMPLE USE DB TENANT
	public function get_data()
	{
		$query = $this->tenant_db->get('records_use');
		return $query->result();
	}
	
}