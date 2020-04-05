<?php $this->load->view('app/_layouts/header'); ?>
<?php $this->load->view('app/_layouts/sidebar'); ?>
<?php $this->load->view('app/_layouts/toolbar'); ?>
<?php $this->load->view('app/_layouts/content'); ?>

<div class="col-md-12 u-p-zero">

    <div class="c-card c-card--responsive h-100vh u-p-zero">
        <div class="c-card__header c-card__header--transparent o-line">
            <button data-title="Create" class="c-btn--custom c-btn--small c-btn c-btn--blue" id='modal-create' data-toggle="modal" data-target="#modal">
                <i class="fa fa-plus"></i>
            </button>
            <button data-title="are you sure ?" data-text="to delete selected item" title="Delete Multiple" value="delete" class="c-btn--custom c-btn--small c-btn c-btn--danger action-multiple btn-opsi">
                <i class="fa fa-trash"></i>
            </button>
        </div>
        <div class="c-card__body">

            <form id='form-multiple' action="<?php echo base_url('app/blog_post_tags/process_multiple') ?>" method="post">

                <table data-mysearch="Search..." data-myorder='1' data-myurl="<?php echo base_url('app/blog_post_tags/datatables') ?>" class="c-table c-table--highlight" id="table" width="100%">
                    <caption class="c-table__title cst-table">
                    </caption>

                    <thead class="c-table__head c-table__head--slim">
                        <tr class="c-table__row">
                            <th class="c-table__cell c-table__cell--head text-center no-sort all">
                                <input name="select_all" type="checkbox" id="checkbox-all">
                            </th>
                            <th class="c-table__cell c-table__cell--head none">id</th>
                            <th class="c-table__cell c-table__cell--head all">name</th>
                            <th class="c-table__cell c-table__cell--head no-sort all">tools</th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>

            </form>

        </div>
    </div>
</div>

<?php $this->load->view('app/blog_post_tags/form'); ?>
<?php $this->load->view('app/_layouts/footer'); ?>
