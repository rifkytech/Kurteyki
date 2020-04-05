<?php  
function getparent($id){

	if ($id > 0) {
		$CI	=&	get_instance();
		$CI->load->database();

		$parent = $CI->db->get_where('tb_lms_category', array('id' => $id))->row_array();

		return $parent['name'];
	}else{
		return '
		<span class="u-block u-text-mute">
		<small>
		<span class="c-badge c-badge--xsmall c-badge--info">parent</span>
		</small>
		</span>';
	}

}
?>
