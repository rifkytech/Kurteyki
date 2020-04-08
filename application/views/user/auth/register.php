<?php $this->load->view('app/_layouts/header'); ?>

<div class="o-page__card o-page__card--horizontal">
    <div class="c-card c-login-horizontal">
        <div class="c-login__content-wrapper u-width-100">
            <header class="c-login__header">
                <a title='<?php echo $site['title'] ?>' class="c-login__icon c-login__icon--rounded c-login__icon--left" href="<?php echo base_url() ?>">
                    <img src="<?php echo base_url('storage/uploads/user/logo.png') ?>" alt="<?php echo $site['title'] ?>">
                </a>

                <h2 class="c-login__title"><?php echo $this->lang->line('register') ?></h2>
            </header>

            <form class="c-login__content" action="<?php echo base_url('auth/register') ?>" method="POST">

                <?php $this->load->view('app/_layouts/alert'); ?>

                <div class="c-field u-mb-small">
                    <label class="c-field__label"><?php echo $this->lang->line('full_name') ?></label> 
                    <input required='' value="<?php echo set_value('full_name'); ?>" autofocus="" name='full_name' class="c-input" type="text" placeholder="<?php echo $this->lang->line('full_name') ?>">
                    <?php echo form_error('full_name', '<small class="c-field__message u-color-danger"><i class="fa fa-times-circle"></i>', '</small>'); ?> 
                </div>  

                <div class="c-field u-mb-small">
                    <label class="c-field__label">
                        <?php echo $this->lang->line('email') ?>
                    </label> 
                    <input required='' value="<?php echo set_value('email'); ?>" value="" name="email" class="c-input" type="email" placeholder="<?php echo $this->lang->line('email') ?>"> 
                    <?php echo form_error('email', '<small class="c-field__message u-color-danger"><i class="fa fa-times-circle"></i>', '</small>'); ?> 
                </div>               

                <div class="c-field u-mb-small">
                    <label class="c-field__label"><?php echo $this->lang->line('no_handphone') ?></label> 
                    <input required='' value="<?php echo set_value('no_handphone'); ?>" name='no_handphone' class="c-input" type="number" placeholder="<?php echo $this->lang->line('no_handphone') ?>"> 
                    <?php echo form_error('no_handphone', '<small class="c-field__message u-color-danger"><i class="fa fa-times-circle"></i>', '</small>'); ?> 
                </div>    

                <div class="u-mb-small">
                    <label class="c-field__label"><?php echo $this->lang->line('password') ?></label>
                    <div class="c-field has-addon-right">
                        <input required='' value="<?php echo set_value('password'); ?>" id='password' name="password" class="c-input" type="password">
                        <button tabindex="-1" type="button" class="c-field__addon" onclick="toggle('password',this)">
                            <i class="fa fa-eye-slash"></i>
                        </button>
                    </div>
                    <?php echo form_error('password', '<small class="c-field__message u-color-danger"><i class="fa fa-times-circle"></i>', '</small>'); ?> 
                </div>

                <div class="u-mb-small">
                    <label class="c-field__label"><?php echo $this->lang->line('password_confirm') ?></label>
                    <div class="c-field has-addon-right">
                        <input required='' value="<?php echo set_value('password_confirm'); ?>" id='password_confirm' name="password_confirm" class="c-input" type="password">
                        <button tabindex="-1" type="button" class="c-field__addon" onclick="toggle('password_confirm',this)">
                            <i class="fa fa-eye-slash"></i>
                        </button>
                    </div>                                                         
                    <?php echo form_error('password_confirm', '<small class="c-field__message u-color-danger"><i class="fa fa-times-circle"></i>', '</small>'); ?> 
                </div>

                <input type="hidden" name="csrf_code" value="<?php echo $this->session->userdata('csrf_code') ?>">
                <button class="c-btn c-btn--info c-btn--fullwidth" type="submit">
                    <?php echo $this->lang->line('register') ?>
                </button>

                <span class="c-divider u-mv-small"></span>

                <a title='<?php echo $this->lang->line('sign_in') ?>' href="<?php echo base_url('auth') ?>" class="c-btn c-btn--secondary c-btn--fullwidth">
                    <?php echo $this->lang->line('sign_in') ?>
                </a>
            </form>
        </div>
    </div>
</div>

<?php $this->load->view('lms/_layouts/footer'); ?>