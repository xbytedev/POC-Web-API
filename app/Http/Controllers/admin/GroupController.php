<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Group;
use Auth;

class GroupController extends Controller
{
    public function group(){
        $group_data =  Group::where('partner_id',Auth::user()->id)->get();
        return view('admin.group',compact('group_data'));
    }

    public function add_group(){
        return view('admin.add_group');
    }

    public function inser_group(Request $request){
        $last_group_id = Group::orderBy('id', 'DESC')->pluck('id')->first();
        $add_data = new Group;
        $add_data->name = $request->name;
        $add_data->partner_id = Auth::user()->id;
        $add_data->group_code = rand(111111111,999999999).($last_group_id+1);
         if($request->status == 'on'){
            $add_data->status = 1;
        }else{
            $add_data->status = 0;
        }
        if($add_data->save()){
            session()->flash('success','Group created successfully');
            return redirect('group');
        }else{
            session()->flash('error','Something went wrong');
            return redirect()->back();
        }
    }

    public function edit_group($id){
        $group_data = Group::where('id', base64_decode($id))->first();
        return view('admin.edit_group',compact('group_data'));
    }

    public function update_group(Request $request,$id){
        $add_data = Group::where('id',base64_decode($id))->first();
        $add_data->name = $request->name;
        $add_data->partner_id = Auth::user()->id;
         if($request->status == 'on'){
            $add_data->status = 1;
        }else{
            $add_data->status = 0;
        }
        if($add_data->save()){
            session()->flash('success','Group updated successfully');
            return redirect('group');
        }else{
            session()->flash('error','Something went wrong');
            return redirect()->back();
        }
    }

     public function delete_update_group(Request $request){
        $id = $request->id;
        $add_data = Group::where('id',$id)->first();
        $add_data->is_delete = 1;
        if($add_data->save()){
            $response = array('status'=>true,'message'=>'Group deleted successfully');
        }else{
            $response = array('status'=>false,'message'=>'Something went wrong');
        }
        return response()->json($response);
    }
}