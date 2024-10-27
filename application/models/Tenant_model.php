<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tenant_model extends CI_Model
{

	protected $tenant_id;
	protected $tenant_db;

	public function __construct()
	{
		parent::__construct();

		$tenant = get_current_tenant();

		if ($tenant) {
			
			$this->tenant_id = $tenant['id'];
			if ($tenant['use_db']) {
				$db_config = array(
				'dsn'      => '',
				'hostname' => $tenant['hostname'],
				'username' => $tenant['username'],
				'password' => $tenant['password'],
				'database' => $tenant['database_name'],
				'dbdriver' => 'mysqli',
				'dbprefix' => '',
				'pconnect' => FALSE,
				'db_debug' => (ENVIRONMENT !== 'production'),
				'cache_on' => FALSE,
				'cachedir' => '',
				'char_set' => 'utf8',
				'dbcollat' => 'utf8_general_ci'
				);

				$this->tenant_db = $this->load->database($db_config, TRUE);
			}

		} else {
			show_error('Tenant not defined. Check domain hook.', 500);
		}
	}

	public function get_tenant_id()
	{
		return $this->tenant_id;
	}

	public function tenant_query($query)
	{
		return $this->tenant_db->query($query);
	}
}
