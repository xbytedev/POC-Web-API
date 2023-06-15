<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Imports\PlacesImport;
use App\Models\Places;
use Excel;
use Auth;

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
        $filename=$_FILES["file"]["tmp_name"];
        if($_FILES["file"]["size"] > 0)
        {
            $file = fopen($filename, "r");
            while (($getData = fgetcsv($file, 10000, ",")) !== FALSE)
            {
                $add_places = new Places;
                $add_places->CSV_Id = $getData[0];
                $add_places->Name = $getData[1];
                $add_places->Category = $getData[2];
                $add_places->Attraction_Type = $getData[3];
                $add_places->Region = $getData[4];
                $add_places->Rayon = $getData[5];
                $add_places->City = $getData[6];
                $add_places->Address = $getData[7];
                $add_places->Website = $getData[8];
                $add_places->Telephone = $getData[9];
                $add_places->Email = $getData[10];
                $add_places->Latitude = $getData[11];
                $add_places->Longitude = $getData[12];
                $add_places->status = 1;
                $add_places->created_by = Auth::user()->id;
                $add_places->save();
            }
            session()->flash('success','Data uploaded successfully');
        }else{
            session()->flash('error','Data not found in file');
        }
        return redirect()->back();
        // Excel::import(new PlacesImport, $request->file);
        // return redirect()->back();
    }
}