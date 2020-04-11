<?php $this->load->view('lms/default-app/_layouts/header'); ?>
<?php $this->load->view('lms/default-app/_layouts/nav'); ?>
<?php $this->load->view('lms/default-app/homepage/part/jumbotron'); ?>

<div class="container u-mv-small">                   

	<div class="row">

		<?php if (!empty($courses['data'])): ?>

			<div class="col-lg-12 col-md-12">

				<div class="u-mb-small u-pv-small o-line u-border-bottom">
					<h3 class="u-h3">
						<?php echo $site['breadcrumbs'] ?>
					</h3>

					<div class="u-ml-auto" style="min-width: 200px">						
						<select id='select-category' class="select2-search" data-placeholder='<?php echo $this->lang->line('select_category') ?>'>
							<option></option>
							<?php
							foreach ($widget['all_category'] as $category_name => $child_category) {

								echo "<optgroup label='".$category_name."'>";

								foreach ($child_category as $category) {
									if (!empty($this->uri->segment(3)) AND $this->uri->segment(3) == $category['name']) {
										echo "<option value='".$category['url']."' selected>".$category['name']."</option>";
									}else {
										echo "<option value='".$category['url']."'>".$category['name']."</option>";
									}
								}

								echo "</optgroup>";
							}

							?>
						</select>
					</div>

				</div>

				<div class="row">					
					<?php foreach ($courses['data'] as $post): ?>

						<div class="col-sm-12 col-lg-4">

							<article class="c-event u-p-zero" data-mh="landing-cards">
								<div class="c-event__img u-m-zero">
									<a title="<?php echo $post['title'] ?>" class="u-color-primary" href="<?php echo $post['url'] ?>">
										<img width="100%" src="<?php echo $post['image']['thumbnail'] ?>" alt="<?php echo $post['title'] ?>">
									</a>
									
									<span class="c-event__status u-bg-secondary u-color-primary">
										<?php if ($post['sub_category']['icon']): ?>
											<i class="fa <?php echo $post['sub_category']['icon'] ?>"></i>
										<?php endif ?>
										<?php if (empty($post['sub_category']['icon'])): ?>
											<i class="fa fa-folder"></i>
										<?php endif ?>
										<a class='u-text-dark' href="<?php echo $post['sub_category']['url'] ?>" title="<?php echo $post['sub_category']['name'] ?>">
											<?php echo $post['sub_category']['name'] ?>
										</a>
									</span>
								</div>
								<div class="c-event__meta u-p-small">
									<a title="<?php echo $post['title'] ?>" class="u-color-primary u-h4 u-text-bold" href="<?php echo $post['url'] ?>">
										<?php echo $post['title'] ?>
									</a>
								</div>
								<div class="c-event__meta u-p-small u-border-top">
									<span class="cursor-default c-btn c-event__btn c-btn--custom u-bg-secondary u-color-primary u-border-zero"><i class="fa fa-eye u-mr-xsmall"></i><?php echo $post['views'] ?></span>          
									<?php if (empty($post['price'])): ?>
										<span class="cursor-default c-btn c-event__btn c-btn--custom u-bg-secondary u-color-primary u-border-zero">
											<i class="fa fa-shopping-cart u-mr-xsmall"></i>
											<?php echo $this->lang->line('free') ?>
										</span>
									<?php endif ?>
									<?php if (!empty($post['price'])): ?>
										<span class="cursor-default c-btn c-event__btn c-btn--custom u-bg-info u-text-small">
											<?php if (!empty($post['discount'])): ?>
												<s class="u-text-xsmall u-mr-xsmall"><?php echo $post['price'] ?></s>
												<?php echo $post['price_total'] ?>
											<?php endif ?>
											<?php if (empty($post['discount'])): ?>
												<?php echo $post['price_total'] ?>
											<?php endif ?>
										</span>
									<?php endif ?>
								</div>								
							</article>

						</div>
						
					<?php endforeach ?>	

					<div class="col-12">
						<?php $this->load->view('lms/default-app/_layouts/pagination');?>	
					</div>	
				</div>

			</div>

			<?php else: ?><div class="col-sm-12 col-lg-12">
				<div class="c-card u-p-medium u-pv-xlarge" data-mh="landing-cards">

					<div class="u-text-center u-justify-between">
						<div class="c-avatar c-avatar--large u-mb-small u-inline-flex">
							<img class="c-avatar__img" src="<?php echo base_url('storage/assets/app/img/logo.png') ?>" alt="<?php echo $this->lang->line('courses_not_found') ?>">
						</div>

						<p class="u-h5"><?php echo $this->lang->line('courses_not_found') ?></p>

					</div>

				</div>
			</div>
		<?php endif ?>

	</div><!-- // .row -->

</div><!-- // .container -->

<?php $this->load->view('lms/default-app/_layouts/footer-widget'); ?>
<?php $this->load->view('lms/default-app/_layouts/footer'); ?>