<?php defined('BASEPATH') or exit('No direct script access allowed');

class Sitemap extends MY_Controller {

    public $splid;
    public $loop_courses;
    public $loop_blog_post;
    public $loop_blog_pages;

    public function __construct()
    {
        parent::__construct();

        header("Content-Type: text/xml;charset=iso-8859-1");

        $this->load->model('site/M_Sitemap');

        $this->splid = 100;
        $this->loop_courses = $this->M_Sitemap->loop_courses($this->splid);        
        $this->loop_blog_post = $this->M_Sitemap->loop_blog_post($this->splid);
        $this->loop_blog_pages = $this->M_Sitemap->loop_blog_pages($this->splid);        
    }  

    function sitemap_index(){

        $data['sitemap_courses'] = false;
        if ($this->loop_courses > 0) {
            for ($i=1; $i <= $this->loop_courses ; $i++) { 
                $data['sitemap_courses'][] = 'sitemap-courses-'.$i.'.xml';
            }
        }        

        $data['sitemap_blog_post'] = false;
        if ($this->loop_blog_post > 0) {
            for ($i=1; $i <= $this->loop_blog_post ; $i++) { 
                $data['sitemap_blog_post'][] = 'sitemap-blog-post-'.$i.'.xml';
            }
        }

        $data['sitemap_blog_pages'] = false;
        if ($this->loop_blog_pages > 0) {
            for ($i=1; $i <= $this->loop_blog_pages ; $i++) { 
                $data['sitemap_blog_pages'][] = 'sitemap-blog-pages-'.$i.'.xml';
            }
        }        

        $this->load->view("site/sitemap/index",$data);
    }

    function sitemap_root(){
        $this->load->view("site/sitemap/root");
    }

    function sitemap_courses($page)
    {

        $data['courses'] = $this->M_Sitemap->sitemap_courses($page,$this->splid);
        if (!$data['courses']) redirect(base_url());

        $this->load->view("site/sitemap/courses",$data);
    }

    function sitemap_blog_post($page)
    {

        $data['post'] = $this->M_Sitemap->sitemap_blog_post($page,$this->splid);
        if (!$data['post']) redirect(base_url());

        $this->load->view("site/sitemap/blog-post",$data);
    }

    function sitemap_blog_pages($page)
    {

        $data['pages'] = $this->M_Sitemap->sitemap_blog_pages($page,$this->splid);
        if (!$data['pages']) redirect(base_url());

        $this->load->view("site/sitemap/blog-pages",$data);
    }    
}
