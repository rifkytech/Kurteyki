<?php

function statuscomment($status){
    if ($status == 'Approved') {
        return "<span class='c-badge c-badge--xsmall c-badge--success'>Approved</span>";
    }elseif ($status == 'Blocked') {
        return "<span class='c-badge c-badge--xsmall c-badge--danger'>Blocked</span>";
    }elseif ($status == 'Pending') {
        return "<span class='c-badge c-badge--xsmall c-badge--warning'>Pending</span>";
    }
}
