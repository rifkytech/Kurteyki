<div class="o-page__sidebar js-page-sidebar">
    <div class="c-sidebar c-sidebar--light">
        <a class="c-sidebar__brand" href="<?php echo base_url('app/dashboard') ?>">
            <img class="c-sidebar__brand-img" src="<?php echo base_url(APP_LOGO) ?>" alt="Logo" title='Logo'>
            <?php echo APP_NAME ?>
        </a>

        <ul class="c-sidebar__list">
            <?php $this->load->view('app/_layouts/nav');?>
        </ul>

    </div><!-- // .c-sidebar -->
</div><!-- // .o-page__sidebar -->

<main class="o-page__content">
    <header class="c-navbar">
        <button class="c-sidebar-toggle u-mr-small">
            <span class="c-sidebar-toggle__bar"></span>
            <span class="c-sidebar-toggle__bar"></span>
            <span class="c-sidebar-toggle__bar"></span>
        </button><!-- // .c-sidebar-toggle -->

        <?php $this->load->view('app/_layouts/nav-top'); ?>
    </header>
