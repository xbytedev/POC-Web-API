<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PlacesController extends Controller
{
    public function index()
    {
        return view('admin.places');
    }

    public function add_places()
    {
        return view('admin.add_places');
    }
}