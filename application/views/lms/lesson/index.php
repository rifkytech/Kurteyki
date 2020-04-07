<?php $this->load->view('lms/_layouts/header'); ?>

<?php $this->load->view('lms/lesson/part/nav'); ?>

<div class="container-fluid">                   

    <div class="row">

        <div class="col-xl-3 col-lg-4 u-p-zero">

            <article class="c-stage u-mb-zero" style="max-height: calc(100vh - 4.5rem);min-height: calc(100vh - 4.5rem);overflow-y: auto;" id="accordion">

                <div class="c-stage__header u-flex u-justify-between">

                    <h3 class="u-text-bold u-mb-zero u-h5" style="cursor: default;">
                        <?php echo $this->lang->line('toc') ?>
                    </h3>
                </div>

                <?php foreach ($courses['all_data'] as $courses_data): ?>

                    <!-- section -->
                    <div class="c-stage__header u-flex u-justify-between u-p-xsmall <?php echo ($courses_data['id_section'] != $this->uri->segment(4)) ? 'collapsed' : 'u-bg-secondary' ?>" data-toggle="collapse" href="#stage-panel-<?php echo $courses_data['id_section'] ?>" aria-expanded="false" aria-controls="stage-panel-<?php echo $courses_data['id_section'] ?>">

                        <div class="o-media">
                            <div class="c-stage__icon o-media__img">
                                <i class="fa <?php echo ($courses_data['id_section'] != $this->uri->segment(4)) ? '' : 'u-text-dark' ?>"></i>
                            </div>
                            <div class="c-stage__header-title o-media__body <?php echo ($courses_data['id_section'] != $this->uri->segment(4)) ? '' : 'u-text-dark' ?>">
                                <?php echo $courses_data['title_section'] ?>
                            </div>
                        </div>

                    </div>

                    <div data-parent="#accordion" class="c-stage__panel <?php echo ($courses_data['id_section'] != $this->uri->segment(4)) ? 'collapse' : 'collapse show' ?>" id="stage-panel-<?php echo $courses_data['id_section'] ?>">

                        <?php foreach ($courses_data['lesson'] as $lesson): ?>    
                            <?php if (!empty($lesson)): ?>
                                <div class="u-mb-zero o-line c-stage__header u-justify-start u-p-zero" style='<?php echo ($lesson['id'] == $this->uri->segment(5)) ? 'background: #a3d3f7' : '' ?>;position: relative;'>
                                    <a href="<?php echo $lesson['url'] ?>" class='custom u-pv-xsmall u-ph-medium u-width-100'>
                                        <?php if ($lesson['type'] == 'Text'): ?>
                                            <i class="fa fa-file-text-o u-mr-xsmall"></i>
                                        <?php endif ?>
                                        <?php if ($lesson['type'] == 'Image'): ?>
                                            <i class="fa fa-picture-o u-mr-xsmall"></i>
                                        <?php endif ?>
                                        <?php if ($lesson['type'] == 'Video'): ?>
                                            <i class="fa fa-youtube-play u-mr-xsmall"></i>
                                        <?php endif ?>
                                        <?php if ($lesson['type'] == 'File'): ?>
                                            <i class="fa fa-zip-o u-mr-xsmall"></i>
                                        <?php endif ?>
                                        <?php echo $lesson['title'] ?>
                                    </a>
                                    <?php if ($lesson['user_lesson']): ?>
                                        <button data-id-courses='<?php echo $courses['id'] ?>' data-id-lesson='<?php echo $lesson['id'] ?>' class="c-btn c-btn--primary c-btn--small btn-process-lesson u-ml-auto" data-action="<?php echo base_url('user/courses/process_lesson/') ?>" style='overflow: unset;position: absolute;right: 10px;padding: 2px 4px;'>
                                            <i class="fa fa-check u-color-success u-m-zero"></i>
                                        </button >
                                    <?php endif ?>
                                    <?php if (empty($lesson['user_lesson'])): ?>
                                        <button data-id-courses='<?php echo $courses['id'] ?>' data-id-lesson='<?php echo $lesson['id'] ?>' class="c-btn c-btn--primary c-btn--small btn-process-lesson u-ml-auto" data-action="<?php echo base_url('user/courses/process_lesson/') ?>" style='overflow: unset;position: absolute;right: 10px;padding: 2px 4px;'>
                                            <i class="fa fa-check u-color-white u-m-zero"></i>
                                        </button >
                                    <?php endif ?>
                                </div>
                            <?php endif ?>                

                            <?php if (empty($lesson)): ?>
                                <div class="u-p-small u-border-radius-10 u-text-white u-bg-primary u-mv-xsmall u-mh-medium">
                                    <?php echo $this->lang->line('no_material') ?>
                                </div>
                            <?php endif ?>
                        <?php endforeach ?>

                    </div>
                    <!-- section -->

                <?php endforeach ?>

            </article>

        </div>

        <div class="col-12 col-xl-9 col-lg-8 col-md-12 u-p-zero order-first order-lg-last">
            <article class="c-stage u-mb-zero" style="max-height: calc(100vh - 4.5rem);min-height: calc(100vh - 4.5rem);overflow-y: auto;">

                <div class="c-stage__header u-flex u-justify-between">
                    <div class="col-12 col-xl-8 col-md-12 offset-xl-2">
                        <h1 class="u-text-bold u-h4 u-mb-zero" style="cursor: default;">
                            <?php echo $courses['lesson_detail']['title'] ?>
                        </h1>
                    </div>
                </div>

                <div class="col-12 col-xl-8 col-md-12 offset-xl-2">
                    <?php if (!empty($courses['lesson_detail'])): ?>
                        <div class="u-p-medium post-body">
                            <?php echo $courses['lesson_detail']['content'] ?>
                        </div>
                    <?php endif ?>
                </div>
            </article>

        </div>

    </div>

</div><!-- // .container -->

<?php $this->load->view('lms/_layouts/footer'); ?>