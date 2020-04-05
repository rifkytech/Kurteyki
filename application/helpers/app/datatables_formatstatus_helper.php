<?php

function formatstatus($time,$status){
    $post_time = date("YmdHis",strtotime($time));
    $time_now = date("YmdHis");
    if ($status == 'Draft') {
        return '<span class="c-badge c-badge--xsmall c-badge--warning"><i class="fa fa-sticky-note-o u-color-primary"></i> Draft</span>';
    }else {        
        if ($post_time >= $time_now) {
            return '<span class="c-badge c-badge--xsmall c-badge--info"><i class="fa fa-sticky-note-o u-color-primary"></i> Scheduled</span>';
        }elseif ($post_time <= $time_now) {
            //return '<span class="c-badge c-badge--xsmall c-badge--success"><i class="fa fa-sticky-note-o u-color-primary"></i> Published</span>';
        }else {
            return 'Something Error...';
        }
    }
}
