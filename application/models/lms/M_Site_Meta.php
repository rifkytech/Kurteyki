<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_Site_Meta extends CI_Model
{

	public function __construct()
	{
		parent::__construct();

		$this->load->model('lms/_Courses');
		$this->load->model('lms/M_Site_Meta_Courses');
		$this->load->model('lms/M_Site_Meta_Courses_Lesson');		
		$this->load->model('lms/M_Site_Meta_Courses_Category');		

		$this->load->model('lms/M_Site_Meta_Data_OG');		
		$this->load->model('lms/M_Site_Meta_Data_Twitter_Card');

		$this->load->model('site/M_Site_Meta_Data_Default');
		$this->load->model('site/M_Site_Meta_Data_Schema');
	}

	public function init(){	
		$site = $this->site;
		$page_type = $this->page_type();
		$site['page_type'] = $page_type;
		$site['modules'] = 'lms'; /* for visitor record */	

		$build = $this->build($site,$page_type);

		return array_merge($site,$build);
	}

	public function page_type(){

		if (empty($this->uri->segment(1))) {
			if (!empty($this->input->get('page'))) {
				$type = 'index_page';
			}else {
				$type = 'index';
			}
		}
		elseif ($this->uri->segment(1) == 'courses-category') {
			$type = 'category';
		}
		elseif ($this->uri->segment(1) == 'courses-search') {
			$type = 'search';
		}
		elseif ($this->uri->segment(1) == 'courses-detail') {
			$type = 'detail';
		}		
		elseif ($this->uri->segment(1) == 'courses-lesson') {
			$type = 'lesson';
		}

		return $type;        
	}	

	public function build($site,$page_type){


		$breadcrumbs = false;
		$meta = false;

		if ($page_type == 'index' OR $page_type == 'index_page') {

			if (!empty($this->input->get('page'))) {
				$title = $site['title'].' - '.$this->lang->line('courses').' - '.$this->lang->line('page').' '.$this->input->get('page');
				$breadcrumbs = $this->lang->line('material_list').' - '.$this->lang->line('page').' '.$this->input->get('page');
			}else{
				$title = $site['title'];
				$breadcrumbs = $this->lang->line('material_list');
			}

			$meta = $this->meta_index([
				'title' => $title,
				'description' => $site['description'],
				'image' => $site['image'],
				'icon' => $site['icon'],
				'schema' => $site['meta']['schema'],
				'open_graph' => $site['meta']['open_graph'],
				'twitter_card' => $site['meta']['twitter_card']				
			]);			

		}		
		elseif ($page_type == 'category') {

			$category = $this->M_Site_Meta_Courses_Category->read(urldecode($this->uri->segment(2)));

			if (!empty($this->input->get('page'))) {
				$title =  $this->lang->line('category').' - '.$category['name'].' | '.$this->lang->line('page').' '.$this->input->get('page');
				$breadcrumbs =  $this->lang->line('category').' : '.$category['name'].' | '.$this->lang->line('page').' '.$this->input->get('page');
			}else{
				$title =  $this->lang->line('category').' - '.$category['name'];
				$breadcrumbs =  $this->lang->line('category').' : '.$category['name'];
			}

			$meta = $this->meta_index([
				'title' => $title,
				'description' => $site['description'],
				'image' => $site['image'],
				'icon' => $site['icon'],
				'schema' => $site['meta']['schema'],
				'open_graph' => $site['meta']['open_graph'],
				'twitter_card' => $site['meta']['twitter_card']				
			]);			

		}	
		elseif ($page_type == 'search') {
			
			$q = strip_tags($this->input->get('q'));

			if (!$q) redirect(base_url());

			if (!empty($this->input->get('index'))) {
				$title = $this->lang->line('search').' : '.$q.' | '.$this->lang->line('page').' '.$this->input->get('index');
				$breadcrumbs = $this->lang->line('search').' : '.$q.' | '.$this->lang->line('page').' '.$this->input->get('index');
			}else{
				$title = $this->lang->line('search').' : '.$q;
				$breadcrumbs = $this->lang->line('search').' : '.$q;
			}

			$meta = $this->meta_index([
				'title' => $title,
				'description' => $site['description'],
				'image' => $site['image'],
				'icon' => $site['icon'],
				'schema' => $site['meta']['schema'],
				'open_graph' => $site['meta']['open_graph'],
				'twitter_card' => $site['meta']['twitter_card']				
			]);										
		}		
		elseif ($page_type == 'detail') {

			$read = $this->M_Site_Meta_Courses->read(urldecode($this->uri->segment(2)));
			$courses = $this->_Courses->read_long_single($site,$read);

			$title = $courses['title'].' - '.$site['title'];
			$description = ctsubstr($courses['description'],150);
			$image = $courses['image']['original'];
			$published = $read['time'];
			$updated = $read['updated'];
			$tags = [$courses['category']];

			$meta = $this->meta_detail([
				'title' => $title,
				'description' => $description,
				'image' => $image,
				'icon' => $site['icon'],

				'published' => $published,
				'updated' => $updated,
				'tags' => $tags,
				'site_name' => $site['title'],

				'schema' => $site['meta']['schema'],
				'open_graph' => $site['meta']['open_graph'],
				'twitter_card' => $site['meta']['twitter_card']				
			]);				

		}
		elseif ($page_type == 'lesson') {

			$read = $this->M_Site_Meta_Courses_Lesson->read(urldecode($this->uri->segment(2)));
			$courses = $this->_Courses->read_long_single($site,$read);

			$title = $this->lang->line('room').' : '. $courses['title'];
			$description = ctsubstr($courses['description'],150);
			$image = $courses['image']['original'];
			$published = $read['time'];
			$updated = $read['updated'];
			$tags = [$courses['category']];	

			$meta = $this->meta_detail([
				'title' => $title,
				'description' => $description,
				'image' => $image,
				'icon' => $site['icon'],

				'published' => $published,
				'updated' => $updated,
				'tags' => $tags,
				'site_name' => $site['title'],

				'schema' => $site['meta']['schema'],
				'open_graph' => $site['meta']['open_graph'],
				'twitter_card' => $site['meta']['twitter_card']				
			]);				
		}
		
		return [
			'breadcrumbs' => $breadcrumbs,
			'meta' => $meta,
		];
	}	

	public function meta_index($data){

		$meta_general = $this->M_Site_Meta_Data_Default->generate($data);
		$schema = $this->M_Site_Meta_Data_Schema->generate($data['schema']);
		$open_graph = $this->M_Site_Meta_Data_OG->index($data);
		$twitter_card = $this->M_Site_Meta_Data_Twitter_Card->index($data);

		return $meta_general.$schema.$open_graph.$twitter_card;
	}

	public function meta_detail($data){

		$meta_general = $this->M_Site_Meta_Data_Default->generate($data);
		$schema = $this->M_Site_Meta_Data_Schema->generate($data['schema']);
		$open_graph = $this->M_Site_Meta_Data_OG->detail($data);
		$twitter_card = $this->M_Site_Meta_Data_Twitter_Card->detail($data);

		return $meta_general.$schema.$open_graph.$twitter_card;
	}	
}