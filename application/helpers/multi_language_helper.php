<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('get_phrase'))
{
	function get_phrase($phrase = '') {
        $phrase = trim(strtolower($phrase));
		$CI	=&	get_instance();
		$CI->load->database();
		$current_language	=	$CI->db->get_where('settings' , array('key' => 'language'))->row()->value;

		if ( $current_language	==	'') {
			$current_language	=	'english';
			$CI->session->set_userdata('current_language' , $current_language);
		}

		$check_phrase	=	$CI->db->get_where('language' , array('phrase' => $phrase))->num_rows();
		if ( $check_phrase == 0)
			$CI->db->insert('language' , array('phrase' => $phrase));

		$query	=	$CI->db->get_where('language' , array('phrase' => $phrase));
		$row   	=	$query->row();

		if (isset($row->$current_language) && $row->$current_language !="")
			return $row->$current_language;
		else
			return ucwords(str_replace('_',' ',$phrase));
	}
}

// ------------------------------------------------------------------------
/* End of file language_helper.php */
/* Location: ./system/helpers/language_helper.php */
