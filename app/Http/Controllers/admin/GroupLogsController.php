<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\GroupLogs;
use App\Models\User;
use Auth;

class GroupLogsController extends Controller
{
    public function group_log(){
        $users = User::where('created_by',Auth::user()->id)->pluck('id');
        $group_logs = GroupLogs::whereIn('agent_id',$users)->with('group_data','user_data')->get();
        return view('admin.group_logs',compact('group_logs'));
    }
}