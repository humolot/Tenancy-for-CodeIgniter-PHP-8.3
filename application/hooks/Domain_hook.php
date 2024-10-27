<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Domain_hook {
    public function initialize_tenant() {
        $CI =& get_instance();

		// Capture the subdomain or domain
        $host = $_SERVER['HTTP_HOST'];
        $domain_parts = explode('.', $host);
        
		// Assuming 'mydomain.com' is the main domain, subdomains come before
		if (count($domain_parts) > 2) {
			$tenant = $domain_parts[0]; // Capture the subdomain (client)
        } else {
			$tenant = $host; // Capture the main domain
        }

		// Load customer data from the database or set the tenant
        $CI->db->where('domain', $tenant);
        $query = $CI->db->get('tenants');
        
		if ($query->num_rows() > 0) {
			$CI->tenant = $query->row(); // Saves the current tenant for use
        } else {
			show_error("Tenant not found for domain '{$tenant}'.", 404);
        }
    }
}
