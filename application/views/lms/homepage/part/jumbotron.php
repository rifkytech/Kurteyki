<?php if ($site['page_type'] =='index'): ?>
<div style="background: #bbe2ff">
	<div class="container">                   
		<div class="row">

			<div class="col-12">    

				<div class="row u-pt-large">

					<div class="col-lg-4 u-flex u-hidden-down@desktop">
						<img style="width: 200px" src="<?php echo base_url('storage/uploads/lms/intro.png') ?>" alt="intro"> 
					</div>

					<div class="col-lg-8 u-pb-large">

						<h2 class="u-h3 u-text-bold">
							<?php echo $site['description'] ?>
						</h2>   

						<div class="row">
							
							<div class="col-12 col-lg-4">
								<div class="c-state-card u-m-zero u-p-small" data-mh="state-cards">
									<div class="c-state-card__icon c-state-card__icon--info" style="width: 30px;height: 30px;">
										<i class="fa fa-dollar"></i>
									</div>
									<div class="c-state-card__content">
										<p>
											Tersedia Materi Gratis
										</p>
									</div>
								</div>
							</div>

							<div class="col-12 col-lg-4">
								<div class="c-state-card u-m-zero u-p-small" data-mh="state-cards">
									<div class="c-state-card__icon c-state-card__icon--info" style="width: 30px;height: 30px;">
										<i class="fa fa-book"></i>
									</div>
									<div class="c-state-card__content">
										<p>
											Tersusun Rapih
										</p>
									</div>
								</div>
							</div>

							<div class="col-12 col-lg-4">
								<div class="c-state-card u-m-zero u-p-small" data-mh="state-cards">
									<div class="c-state-card__icon c-state-card__icon--info" style="width: 30px;height: 30px;">
										<i class="fa fa-star"></i>
									</div>
									<div class="c-state-card__content">
										<p>
											Mudah Dipahami
										</p>
									</div>
								</div>
							</div>

						</div>

					</div>

				</div>

			</div>

		</div>
	</div>
</div>	
<?php endif ?>