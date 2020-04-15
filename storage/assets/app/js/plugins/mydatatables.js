/*!
 * Datatables
 */
 /** Datatables Select All Function */
 function updateDataTableSelectAllCtrl(table) {
    var $table = table.table().node();
    var $chkbox_all = $('tbody input[type="checkbox"]', $table);
    var $chkbox_checked = $('tbody input[type="checkbox"]:checked', $table);
    var chkbox_select_all = $('input[name="select_all"]', $table).get(0);
    if ($chkbox_checked.length === 0) {
        /* If none of the checkboxes are checked */
        chkbox_select_all.checked = false;
        $(".btn-opsi").prop('disabled', true);
        if ('indeterminate' in chkbox_select_all) {
            chkbox_select_all.indeterminate = false;
        }
    } else if ($chkbox_checked.length === $chkbox_all.length) {
        /* If all of the checkboxes are checked */
        chkbox_select_all.checked = true;
        $(".btn-opsi").prop('disabled', true);
        if ('indeterminate' in chkbox_select_all) {
            chkbox_select_all.indeterminate = false;
            $(".btn-opsi").prop('disabled', false);
        }
    } else {
        /* If some of the checkboxes are checked */
        chkbox_select_all.checked = true;
        $(".btn-opsi").prop('disabled', true);
        if ('indeterminate' in chkbox_select_all) {
            chkbox_select_all.indeterminate = true;
            $(".btn-opsi").prop('disabled', false);
        }
    }
}

