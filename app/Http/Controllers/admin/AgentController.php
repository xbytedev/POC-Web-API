<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AgentController extends Controller
{
    public function index()
    {
        return view('admin.agent');
    }

    public function add_agent()
    {
        return view('admin.add_agent');
    }
}