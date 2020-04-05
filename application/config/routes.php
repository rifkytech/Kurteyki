<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['blog/default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['blog/404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['blog/translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/

# blog root
$route['default_controller'] = 'lms/Homepage';

/*
|--------------------------------------------------------------------------
| user controllers
|--------------------------------------------------------------------------
|
*/

# auth index
$route['auth'] = 'user/auth/index';
$route['auth/process'] = 'user/auth/process_login';
$route['auth/register'] = 'user/auth/register';
$route['auth/register/process'] = 'user/auth/process_register';

# payment
$route['payment/order/(:any)'] = 'user/payment/order/$1';
$route['payment/process'] = 'user/payment/process';
$route['payment/notification'] = 'user/payment/notification';
$route['payment/success'] = 'user/payment/success';
$route['payment/waiting'] = 'user/payment/waiting';

/*
|--------------------------------------------------------------------------
| lms controllers
|--------------------------------------------------------------------------
|
*/

# lms index
$route['index'] = 'lms/Homepage';
$route['courses/index'] = 'lms/Homepage/index';
$route['courses/index/(:any)'] = 'lms/Homepage/index';

# courses category index
$route['courses/category/(:any)'] = 'lms/Category/index/$1';
$route['courses/category/(:any)/index'] = 'lms/Category/index/$1';
$route['courses/category/(:any)/index/(:any)'] = 'lms/Category/index/$1';

# lms courses
$route['courses/detail/(:any)'] = 'lms/Courses/index/$1';

# lms lesson
$route['courses/lesson/(:any)/(:any)/(:any)'] = 'lms/Lesson/index/$1/$2/$3';

# lesson search
$route['courses/search'] = 'lms/Search/index/';

/*
|--------------------------------------------------------------------------
| blog controllers
|--------------------------------------------------------------------------
|
*/

# blog index
$route['blog'] = 'blog/Homepage/index';
$route['blog/index'] = 'blog/Homepage/index';
$route['blog/index/(:any)'] = 'blog/Homepage/index';

# blog category index
$route['blog/category/(:any)'] = 'blog/Category/index/$1';
$route['blog/category/(:any)/index'] = 'blog/Category/index/$1';
$route['blog/category/(:any)/index/(:any)'] = 'blog/Category/index/$1';

# blog tags index
$route['blog/tags/(:any)'] = 'blog/Tags/index/$1';
$route['blog/tags/(:any)/index'] = 'blog/Tags/index/$1';
$route['blog/tags/(:any)/index/(:any)'] = 'blog/Tags/index/$1';

# blog search index
$route['blog/search'] = 'blog/Search/index/';

# blog post
$route['blog/post/(:any)'] = 'blog/Post/index/$1';

# blog page
$route['blog/pages/(:any)'] = 'blog/Pages/index/$1';

/*
|--------------------------------------------------------------------------
| site controllers
|--------------------------------------------------------------------------
|
*/

# robots.txt, ads.txt
$route['robots\.txt'] = 'site/Txt/robots_txt';
$route['ads\.txt'] = 'site/Txt/ads_txt';

# feed
$route['feeds/courses'] = 'site/Feeds/courses';
$route['feeds/blog_post'] = 'site/Feeds/blog_post';


# sitemap
$route['sitemap\.xml'] = 'site/Sitemap/sitemap_index';
$route['root\.xml'] = 'site/Sitemap/sitemap_root';
$route['sitemap-courses-(:any)\.xml'] = 'site/Sitemap/sitemap_courses/$1';
$route['sitemap-blog-post-(:any)\.xml'] = 'site/Sitemap/sitemap_blog_post/$1';
$route['sitemap-blog-pages-(:any)\.xml'] = 'site/Sitemap/sitemap_blog_pages/$1';

/*
|--------------------------------------------------------------------------
| app controllers
|--------------------------------------------------------------------------
|
*/

# admin page
$route['app'] = 'app/Dashboard';

$route['404_override'] = '';#'Custom404';
$route['translate_uri_dashes'] = FALSE;