function datatables_serverside(resource_columns) {

    var form_multiple = $("#form-multiple"),
    action_delete = ".action-delete",
    action_multiple = $('.action-multiple'),  
    tombol_all_action = '.tombol-all-action';

    /** button create **/
    $("#modal-create").click(function() {
        $("#form-master input[type=text],input[type=hidden]").val('');
        $("#form-master select.select2").val(null).trigger('change');
        $(".cst-modal-title").html($(this).data('title'));
        $("button[name='submit']").prop("disabled", false);
    })

    $('#modal').on('shown.bs.modal', function() {
     $('#form-master input:enabled:visible:not([readonly]):first').focus();
 })

    $("#form-master").submit(function(e) {
        e.preventDefault();
        $("button[name='submit']").prop("disabled", true);
        $.ajax({
            url: $(this).data('action'),
            method: "POST",
            data: $(this).serialize(),
            dataType: 'JSON',
            success: function(data) {

                if (data.status == true) {


                    Swal.fire({
                        title: data.title,
                        icon: 'success',
                        confirmButtonColor: '#3085d6',
                    })
                    .then((result) => {

                        /* close modal */
                        $('.modal').each(function() {
                            $(this).modal('hide');
                        });

                        /* load datatables */
                        table.ajax.reload();

                    })                    

                } 
                else if (data.status == 'invalid') {
                    Swal.fire({
                        title: data.title,
                        icon: 'warning',
                        confirmButtonColor: '#3085d6',
                    })
                }else {
                    //swal("Hem!", "Terjadi kesalahan pada program, silahkan coba lagi", "error");
                }

                $("button[name='submit']").prop("disabled", false);
            },
            error: function(xhr, ajaxOptions, thrownError) {
                Swal.fire({
                    title: 'Error Processing !',
                    icon: 'error',
                    confirmButtonColor: '#3085d6',
                })
            }
        });
    })

    /**
    * Proses datatables
    * fix search with group concat : 
    * https://stackoverflow.com/questions/27352500/ignitedtables-filtering-on-group-concat-gives-error
    */
    let rows_selected = [],
    tablebest = $("#table"),
    table = tablebest.DataTable({
        'dom': 'lrftip',
        'language': {
            'length': "",
            'search': "",
            "lengthMenu": "_MENU_",
            'searchPlaceholder': tablebest.data('mysearch'),
            'processing': 'Loading...</span> ',
        },
        'select': {
            'style': 'multi'
        },
        processing: true,
        serverSide: true,
        responsive: {
            details: {
                type: 'column',
                target: 'button[name="action-view"]'
            }
        },
        autoWidth: false, 
        ajax: {
            "url": tablebest.data('myurl'),
            "type": "POST",
        },
        columns: resource_columns,
        'createdRow': function( row, data, dataIndex ) {
            $(row).addClass( 'c-table__row' );
        },
        "columnDefs": [
        {
            "targets": 'no-sort',
            "orderable": false,
        },{
            "targets": 'no-search',
            "searchable": false,
        }],
        // paging: false,
        order: [[tablebest.data('myorder'), 'DESC']],
        'pageLength': 5,
        'lengthMenu': [
        [5, 10, 100, 250, 500, 1000],
        [5, 10, 100, 250, 500, 1000]
        ],
        'rowCallback': function(row, data, dataIndex) {

            /* Get row ID */
            var rowId = data['id'];

            /* If row ID is in the list of selected row IDs */
            if ($.inArray(rowId, rows_selected) !== -1) {
                $(row).find('input[type="checkbox"]').prop('checked', true);
                $(row).addClass('selected');
            }
        },
        "initComplete": function(settings, json) {

            $("div.dataTables_length, div.dataTables_filter").show();
            $('div.dataTables_filter').appendTo($('.cst-table'));
            $('div.dataTables_length').css({ 'width': '50%', 'float': 'left' });
            $('div.dataTables_length').appendTo($('.cst-table'));
            $('div.dataTables_filter').css({ 'width': '50%', 'float': 'right', 'text-align': 'right' });

            tablebest.on("click", '.action-edit-coupon', function() {
                $(".cst-modal-title").html($(this).data('title'));
                $("input[name=id]").val($(this).data("id"));
                $("input[name=code]").val($(this).data("code"));
                $("input[name=expired]").val($(this).data("expired"));
                $("input[name=data]").val($(this).data("data"));
                $("#coupon-type").val($(this).data("type")).trigger('change');
                $("#coupon-for").val($(this).data("for")).trigger('change');
            });

            tablebest.on('click', action_delete, function(e) {
                e.preventDefault();
                Swal.fire({
                    title: $(this).data('title'),
                    text: $(this).data('text'),
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes'
                }).then((result) => {
                    if (result.value) {
                        $.ajax({
                            url: $(this).data('href'),
                            method: "GET",
                            success: function(data) {
                                table.ajax.reload();
                            }
                        });
                    }
                })
            });

            action_multiple.on('click', function(e) {
                var thisvalue = $(this).val();
                e.preventDefault();
                Swal.fire({
                    title: $(this).data('title'),
                    text: $(this).data('text'),
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes'
                }).then((result) => {
                    if (result.value) {

                        var form_data = [],
                        form_url = form_multiple.attr("action");
                        form_data.push({ name: "id", value: rows_selected });
                        form_data.push({ name: "action", value: thisvalue });

                        /* alert($.param(form_data)); */
                        $.ajax({
                            url: form_url,
                            method: "POST",
                            data: form_data,
                            success: function(data) {

                                /* reset all row selected */
                                rows_selected = [];

                                table.ajax.reload();
                                /* table.page.len(10).draw(); */

                            }
                        });
                    }
                })              
            });

            $('.action-refresh').on('click',function(e){
                e.preventDefault();
                table.ajax.reload();
            });

        },
        "drawCallback": function(settings) {

        } 
    });

$("#table tbody").on('click', 'input[type="checkbox"]', function(e) {

    var $row = $(this).closest('tr'),
    data = table.row($row).data(),
    /* JSON.stringify(table.row($row).data()), */
    rowId = data['id'],
    index = $.inArray(rowId, rows_selected);

    if (this.checked && index === -1) {
        rows_selected.push(rowId);

    } else if (!this.checked && index !== -1) {
        rows_selected.splice(index, 1);
    }

    if (this.checked) {
        $row.addClass('selected');
    } else {
        $row.removeClass('selected');
    }

    updateDataTableSelectAllCtrl(table);

    e.stopPropagation();
});

/* when select all clicked */
$('thead input[name="select_all"]', table.table().container()).on('click', function(e) {
    if (this.checked) {
        $('tbody input[type="checkbox"]:not(:checked)').trigger('click');
    } else {
        $('tbody input[type="checkbox"]:checked').trigger('click');
    }

    e.stopPropagation();
});

/* table on draw update select */
table.on('draw', function() {
    updateDataTableSelectAllCtrl(table);
});


} /* function datatables */