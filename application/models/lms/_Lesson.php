<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class _Lesson extends CI_Model
{

	public $table_lms_courses_section = 'tb_lms_courses_section';
	public $table_lms_courses_lesson = 'tb_lms_courses_lesson';       
	
	public function build_lesson($courses){

		$section = $this->_Process_MYSQL->get_data_multiple($this->table_lms_courses_section, $courses['id'],'id_course',false,['order','ASC']);

		if ($section->num_rows() < 1) {
			return [
				'all_section' => false,
				'all_data' => false,
				'first_lesson' => false
			];
		}

		$number = 0;
		foreach ($section->result_array() as $data_section) {

			$section_data = [
				'id_section' => $data_section['id'],
				'title_section' => $data_section['title'],
			];

			$all_section[] = $data_section['id'];

			$lesson = $this->_Process_MYSQL->get_data_multiple($this->table_lms_courses_lesson, $data_section['id'],'id_section',false,['order','ASC']);

			if ($lesson->num_rows() < 1) {

				$first_lesson = false;
				$lesson_data[] = false;
			}else {				

				foreach ($lesson->result_array() as $data_lesson) {

					if ($number == 0) {
						$first_lesson = $courses['url_lesson'].'/'.$data_section['id'].'/'.$data_lesson['id'];
						$number++;
					}

					$lesson_data[] = [
						'id' => $data_lesson['id'],					
						'url' => $courses['url_lesson'].'/'.$data_section['id'].'/'.$data_lesson['id'],
						'title' => $data_lesson['title'],
						'type' => $data_lesson['type'],
					];


				}
			}


			$all_data[] = array_merge($section_data,['lesson' => $lesson_data]);
			unset($lesson_data);
			unset($section_data);			
		}

		return [
			'all_section' => $all_section,
			'all_data' => $all_data,
			'first_lesson' => $first_lesson
		];
	}

	public function read_lesson($id,$build_lesson,$section){

		if (!is_numeric($id)) {
			redirect($build_lesson['first_lesson']);
		}else{

			$lesson = $this->_Process_MYSQL->get_data($this->table_lms_courses_lesson,['id' => $id]);

			if ($lesson->num_rows() < 1) {
				redirect($build_lesson['first_lesson']);
			}

			$lesson = $lesson->row_array();

			if ($lesson['id_section'] != $section) {
				redirect($build_lesson['first_lesson']);
			}

			if (!in_array($section, $build_lesson['all_section'])) {
				redirect($build_lesson['first_lesson']);
			}
		}

		return [
			'lesson_detail' => $lesson
		];
	}	

}