<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Group;
use App\Models\GroupPeople;
use App\Models\TripPeople;
use App\Models\User;
use Auth;

class AdminGroup extends Controller
{
    public function group(){
        $group_data =  Group::orderby('id','desc')->get();
        return view('admin.admin_group',compact('group_data'));
    }

    public function add_group(){
        $agent = User::where('role','partner')->get();
        return view('admin.add_admin_group',compact('agent'));
    }

    public function inser_group(Request $request){
        $last_group_id = Group::orderBy('id', 'DESC')->pluck('id')->first();
        $add_data = new Group;
        $add_data->name = $request->name;
        $add_data->partner_id = $request->partner_id;
        $add_data->agent_id = $request->agent_id;
        $add_data->group_code = rand(1,9).time().rand(1,9);
         if($request->status == 'on'){
            $add_data->status = 1;
        }else{
            $add_data->status = 0;
        }
        if($add_data->save()){
            session()->flash('success','Group created successfully');
            return redirect('admin_group');
        }else{
            session()->flash('error','Something went wrong');
            return redirect()->back();
        }
    }

    public function edit_group($id){
        $agent = User::where('role','partner')->get();
        $group_data = Group::where('id', base64_decode($id))->first();
        $agent_datas = User::where('role','agent')->where('created_by',$group_data->partner_id)->get();
        return view('admin.edit_admin_group',compact('group_data','agent','agent_datas'));
    }

    public function update_group(Request $request,$id){
        $add_data = Group::where('id',base64_decode($id))->first();
        $add_data->name = $request->name;
        $add_data->partner_id = $request->partner_id;
        $add_data->agent_id = $request->agent_id;
        if($request->status == 'on'){
            $add_data->status = 1;
        }else{
            $add_data->status = 0;
        }        

        if($add_data->save()){
            session()->flash('success','Group updated successfully');
            return redirect('admin_group');
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

    public function add_group_people(Request $request)
    {
        $people_code = $request->people_code;
        $group_id = $request->group_id;
        $group_code = $request->group_code;
        $trip_people = TripPeople::where('people_id_code',$people_code)->first();
        if(!empty($trip_people)){
            $check_group_people_data = GroupPeople::where('people_id',$trip_people->id)->where('group_id',$group_id)->first();
            if(empty($check_group_people_data)){
                $group_people = new GroupPeople;
                $group_people->people_id = $trip_people->id;
                $group_people->people_code = $trip_people->people_id_code;
                $group_people->group_id = $group_id;
                $group_people->group_code = $group_code;
                $group_people->partner_id = Auth::user()->id;
                if($group_people->save()){
                    session()->flash('success','People add in group successfully');
                    return redirect('admin_group_wise_people/'.base64_encode($group_id));
                }else{
                    session()->flash('error','Something went wrong');
                    return redirect()->back();
                }
            }else{
                session()->flash('error','People already exist');
                return redirect()->back();
            }
        }else{
            session()->flash('error','People Not Found');
            return redirect()->back();
        }
    }

    public function group_wise_people($id){
        $group_people_data = GroupPeople::with('group_people_details','group_details')->where('group_id',base64_decode($id))->get();
        return view('admin.admin_group_wise_people',compact('group_people_data'));
    }

    public function add_group_wise_people($id){
        $group_people_data = Group::with('group_people_details','group_details')->where('id',base64_decode($id))->first();
        return view('admin.admin_add_group_people',compact('group_people_data'));
    }

    public function edit_group_wise_people($id,$group_id){
        $group_data = Group::with('group_people_details','group_details')->where('id',base64_decode($group_id))->first();
        $group_people_data = GroupPeople::with('group_people_details','group_details')->where('id',base64_decode($id))->first();

        return view('admin.admin_edit_group_people',compact('group_people_data','group_data'));
    }

    public function update_group_people(Request $request,$id)
    {
        $people_code = $request->people_code;
        $group_id = $request->group_id;
        $group_code = $request->group_code;
        $trip_people = TripPeople::where('people_id_code',$people_code)->first();
        if(!empty($trip_people)){
            $check_group_people_data = GroupPeople::where('id','!=',$id)->where('people_id',$trip_people->id)->where('group_id',$group_id)->first();
            if(empty($check_group_people_data)){
                $group_people = GroupPeople::where('id',$id)->first();
                $group_people->people_id = $trip_people->id;
                $group_people->people_code = $trip_people->people_id_code;
                $group_people->group_id = $group_id;
                $group_people->group_code = $group_code;
                $group_people->partner_id = Auth::user()->id;
                if($request->status == 'on'){
                    $group_people->status = 1;
                }else{
                    $group_people->status = 0;
                }
                if($group_people->save()){
                    session()->flash('success','People updated in group successfully');
                    return redirect('admin_group_wise_people/'.base64_encode($group_id));
                }else{
                    session()->flash('error','Something went wrong');
                    return redirect()->back();
                }
            }else{
                session()->flash('error','People already exist');
                return redirect()->back();
            }
        }else{
            session()->flash('error','People Not Found');
            return redirect()->back();
        }
    }

    public function get_partner_wise_agent(Request $request){
        $id = $request->id;
        $agent = User::where('created_by',$id)->where('role','agent')->get();
        if(sizeof($agent)){
            $response = array('status'=>true,'data'=>$agent);
        }else{
            $response = array('status'=>false,'data'=>[]);
        }
        return response($response);
    }
}