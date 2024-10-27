<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if (!function_exists('thor')) {
	function thor($action, $string, $secret = '', $iv = '00!#@990')
	{
		$output = false;
		$encrypt_method = "AES-256-CBC";
		$secret_key = getenv('APP_KEY');
		$secret_iv = $iv;
		$key = hash('sha256', $secret_key);
		$iv = substr(hash('sha256', $secret_iv), 0, 16);
		if ( $action == 'encode' ) {
			$output = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
			$output = base64_encode($output);
		} else if ( $action == 'decode' ) {
			$output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
		}
		return $output;
	}
}

if (!function_exists('get_settings')) {
  function get_settings($key = '') {
    $CI	=&	get_instance();
    $CI->load->database();
    $CI->db->where('key', $key);
    $result = $CI->db->get('settings')->row()->value;
    return $result;
  }
}

if (!function_exists('slugify')) {
  function slugify($text) {
        $text = preg_replace('~[^\\pL\d]+~u', '-', $text);
        $text = trim($text, '-');
        $text = strtolower($text);
        $text = preg_replace('~[^-\w]+~', '', $text);
        if (empty($text))
            return 'n-a';
        return $text;
    }
}
