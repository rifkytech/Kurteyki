<?php $this->load->view('app/_layouts/header'); ?>
<div class="o-page__card">
    <div class="c-card u-mb-xsmall">
        <header class="c-card__header u-pt-large">
            <div class="c-card__icon">
                <img src="<?php echo base_url(APP_LOGO) ?>" alt="Dashboard UI Kit">
            </div>
            <h1 class="u-h3 u-text-center u-mb-zero"><?php echo APP_NAME ?></h1>
        </header>

        <form action="<?php echo base_url('app/auth/process_login') ?>" class="c-card__body" method="POST">

            <?php $this->load->view('app/_layouts/alert'); ?>

            <div class="c-field u-mb-small">
                <label class="c-field__label"><?php echo $this->lang->line('username') ?></label> 
                <input autofocus="" name="username" class="c-input" type="text" placeholder="username" required=""> 
            </div>

            <div class="c-field u-mb-small">
                <label class="c-field__label"><?php echo $this->lang->line('password') ?></label> 
                <input name="password" class="c-input" type="password" placeholder="password" required=""> 
            </div>

            <input type="hidden" name="csrf_code" value="<?php echo $this->session->userdata('csrf_code') ?>">
            <button name="masuk" class="c-btn c-btn--info" type="submit"><i class="fa fa-sign-in"></i></button>          

        </form>
    </div>

</div>
<?php $this->load->view('app/_layouts/footer'); ?>
