<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Trip;

class HomesController extends Controller
{
    function homes()
    {
        $trip = Trip::where('created_by',$_SESSION['user']->id)->orderBy('id','DESC')->get();
        return view('homes',compact('trip'));
    }
}