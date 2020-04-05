<?php  
function checkparent($name,$parent){
    if (empty($parent)) {
        return '
        <span class="u-block u-text-mute">
        <small><i class="fa fa-user-circle u-color-primary"></i>&nbsp; '.$name.' : <span class="c-badge c-badge--xsmall c-badge--info">parent</span></small>
        </span>';
    }else {
        return '
        <span class="u-block u-text-mute">
            <small><i class="fa fa-user-circle u-color-primary"></i>&nbsp; '.$name.' : <span class="c-badge c-badge--xsmall c-badge--warning">child</span></small>
        </span>';        
    }
}
?>
