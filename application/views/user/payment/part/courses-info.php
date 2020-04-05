<div class="u-h4">
    <?php echo $this->lang->line('payment_detail'); ?> 
</div> 
<div class="c-card u-p-medium u-mb-small">  

    <article class="c-stage u-mb-zero" id="stages">
        <a class="c-stage__header u-flex u-justify-between" data-toggle="collapse" href="#stage-detail-pembelian" aria-expanded="true" aria-controls="stage-detail-pembelian">
            <div class="o-media">
                <div class="c-stage__header-title o-media__body">
                    <h6 class="u-mb-zero">
                        <?php echo $courses['title']; ?>
                    </h6>
                </div>
            </div>

            <i class="fa fa-angle-down u-text-mute"></i>
        </a>
        <div class="c-stage__panel c-stage__panel--mute collapse show" id="stage-detail-pembelian" style="">
            <div class="u-p-medium">

                <p class="u-text-mute u-text-uppercase u-text-small u-mb-xsmall">
                    <?php echo $this->lang->line('payment_lesson'); ?> 
                </p>

                <ul class="row">
                    <?php if (!empty($courses['count_type_lesson']['Text'])): ?>
                        <li class="col-md-6 u-mb-xsmall u-text-small u-color-primary">
                            <i class="fa fa-file-text u-color-info u-text-mute u-mr-xsmall"></i>
                            <?php echo $courses['count_type_lesson']['Text'] ?> Text
                        </li>
                    <?php endif ?>  
                    <?php if (!empty($courses['count_type_lesson']['Video'])): ?>
                        <li class="col-md-6 u-mb-xsmall u-text-small u-color-primary">
                            <i class="fa fa-newspaper-o u-color-info u-text-mute u-mr-xsmall"></i>
                            <?php echo $courses['count_type_lesson']['Video'] ?> Video
                        </li>
                    <?php endif ?>  
                    <?php if (!empty($courses['count_type_lesson']['Image'])): ?>
                        <li class="col-md-6 u-mb-xsmall u-text-small u-color-primary">
                            <i class="fa fa-newspaper-o u-color-info u-text-mute u-mr-xsmall"></i>
                            <?php echo $courses['count_type_lesson']['Image'] ?> Image
                        </li>
                    <?php endif ?>  
                    <?php if (!empty($courses['count_type_lesson']['File'])): ?>
                        <li class="col-md-6 u-mb-xsmall u-text-small u-color-primary">
                            <i class="fa fa-newspaper-o u-color-info u-text-mute u-mr-xsmall"></i>
                            <?php echo $courses['count_type_lesson']['File'] ?> File
                        </li>
                    <?php endif ?>                                
                </ul>

            </div>
        </div>
    </article>

</div>