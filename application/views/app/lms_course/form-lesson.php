<?php $this->load->view('app/_layouts/header'); ?>
<?php $this->load->view('app/_layouts/sidebar'); ?>
<?php $this->load->view('app/_layouts/content'); ?>

<div class="col-md-12 u-p-zero">

    <div class="c-card c-card--responsive h-100vh">
        <div class="c-card__body">

            <form action="<?php echo base_url('app/lms_course/process_lesson') ?>"  method="post" enctype="multipart/form-data">

                <?php $this->load->view('app/_layouts/alert'); ?>

                <div class="c-stage u-mb-zero">

                    <div class="c-stage__header o-media u-justify-start">
                        <div class="c-stage__icon o-media__img">
                            <i class="fa fa-info"></i>
                        </div>
                        <div class="c-stage__header-title o-media__body">
                            <h6 class="u-mb-zero">Lesson Data</h6>
                        </div>
                    </div>

                    <div class="c-stage__panel u-p-medium">

                        <div class="row">
                            <div class="col-12 col-lg-6 c-field u-mb-medium">
                                <label class="c-field__label">title : </label>
                                <input autofocus="" required class="c-input" name="title" type="text" placeholder="title" value="<?php echo (!empty($lesson['title']) ? $lesson['title'] : '') ?>">
                            </div>

                            <div class="col-12 col-lg-6 c-field u-mb-medium">
                                <label class="c-field__label">type : </label>

                                <select name="type" class="select2-search">
                                    <option></option>
                                    <option <?php echo (!empty($lesson['type']) AND $lesson['type'] == 'Text') ? 'selected' : ''; ?> value="Text">Text</option>
                                    <option <?php echo (!empty($lesson['type']) AND $lesson['type'] == 'Video') ? 'selected' : ''; ?> value="Video">Video</option>
                                    <option <?php echo (!empty($lesson['type']) AND $lesson['type'] == 'Image') ? 'selected' : ''; ?> value="Image">Image</option>
                                </select>
                            </div>       

                            <div class="col-12 col-lg-12 c-field u-mb-medium">
                                <label class="c-field__label u-mb-small">content : </label>
                                <textarea required class="editor" name="content">
                                    <?php echo (!empty($lesson['content']) ? $lesson['content'] : '') ?>
                                </textarea>
                            </div>                  

                        </div>

                    </div>

                    <div class="c-stage__panel u-p-medium">

                        <?php if (!empty($lesson)): ?>
                            <input name="id" type="hidden" value="<?php echo $lesson['id'] ?>">
                        <?php endif ?>     
                        <input type="hidden" name="id_course" value="<?php echo $data['course_id']; ?>">   
                        <input type="hidden" name="id_section" value="<?php echo $data['section_id']; ?>">
                        <button type="submit" class="c-btn c-btn--primary c-btn--custom"> 
                            Submit
                        </button>
                    </div>

                </div>

            </form>
        </div>
    </div>
</div>

<?php $this->load->view('app/_layouts/modal_filemanager'); ?>
<?php $this->load->view('app/_layouts/footer'); ?>