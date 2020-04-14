<footer class="u-border-top" style="background: #fff;position: fixed;bottom: 0;left: 0;right: 0">
    <div class="container">
        <div class="row">
            <div class="col-12 col-xl-8 offset-xl-2 u-pv-xsmall"> 

                <div class="row">
                    <div class="col-6 col-lg-4 c-toolbar__state">
                        <span class="c-toolbar__state-title">
                            <?php echo $this->lang->line('price'); ?> 
                        </span>
                        <h4 class="c-toolbar__state-number u-h4">
                            <?php echo $courses['price'] ?>
                        </h4>
                    </div>
                    <div class="col-6 col-lg-4 c-toolbar__state">
                        <span class="c-toolbar__state-title">
                            <?php echo $this->lang->line('discount'); ?> 
                        </span>
                        <h4 class="c-toolbar__state-number u-h4">
                            <?php if (!empty($courses['discount'])): ?>
                                <?php echo $courses['discount'] ?>
                            <?php endif ?>
                            <?php if (empty($courses['discount'])): ?>
                                <?php echo $courses['discount_original'] ?>
                            <?php endif ?>
                        </h4>
                        <div id="order-discount-coupon" class="u-hidden">                            
                            <span class="c-toolbar__state-title">
                                <?php echo $this->lang->line('discount_coupun'); ?> 
                            </span>
                            <h4 class="c-toolbar__state-number u-h4">
                                <?php if (!empty($courses['discount'])): ?>
                                    <?php echo $courses['discount'] ?>
                                <?php endif ?>
                                <?php if (empty($courses['discount'])): ?>
                                    <?php echo $courses['discount_original'] ?>
                                <?php endif ?>
                            </h4>
                        </div>
                    </div>

                    <div class="col-12 col-lg-4 c-toolbar__state order-first order-lg-last">
                        <div class="c-toolbar__state-number u-h4">
                            <?php echo $this->lang->line('total_price'); ?> 
                            <div id='order-price-total' class="u-block" data-price-total='<?php echo $courses['price_total'] ?>'>
                                <?php echo $courses['price_total'] ?>
                            </div>
                        </div>
                        <button data-lang='<?php echo ($site['language'] == 'indonesia') ? 'id' : 'en' ?>' data-action='<?php echo base_url('payment/process') ?>' data-value="<?php echo $midtrans['token'] ?>" value="<?php echo $midtrans['token'] ?>" id="pay-button" class="c-btn c-btn--custom u-mb-small">
                        </i><?php echo $this->lang->line('order_now'); ?> 
                    </button>
                </div>
            </div>

        </div>

    </div>
</div>
</footer>