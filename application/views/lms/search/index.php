<?php $this->load->view('lms/_layouts/header'); ?>
<?php $this->load->view('lms/_layouts/nav'); ?>

<div class="container u-mv-small">                   

	<div class="row">

		<div class="col-lg-12 col-md-12">

			<div class="u-mb-small u-pv-small o-line u-border-bottom">
				<h3 class="u-h3">
					<?php echo $site['breadcrumbs'] ?>
				</h3>

				<div class="u-ml-auto" style="min-width: 200px">						
					<select id='select-category' class="select2-search">
						<option></option>
						<?php
						foreach ($widget['all_category'] as $category_name => $child_category) {

							echo "<optgroup label='".$category_name."'>";

							foreach ($child_category as $category) {
								if (!empty($this->uri->segment(3)) AND $this->uri->segment(3) == strtolower($category['name'])) {
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
				<?php if (!empty($courses['data'])): ?>
					<?php foreach ($courses['data'] as $post): ?>

						<div class="col-sm-12 col-lg-4">

							<article class="c-event u-p-zero" data-mh="landing-cards">
								<div class="c-event__img u-m-zero">
									<a title="<?php echo $post['title'] ?>" class="u-color-primary" href="<?php echo $post['url'] ?>">
										<img width="100%" src="<?php echo $post['image']['thumbnail'] ?>" alt="<?php echo $post['title'] ?>">
									</a>

									<?php if (empty($post['price'])): ?>
										<span class="c-event__status u-bg-secondary u-color-primary">
											<i class="fa fa-shopping-cart u-mr-xsmall"></i>
											<?php echo $this->lang->line('free') ?>
										</span>
									<?php endif ?>
									<?php if (!empty($post['price'])): ?>
										<span class="c-event__status u-bg-info">
											<i class="fa fa-shopping-cart u-mr-xsmall"></i>
											<?php echo $post['price'] ?>
										</span>
									<?php endif ?>
								</div>
								<div class="c-event__meta u-p-small">
									<a title="<?php echo $post['title'] ?>" class="u-color-primary u-h4 u-text-bold" href="<?php echo $post['url'] ?>">
										<?php echo $post['title'] ?>
									</a>
								</div>
							</article>

						</div>
						
					<?php endforeach ?>	

					<div class="col-12">
						<?php $this->load->view('lms/_layouts/pagination');?>	
					</div>	


					<?php else: ?><div class="col-sm-12 col-lg-12">
						<div class="c-card u-p-medium u-pv-xlarge" data-mh="landing-cards">

							<div class="u-text-center u-justify-between">
								<p class="u-h5"><?php echo $this->lang->line('courses_not_found_search') ?></p>
							</div>

						</div>
					</div>					
				<?php endif ?>

			</div>

		</div>

	</div><!-- // .row -->

</div><!-- // .container -->

<?php $this->load->view('lms/_layouts/footer-widget'); ?>
<?php $this->load->view('lms/_layouts/footer'); ?>