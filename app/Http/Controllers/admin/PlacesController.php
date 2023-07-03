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
        $places = Places::where('created_by',Auth::user()->id)->get();
        return view('admin.places',compact('places'));
    }

    public function add_places()
    {
        return view('admin.add_places');
    }
 
    
    public function edit_places($id)
    {
        $places = Places::where('id',base64_decode($id))->first();
        return view('admin.edit_places',compact('places'));
    }

    public function delete_place(Request $request)
    {
        $id = $request->id;
        if($id){
            $places = Places::where('id',$id)->delete();
            $response = array('status'=>true,'message'=>'Location deleted successfully');
        }else{
            $response = array('status'=>false,'message'=>'Something went wrong');
        }
        return response()->json($response);
     
    }

    public function update_place(Request $request,$id)
    {
        $add_places = Places::where('id',base64_decode($id))->first();
        $add_places->Name = $request->Name;
        $add_places->Category = $request->Category;
        $add_places->Attraction_Type = $request->Attraction_Type;
        $add_places->Region = $request->Region;
        $add_places->Rayon = $request->Rayon;
        $add_places->City = $request->City;
        $add_places->Address = $request->Address;
        $add_places->Website = $request->Website;
        $add_places->Telephone = $request->Telephone;
        $add_places->Email = $request->Email;
        $add_places->Latitude = $request->Latitude;
        $add_places->Longitude = $request->Longitude;
        $add_places->created_by = Auth::user()->id;
        if($add_places->save()){
            session()->flash('success','Places successfully edited');
        }else{
            session()->flash('error','Something went wrong');
        }
        return redirect('places');
    }
    
    public function importCsv(Request $request)
    {
        $filename = $_FILES["file"]["tmp_name"];
        if($_FILES["file"]["size"] > 0)
        {
            $file = fopen($filename, "r");
            while (($getData = fgetcsv($file, 100000, ",")) !== FALSE)
            {
                $check_data_place = Places::where('created_by',Auth::user()->id)->where('Name',$getData[1])->first();
                if(empty($check_data_place)){
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
            }
            session()->flash('success','Data uploaded successfully');
        }else{
            session()->flash('error','Data not found in file');
        }
        return redirect()->back();
        // Excel::import(new PlacesImport, $request->file);
        // return redirect()->back();
    }

     public function insert_place(Request $request)
    {
        $add_places = new Places;
        $add_places->CSV_Id = 0;
        $add_places->Name = $request->Name;
        $add_places->Category = $request->Category;
        $add_places->Attraction_Type = $request->Attraction_Type;
        $add_places->Region = $request->Region;
        $add_places->Rayon = $request->Rayon;
        $add_places->City = $request->City;
        $add_places->Address = $request->Address;
        $add_places->Website = $request->Website;
        $add_places->Telephone = $request->Telephone;
        $add_places->Email = $request->Email;
        $add_places->Latitude = $request->Latitude;
        $add_places->Longitude = $request->Longitude;
        $add_places->status = 1;
        $add_places->created_by = Auth::user()->id;
        if($add_places->save()){
            session()->flash('success','Places successfully added');
        }else{
            session()->flash('error','Something went wrong');
        }
        return redirect('places');
    }
}