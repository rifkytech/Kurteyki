<?php  
function countcomment($data){
    if (!empty($data)) {
        $data = explode(',', $data);
        return count($data);
    }else {
        return "0";
    }
}
