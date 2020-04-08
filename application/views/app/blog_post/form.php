<?php $this->load->view('app/_layouts/header'); ?>
<?php $this->load->view('app/_layouts/sidebar'); ?>
<?php $this->load->view('app/_layouts/content'); ?>

<div class="col-12">

<form action="<?php echo base_url('app/blog_post/process') ?>" class="row" method="post" enctype="multipart/form-data">

    <div class="col-12 col-xl-9 col-lg-9 u-p-zero">

        <div class="c-card c-card--responsive h-100vh u-p-zero">
            <div class="c-card__header c-card__header--transparent o-line">

                <button class="c-btn c-btn--info c-btn--custom" name="publish" type="submit" title="publish">
                    <i class="fa fa-save" aria-hidden="true"></i>
                </button>

                <?php if (!empty($blog_post)): ?>
                    <input type="hidden" name="id" value="<?php echo (!empty($blog_post['id']) ? $blog_post['id'] : '') ?>">
                <?php endif ?>

                <div class="u-ml-auto" style="max-width: 150px">
                    <label><input value="Published" name="status" type="radio" <?php echo (!empty($blog_post['status'])) ? ($blog_post['status'] == 'Published') ? 'checked' : '' : 'checked'?>>Published</label>
                    <label><input value="Draft" name="status" type="radio" <?php echo (!empty($blog_post['status'])) ? ($blog_post['status'] == 'Draft') ? 'checked' : '' : '' ?>>Draft</label>
                </div>

            </div>
            <div class="c-card__body u-p-small">

                <div class="c-field u-mb-small">
                    <label class="c-field__label">title : </label>
                    <input autofocus autocomplete="off"
                    value="<?php echo (!empty($blog_post['title']) ? $blog_post['title'] : '') ?>" required
                    class="c-input" name="title" id="title" type="text"
                    placeholder="title">
                </div>

                <div class="c-field u-mb-small">
                    <label class="c-field__label">content</label>
                    <style type="text/css">
                    #cke_ckeditor img {max-width:100% !important;height:auto !important
                    </style>
                    <textarea required class="editor" name="content">
                        <?php echo (!empty($blog_post['content']) ? $blog_post['content'] : '') ?>
                    </textarea>
                </div>

            </div>

        </div>

    </div>

    <div class="col-xl-3 col-lg-3 u-p-zero">

        <div class="c-card c-card--responsive h-100vh  u-p-zero">
            <div class="c-card__header c-card__header--transparent o-line">
                <h5 class="c-card__title">
                    Setting
                </h5>
            </div>
            <div class="c-card__body u-p-small">

                <div class="c-field u-mb-small">
                    <label class="c-field__label">permalink : </label>

                    <?php if ((empty($blog_post['status']))): ?>
                        <label><input name="permalink_auto" value="auto" type="radio" checked="">Auto</label>
                        <label><input name="permalink_auto" value="manual" type="radio">Manual</label>

                        <input name="permalink_old" type="hidden" value="<?php echo (!empty($blog_post['permalink']) ? $blog_post['permalink'] : '') ?>">
                        <input onClick="this.select();" autocomplete="off"
                        value="<?php echo (!empty($blog_post['permalink']) ? $blog_post['permalink'] : '') ?>"
                        class="c-input" name="permalink" id="permalink"
                        type="hidden" placeholder="permalink">
                        <?php else: ?>

                            <label><input name="permalink_auto" value="auto" type="radio">Auto</label>
                            <label><input name="permalink_auto" value="manual" type="radio" checked="">Manual</label>

                            <input name="permalink_old" type="hidden" value="<?php echo (!empty($blog_post['permalink']) ? $blog_post['permalink'] : '') ?>">
                            <input onClick="this.select();" autocomplete="off"
                            value="<?php echo (!empty($blog_post['permalink']) ? $blog_post['permalink'] : '') ?>"
                            class="c-input" name="permalink" id="permalink"
                            type="text" placeholder="permalink">                    
                        <?php endif ?>
                    </div>

                    <div class="c-field u-mb-small">
                        <label class="c-field__label">description : </label>
                        <textarea rows="3" class="c-input" name="description" id="description" placeholder="description"><?php echo (!empty($blog_post['description']) ? $blog_post['description'] : '') ?></textarea>
                    </div>                

                    <?php if (!empty($blog_post['image'])): ?>
                        <div class="c-field u-mb-small">
                            <label class="c-field__label">Recent Image : </label>
                            <img style="width: 50px" src="<?php echo $blog_post['image'] ?>" alt="Image">
                        </div>
                    <?php endif ?>

                    <div class="c-field u-mb-small">
                        <label class="c-field__label">Image : </label>
                        <div class="c-field has-addon-right">
                            <input value="<?php echo (!empty($blog_post['image']) ? $blog_post['image'] : '') ?>" require name="image" class="c-input" id="image" type="text">
                            <span class="u-ml-auto c-field__addon">
                                <button id='button-filemanager' data-src="<?php echo base_url(PATH_FILE_MANAGER."?type=1&relative_url=1&&field_id=image&akey=".$this->session->userdata('key')) ?>" class="c-btn c-btn--fancy u-p-xsmall" type="button" data-toggle="modal" data-target="#modal-filemanager">
                                    <i class="fa fa-search"></i>
                                </button>
                               <!--  <a
                                href="javascript:open_popup('<?php echo base_url(PATH_FILE_MANAGER."&popup=1&field_id=image") ?>')"
                                class="c-btn c-btn--fancy u-p-xsmall" type="button"><i class="fa fa-search"></i></a> -->
                            </span>
                        </div>
                    </div>

                    <div class="c-field u-mb-small">
                        <label class="c-field__label">time : </label>
                        <input value="<?php echo (!empty($blog_post['time']) ? $blog_post['time'] : date('Y-m-d H:i')) ?>"
                        autocomplete="off" id="datetimepicker" class="c-input" name="time"
                        id="time" type="text" placeholder="time">
                    </div>

                    <div class="c-field u-mb-medium">
                        <label class="c-field__label">category</label>

                        <select required name="id_category" class="has-search select2category">
                            <option></option>
                            <?php
                            foreach ($categorys as $category) {
                                if (!empty($blog_post['id_category']) AND $blog_post['id_category'] == $category['id']) {
                                    echo "<option value='".$category['id']."' selected>".$category['name']."</option>";
                                }else {
                                    echo "<option value='".$category['id']."'>".$category['name']."</option>";
                                }
                            }

                            ?>
                        </select>
                    </div>

                    <div class="c-field u-mb-medium">
                        <label class="c-field__label">tags</label>

                        <select required name="id_tags[]" multiple class="c-select--multiple select2tags">
                            <?php
                            foreach ($tags as $key => $tag) {
                                $selected = false;
                                if (!empty($blog_post['id_tags'])) {
                                    $selected = (in_array($tags[$key]['id'],explode(',',$blog_post['id_tags'])) ? 'selected="selected"' : ''); 
                                }
                                echo "<option value='".$tag['id']."' ".$selected.">".$tag['name']."</option>";
                            }
                            ?>
                        </select>
                    </div>

                </div>

            </div>

        </div>

    </form>

</div>

<?php $this->load->view('app/_layouts/modal_filemanager'); ?>
<?php $this->load->view('app/_layouts/footer'); ?>
