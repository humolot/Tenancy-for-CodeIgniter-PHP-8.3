<?php
defined('BASEPATH') OR exit('No direct script access allowed');

if (!function_exists('get_current_tenant')) {

	/**
	* Gets the current tenant based on the domain
	* @return array|null Returns the tenant data or null if not found
	*/
    function get_current_tenant() {
        $CI =& get_instance();
        $CI->load->database();

        $domain = $_SERVER['HTTP_HOST'];
        $CI->db->where('domain', $domain);
        $tenant = $CI->db->get('tenants')->row_array();
        return $tenant ? $tenant : null;
    }
}
