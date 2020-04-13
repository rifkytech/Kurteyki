<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class M_Site_Meta extends CI_Model
{

	public function __construct()
	{
		parent::__construct();

		$this->load->model('_Image');

		$this->load->model('blog/_Post');
		$this->load->model('blog/M_Site_Meta_Post');
		$this->load->model('blog/M_Site_Meta_Pages');
		$this->load->model('blog/M_Site_Meta_Category');
		$this->load->model('blog/M_Site_Meta_Tags');	

		$this->load->model('lms/M_Site_Meta_Data_OG');		
		$this->load->model('lms/M_Site_Meta_Data_Twitter_Card');

		$this->load->model('site/M_Site_Meta_Data_Default');
		$this->load->model('site/M_Site_Meta_Data_Schema');
	}

	public function init(){	
		$site = $this->site;
		$page_type = $this->page_type();
		$site['page_type'] = $page_type;
		$site['modules'] = 'blog'; /* for visitor record */	

		$build = $this->build($site,$page_type);

		return array_merge($site,$build);
	}

	public function page_type(){

		if ($this->uri->segment(1) == 'blog') {
			if (!empty($this->input->get('page'))) {
				$type = 'index_page';
			}else {
				$type = 'index';
			}
		}
		elseif ($this->uri->segment(1) == 'blog-category') {
			$type = 'category';
		}
		elseif ($this->uri->segment(1) == 'blog-tags') {
			$type = 'tags';
		}
		elseif ($this->uri->segment(1) == 'blog-search') {
			$type = 'search';
		}
		elseif ($this->uri->segment(1) == 'blog-post') {
			$type = 'post';
		}
		elseif ($this->uri->segment(1) == 'p') {
			$type = 'pages';
		}

		return $type;        
	}	

	public function build($site,$page_type){

		$breadcrumbs = false;
		$meta = false;

		if ($page_type == 'index' OR $page_type == 'index_page') {

			if ($page_type == 'index_page') {
				$title = $site['title'].' - '.$this->lang->line('blog').' - '.$this->lang->line('page').' '.$this->input->get('page');
				$breadcrumbs = $this->lang->line('blog_post').' - '.$this->lang->line('page').' '.$this->input->get('page');
			}else{
				$title = $site['title'].' - '.$this->lang->line('blog');
				$breadcrumbs = $this->lang->line('blog_post');
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

			$category = $this->M_Site_Meta_Category->read($this->uri->segment(2));	

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
		elseif ($page_type == 'tags') {

			$tags = $this->M_Site_Meta_Tags->read($this->uri->segment(2));	

			if (!empty($this->input->get('page'))) {
				$title = $this->lang->line('tags').' - '.$tags['name'].' | '.$this->lang->line('page').' '.$this->input->get('page');
				$breadcrumbs = $this->lang->line('tags').' : '.$tags['name'].' | '.$this->lang->line('page').' '.$this->input->get('page');
			}else{
				$title = $this->lang->line('tags').' - '.$tags['name'];
				$breadcrumbs = $this->lang->line('tags').' : '.$tags['name'];
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

			if (!$q) redirect(base_url('blog'));

			if (!empty($this->input->get('page'))) {
				$title = $this->lang->line('search').' : '.$q.' | '.$this->lang->line('page').' '.$this->input->get('page');
				$breadcrumbs = $this->lang->line('search').' : '.$q.' | '.$this->lang->line('page').' '.$this->input->get('page');
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
		elseif ($page_type == 'post') {

			$read = $this->M_Site_Meta_Post->read(urldecode($this->uri->segment(2)));	
			$post = $this->_Post->read_short_single($site,$read);
			$tags = $this->_Post->read_tags($read['id_tags']);

			$title = $post['title'].' - '.$site['title'];
			$description = $post['description'];
			$image = $post['image']['original'];
			$published = $read['time'];
			$updated = $read['updated'];
			$tags = $tags;	

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
		elseif ($page_type == 'pages') {

			$read_pages = $this->M_Site_Meta_Pages->read(urldecode($this->uri->segment(2)));

			$title = $read_pages['title'].' - '.$site['title'];
			$description = ctsubstr($read_pages['content'],150);;
			$image = $this->_Image->first_image($read_pages['content']);
			$published = $read_pages['time'];			
			$updated = $read_pages['updated'];

			$meta = $this->meta_detail([
				'title' => $title,
				'description' => $description,
				'image' => $image,
				'icon' => $site['icon'],

				'published' => $published,
				'updated' => $updated,
				'tags' => false,
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