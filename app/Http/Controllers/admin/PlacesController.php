<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Imports\PlacesImport;
use Excel;

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

    public function importCsv(Request $request)
    {
        Excel::import(new PlacesImport, $request->file);
        return redirect()->back();
    }

}