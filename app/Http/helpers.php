<?php

use App\Models\RegisterUser;

function get_user_count(){
    $user_count = RegisterUser::all()->count();
    return $user_count;
}

?>