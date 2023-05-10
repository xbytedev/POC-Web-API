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

    public function arrival_crossing_insert(Request $request)
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

    public function arrival_crossing_update(Request $request,$id)
    {
        $insert_point = ArrivalCrossingPoint::where('id',$id)->first();
        $insert_point->name = $request->name;
        if($insert_point->save()){
            session()->flash('success','Updated successfully');
            return redirect('manage_arrival');
        }else{
            session()->flash('error','Something went wrong');
            return redirect()->back();
        }
    }

    public function edit_manage_arrival($id)
    {
        $id = base64_decode($id);
        $crossing_point = ArrivalCrossingPoint::where('id',$id)->first();
        return view('admin.edit_arrival_crossing',compact('crossing_point'));
    }

}