<?php $this->load->view('app/_layouts/header'); ?>
<?php $this->load->view('app/_layouts/sidebar'); ?>

<div class="col-md-12 u-p-zero">

    <div class="c-card c-card--responsive h-100vh">

        <div class="c-card__body">  

            <?php $this->load->view('app/_layouts/alert'); ?>

            <div class="c-stage">
                <div class="c-stage__header o-media u-justify-start">
                    <div class="c-stage__icon o-media__img">
                        <i class="fa fa-info"></i>
                    </div>
                    <div class="c-stage__header-title o-media__body">
                        <h6 class="u-mb-zero">Change Password</h6>
                    </div>
                </div>

                <div class="c-stage__panel u-p-medium">

                    <form action="<?php echo base_url('app/user/process') ?>" method="POST">  

                        <div class="c-field u-mb-small">
                            <label class="c-field__label">Current Password</label>
                            <input autofocus="" required="" name="old_password" class="c-input" type="password">
                        </div> 

                        <label class="c-field__label">New Password</label>
                        <div class="c-field has-addon-right u-mb-small">
                            <input id='new_password' required="" name="new_password" class="c-input" type="password">
                            <button tabindex="-1" type="button" class="c-field__addon" onclick="toggle('new_password',this)">
                                <i class="fa fa-eye-slash"></i>
                            </button>
                        </div>

                        <label class="c-field__label">Re-enter New Password</label>
                        <div class="c-field has-addon-right u-mb-small">
                            <input id="confirm_new_password" required="" name="confirm_new_password" class="c-input" type="password">
                            <button tabindex="-1" type="button" class="c-field__addon" onclick="toggle('confirm_new_password',this)">
                                <i class="fa fa-eye-slash"></i>
                            </button>
                        </div>    


                        <button class="c-btn c-btn--info" type="submit">
                            Submit
                        </button>

                    </form>

                </div>
            </div><!-- .c-stage -->

        </div>
    </div>
</div> 

<?php $this->load->view('app/_layouts/footer'); ?>