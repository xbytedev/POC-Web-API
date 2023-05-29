<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Group;
use App\Models\GroupPeople;
use App\Models\TripPeople;
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
                    return redirect('group_wise_people/'.base64_encode($group_id));
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
        $group_people_data = GroupPeople::with('group_people_details','group_details')->where('partner_id',Auth::user()->id)->where('group_id',base64_decode($id))->get();
        return view('admin.group_wise_people',compact('group_people_data'));
    }

    public function add_group_wise_people($id){
        $group_people_data = Group::with('group_people_details','group_details')->where('partner_id',Auth::user()->id)->where('id',base64_decode($id))->first();
        return view('admin.add_group_people',compact('group_people_data'));
    }

    public function edit_group_wise_people($id,$group_id){
        $group_data = Group::with('group_people_details','group_details')->where('partner_id',Auth::user()
        ->id)->where('id',base64_decode($group_id))->first();
        $group_people_data = GroupPeople::with('group_people_details','group_details')->where('partner_id',Auth::user()->id)->where('id',base64_decode($id))->first();

        return view('admin.edit_group_people',compact('group_people_data','group_data'));
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
                    return redirect('group_wise_people/'.base64_encode($group_id));
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

}