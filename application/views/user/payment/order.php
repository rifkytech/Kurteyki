<?php $this->load->view('lms/_layouts/header'); ?>

<?php $this->load->view('user/payment/part/nav'); ?>

<div class="container u-mt-medium" style="padding-bottom: 200px">                   
	<div class="row">
		<div class="col-12 col-xl-8 offset-xl-2">    

			<?php $this->load->view('user/payment/part/courses-info'); ?>

		</div>
	</div>
</div>


<?php $this->load->view('user/payment/part/payment-button'); ?>

<?php $this->load->view('lms/_layouts/footer'); ?>