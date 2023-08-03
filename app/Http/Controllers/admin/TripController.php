<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Trip;
use App\Models\TripPeople;
use App\Models\RegisterUser;
use App\Models\DocumentType;
use App\Models\Country;
use App\Models\MotivationOfTrip;
use App\Models\MeanOfTransport;

class TripController extends Controller
{
    public function index(){
        if(!empty($_REQUEST['to_date']) && !empty($_REQUEST['from_date'])){
            $from_date = date("Y-m-d", strtotime($_REQUEST['from_date']));
            $to_date = date("Y-m-d", strtotime($_REQUEST['to_date']));
            $trip = Trip::orderby('id','desc')->with('created_by_data')->whereBetween('trip_start_date', [$from_date, $to_date])->get();
        }else{
            $trip = Trip::orderby('id','desc')->with('created_by_data')->get();
        }
        return view('admin.trip',compact('trip'));
    }

    public function view_trip_peopel($id){
        $document_type = DocumentType::all();
        $trip_people = TripPeople::where('trip_id',$id)->where('is_draft',1)->get();
        return view('admin.view_trip_people',compact('trip_people','document_type'));
    }

    public function view_people_individual($id){
        $document_type = DocumentType::all();
        $country = Country::all();
        $motivation_of_trip = MotivationOfTrip::all();
        $mean_of_transport = MeanOfTransport::all();
        $trip_people = TripPeople::with('document_types','document_countrys','motivation_of_trips','visa_motives','mean_of_transports','orginating_form_countrys','arrival_crossing','departure_crossing')->where('id',$id)->first();
        return view('admin.view_user_in_trip',compact('trip_people','document_type','country','motivation_of_trip','mean_of_transport'));
    }

    public function create_trip(){
        $register_user = RegisterUser::where('status',1)->get();
        return view('admin.add_trip',compact('register_user'));
    }

    public function edit_trip($id){
        $trip_data = Trip::where('id',$id)->first();
        $register_user = RegisterUser::where('status',1)->get();
        return view('admin.edit_trip',compact('register_user','trip_data'));
    }

    public function add_create_trip(Request $request){
        $add_trip = new Trip;
        $add_trip->trip_number = uniqid();
        $add_trip->trip_name = $request->name;
        $add_trip->trip_start_date = date('Y-m-d', strtotime($request->trip_start_date));
        $add_trip->trip_end_date = date('Y-m-d', strtotime($request->trip_end_date));
        $add_trip->date_created = date('Y-m-d', strtotime($request->trip_start_date));
        $add_trip->date_closed = date('Y-m-d', strtotime($request->trip_end_date));
        $add_trip->user_id = $request->user_id;
        $add_trip->trip_status = 'draft';
        $add_trip->created_by = $request->user_id;
        $user_name = RegisterUser::where('id',$request->user_id)->first();
        $add_trip->created_by_user_name = $user_name->name;
        if($add_trip->save()){
            session()->flash('success','Trip created successfully');
            return redirect('trip');
        }else{
            session()->flash('error','Something went wrong');
            return redirect()->back();
        }
    }

    public function edit_update_trip(Request $request,$id){
        $add_trip = Trip::where('id',$id)->first();
        $add_trip->trip_name = $request->name;
        $add_trip->trip_start_date = date('Y-m-d', strtotime($request->trip_start_date));
        $add_trip->trip_end_date = date('Y-m-d', strtotime($request->trip_end_date));
        $add_trip->date_created = date('Y-m-d', strtotime($request->trip_start_date));
        $add_trip->date_closed = date('Y-m-d', strtotime($request->trip_end_date));
        if($add_trip->save()){
            session()->flash('success','Trip created successfully');
            return redirect('trip');
        }else{
            session()->flash('error','Something went wrong');
            return redirect()->back();
        }
    }
}