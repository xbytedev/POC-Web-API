<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ArrivalCrossingPoint;

class ArrivalCrossingPointController extends Controller
{
    public function index()
    {
        return view('admin.add_arrival_crossing');
    }

    public function manage_arrival()
    {
        $crossing_point = ArrivalCrossingPoint::all();
        return view('admin.arrival_crossing',compact('crossing_point'));
    }

    public function arrival_crossing_insert()
    {
        $insert_point = new ArrivalCrossingPoint;
        $insert_point->name = $request->name;
        if($insert_point->save()){
            session()->flash('success','Added successfully');
            return redirect('manage_arrival');
        }else{
            session()->flash('error','Something went wrong');
            return redirect()->back();
        }
        
    }
}