<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\GroupLogs;

class GroupLogsController extends Controller
{
    public function group_log(){
        $group_logs = GroupLogs::with('group_data','user_data')->get();
        return view('admin.group_logs',compact('group_logs'));
    }
}