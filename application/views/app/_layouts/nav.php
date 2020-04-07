<!-- <h4 class="c-sidebar__title">Halaman</h4> -->

<li class="c-sidebar__item">
	<a class="c-sidebar__link <?php if($this->uri->segment(1)=="app" and empty($this->uri->segment(2)) or $this->uri->segment(2) == 'dashboard'){echo "is-active";}?>" href="<?php echo base_url('app/dashboard') ?>">
		<i class="fa fa-fire u-mr-xsmall"></i>Dashboard
	</a>
</li>

<h4 class="c-sidebar__title">LMS</h4>

<li class="c-sidebar__item">
	<a class="c-sidebar__link <?php if($this->uri->segment(2)=='lms_course' or $this->uri->segment(2)=='lms_course' and $this->uri->segment(3) == 'create' ){echo "is-active";}?>" href="<?php echo base_url('app/lms_course') ?>">
		<i class="fa fa-send-o u-mr-xsmall"></i>Course
	</a>
</li>

<li class="c-sidebar__item has-submenu <?php if(strpos($this->uri->segment(2), "lms_") !== FALSE){echo "is-open";}?>">
	<a class="c-sidebar__link collapsed" data-toggle="collapse" href="#lms-submenu" aria-expanded="false" aria-controls="lms-submenu">
		<i class="fa fa-caret-square-o-down u-mr-xsmall"></i>Part of LMS
	</a>
	<ul class="c-sidebar__submenu collapse <?php if(strpos($this->uri->segment(2), "lms_") !== FALSE){echo "show";}?>" id="lms-submenu">
		<li><a class="c-sidebar__link" href="<?php echo base_url('app/lms_category') ?>">
			Category
			<?php if (strpos($this->uri->segment(2), "lms_category") !== FALSE): ?>
				<i class="fa fa-check u-ml-xsmall"></i>
			<?php endif ?>
		</a></li>
	</ul>
</li>


<h4 class="c-sidebar__title">Blog</h4>

<li class="c-sidebar__item">
	<a class="c-sidebar__link <?php if($this->uri->segment(2)=='blog_post' or $this->uri->segment(2)=='blog_post' and $this->uri->segment(3) == 'create' ){echo "is-active";}?>" href="<?php echo base_url('app/blog_post') ?>">
		<i class="fa fa-send-o u-mr-xsmall"></i>Post
	</a>
</li>

<li class="c-sidebar__item has-submenu <?php if(strpos($this->uri->segment(2), "blog_") !== FALSE){echo "is-open";}?>">
	<a class="c-sidebar__link collapsed" data-toggle="collapse" href="#blog-submenu" aria-expanded="false" aria-controls="blog-submenu">
		<i class="fa fa-caret-square-o-down u-mr-xsmall"></i>Part of Blog
	</a>
	<ul class="c-sidebar__submenu collapse <?php if(strpos($this->uri->segment(2), "blog_") !== FALSE){echo "show";}?>" id="blog-submenu">
		<li><a class="c-sidebar__link" href="<?php echo base_url('app/blog_post_comment') ?>">
			Comment
			<?php if (strpos($this->uri->segment(2), "blog_post_comment") !== FALSE): ?>
				<i class="fa fa-check u-ml-xsmall"></i><?php endif ?>
			</a>
		</li>

		<li><a class="c-sidebar__link" href="<?php echo base_url('app/blog_template') ?>">
			Template
			<?php if (strpos($this->uri->segment(2), "blog_template") !== FALSE): ?>
				<i class="fa fa-check u-ml-xsmall"></i><?php endif ?>
			</a>
		</li>
		<li><a class="c-sidebar__link" href="<?php echo base_url('app/blog_widget') ?>">
			Widget
			<?php if (strpos($this->uri->segment(2), "blog_widget") !== FALSE): ?>
				<i class="fa fa-check u-ml-xsmall"></i><?php endif ?>
			</a>
		</li>
	</ul>
</li>

<h4 class="c-sidebar__title">Pages</h4>

<li class="c-sidebar__item">
	<a class="c-sidebar__link <?php if($this->uri->segment(2)=='site_pages' or $this->uri->segment(2)=='site_pages' and $this->uri->segment(3) == 'create' ){echo "is-active";}?>" href="<?php echo base_url('app/site_pages') ?>">
		<i class="fa fa-file u-mr-xsmall"></i>Pages
	</a>
</li>


<h4 class="c-sidebar__title">Settings</h4>

<li class="c-sidebar__item">
	<a class="c-sidebar__link <?php if($this->uri->segment(2)=='setting_general' or $this->uri->segment(2)=='setting_general' and $this->uri->segment(3) == 'create' ){echo "is-active";}?>" href="<?php echo base_url('app/setting_general') ?>">
		<i class="fa fa-cog u-mr-xsmall"></i>General
	</a>
</li>
<li class="c-sidebar__item">
	<a class="c-sidebar__link <?php if($this->uri->segment(2)=='setting_meta' or $this->uri->segment(2)=='setting_meta' and $this->uri->segment(3) == 'create' ){echo "is-active";}?>" href="<?php echo base_url('app/setting_meta') ?>">
		<i class="fa fa-bug u-mr-xsmall"></i>Meta
	</a>
</li>