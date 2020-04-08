 <header style="background: #fff">
    <div class="container-fluid">
        <div class="row">

            <div class="col-12 c-navbar">

                <a class="u-text-center u-hidden-down@desktop" href="<?php echo base_url() ?>">
                    <img src="<?php echo base_url('storage/uploads/lms/logo.png') ?>" alt="<?php echo $site['title'] ?>" style="width: 120px;">
                </a>

                <h1 class="u-h4 navbar__title u-mr-auto u-text-bold u-ml-auto">
                    <?php echo $courses['title']; ?> 
                </h1>

                <a class="c-nav__link u-text-bold" href="<?php echo base_url('user/courses') ?>">
                   <i class="fa fa-arrow-left u-mr-xsmall"></i><?php echo $this->lang->line('back') ?>
               </a>

           </div>

       </div>
   </div>
</header>