<?php $this->load->view('app/_layouts/header'); ?>
<?php $this->load->view('app/_layouts/sidebar'); ?>
<?php $this->load->view('app/_layouts/toolbar'); ?>
<?php $this->load->view('app/_layouts/content'); ?>

<div class="col-12 u-mv-small">

    <div class="c-card c-card--responsive h-100vh u-p-zero">
        <div class="c-card__header c-card__header--transparent o-line">
            <a class="c-btn--custom c-btn--small c-btn c-btn--success" href="<?php echo base_url('app/site_pages/create') ?>">
                <i class="fa fa-plus"></i>
            </a>
            <button data-title="are you sure ?" data-text="to post selected item" title="Post Multiple" value="post" class="c-btn--custom c-btn--small c-btn c-btn--info u-ml-auto u-mr-xsmall action-multiple btn-opsi">
                <i class="fa fa-send-o"></i>
            </button>                        
            <button data-title="are you sure ?" data-text="to draft selected item" title="Return to Draft Multiple" value="draft" class="c-btn--custom c-btn--small c-btn c-btn--fancy u-mr-xsmall action-multiple btn-opsi">
                <i class="fa fa-reply"></i>
            </button>            
            <button data-title="are you sure ?" data-text="to delete selected item" title="Delete Multiple" value="delete" class="c-btn--custom c-btn--small c-btn c-btn--danger action-multiple btn-opsi">
                <i class="fa fa-trash"></i>
            </button>
        </div>
        <div class="c-card__body">

            <?php $this->load->view('app/_layouts/alert'); ?>

            <form id='form-multiple' action="<?php echo base_url('app/site_pages/process_multiple') ?>" method="post">

                <div class="c-table-responsive">
                    <table data-mysearch="Search..." data-myorder='1' data-myurl="<?php echo base_url('app/site_pages/datatables') ?>" class="c-table c-table--highlight" id="table" width="100%">
                        <caption class="c-table__title cst-table">
                        </caption>

                        <thead class="c-table__head c-table__head--slim">
                            <tr class="c-table__row">
                                <th class="c-table__cell c-table__cell--head text-center no-sort all">
                                    <input name="select_all" type="checkbox" id="checkbox-all">
                                </th>
                                <th class="c-table__cell c-table__cell--head none">id</th>
                                <th class="c-table__cell c-table__cell--head all">title</th>
                                <th class="c-table__cell c-table__cell--head none">time</th> 
                                <th class="c-table__cell c-table__cell--head none">updated</th>                            
                                <th class="c-table__cell c-table__cell--head no-sort all u-text-center">tools</th>
                            </tr>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>

            </form>

        </div>
    </div>
</div>

<?php $this->load->view('app/_layouts/footer'); ?>
