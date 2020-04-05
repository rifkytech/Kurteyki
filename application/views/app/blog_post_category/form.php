<!-- Modal -->
<form id="form-master" data-action="<?php echo base_url('app/blog_post_category/process') ?>" method="POST">
    <div class="c-modal c-modal--xsmall modal fade" id="modal" tabindex="-1">
        <div class="c-modal__dialog modal-dialog" role="document">
            <div class="c-modal__content">
                <div class="c-modal__header">
                    <h3 class="c-modal__title cst-modal-title"></h3>
                    <span class="c-modal__close" data-dismiss="modal" aria-label="Close">
                        <i class="fa fa-close"></i>
                    </span>
                </div>
                <div class="c-modal__body">

                    <div class="c-field u-mb-small">
                        <label class="c-field__label">name : </label>
                        <input autocomplete="off" required class="c-input" name="name" id="name"
                        type="text" placeholder="name">
                    </div>

                </div>

                <div class="c-modal__footer">
                    <input type="hidden" name="id">
                    <button class="c-btn c-btn--info" name="submit" type="submit">
                        <i class="fa fa-save"></i>
                    </button>
                </div>

            </div><!-- // .c-modal__content -->

        </div><!-- // .c-modal__dialog -->
    </div><!-- // .c-modal -->
</form>
