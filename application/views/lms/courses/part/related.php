<?php if (!empty($courses['related_courses'])): ?>
    <div class="container u-ph-small">
        <div class="row u-mt-small u-p-zero">

            <div class="col-12">
                <h3 class="u-mb-small u-text-center">                   
                    <?php echo $this->lang->line('related_courses') ?>
                </h3>
            </div>

            <?php foreach ($courses['related_courses'] as $post): ?>
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

        </div>
    </div>
<?php endif ?>