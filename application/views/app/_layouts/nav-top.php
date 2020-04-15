<!-- <h2 class="c-navbar__title u-mr-auto"></h2> -->
<a class="c-btn--custom c-btn--small u-mr-auto c-btn c-btn--secondary c-btn--small" href="<?php echo base_url() ?>" target='_blank'> 
	<i class="fa fa-external-link"></i>
</a>

<h2 class="c-navbar__title u-mr-auto"><?php echo $title ?></h2>

<div class="c-dropdown dropdown">
	<a  class="c-avatar c-avatar--xsmall has-dropdown dropdown-toggle" href="#" id="dropdwonMenuAvatar" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<img class="c-avatar__img" src="<?php echo base_url(APP_LOGO) ?>" alt="User's Profile Picture">
	</a>

	<div class="c-dropdown__menu dropdown-menu dropdown-menu-right" aria-labelledby="dropdwonMenuAvatar">
		<a class="c-dropdown__item dropdown-item" href="<?php echo base_url('app/user') ?>">
			<i class="fa fa-user u-mr-xsmall"></i>
			Edit Profile
		</a>
		<a class="c-dropdown__item dropdown-item" href="javascript" data-toggle="modal" data-target="#app-about">
			<i class="fa fa-info-circle u-mr-xsmall"></i>
			About
		</a>
		<a class="c-dropdown__item dropdown-item" href="<?php echo base_url('app/auth/process_logout') ?>">
			<i class="fa fa-sign-out u-mr-xsmall"></i>
			Logout
		</a>
	</div>
</div>