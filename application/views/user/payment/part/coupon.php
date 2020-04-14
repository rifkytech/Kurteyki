<div class="u-h4 u-mb-small">
	<?php echo $this->lang->line('payment_coupon'); ?> 
</div> 
<div class="c-card u-p-small u-mb-small">  
	<form id='form-coupon' data-action="<?php echo base_Url('payment/use_coupon') ?>" method="POST">
		<input value="<?php echo $courses['id'] ?>" name="id_courses" class="c-input" type="hidden">		
		<div class="c-field has-addon-right">
			<input placeholder="<?php echo $this->lang->line('payment_coupon_insert'); ?> " required name="code" class="c-input" type="text">
			<span class="u-ml-auto c-field__addon">
				<button id='check-coupon' class="c-btn c-btn--fancy u-p-xsmall" type="submit">
					<?php echo $this->lang->line('payment_coupon_check'); ?> 
				</button>
				<button id='remove-coupon' class="c-btn c-btn--danger u-p-xsmall u-hidden" type="button">
					<i class="fa fa-trash"></i>
				</button>
			</span>
		</div>
		<span id="coupon-respon"></span>
	</form>
</div>