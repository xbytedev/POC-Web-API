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
use App\Models\ArrivalCrossingPoint;

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
        $arrival_crossing_point = ArrivalCrossingPoint::all();
        
        $trip_people = TripPeople::with('document_types','document_countrys','motivation_of_trips','visa_motives','mean_of_transports','orginating_form_countrys','arrival_crossing','departure_crossing')->where('id',$id)->first();
        return view('admin.view_user_in_trip',compact('arrival_crossing_point','trip_people','document_type','country','motivation_of_trip','mean_of_transport'));
    }


    public function add_trip_people($id){
        $document_type = DocumentType::all();
        $country = Country::all();
        $motivation_of_trip = MotivationOfTrip::all();
        $mean_of_transport = MeanOfTransport::all();
        $arrival_crossing_point = ArrivalCrossingPoint::all();
        
        $trip_people = TripPeople::with('document_types','document_countrys','motivation_of_trips','visa_motives','mean_of_transports','orginating_form_countrys','arrival_crossing','departure_crossing')->where('id',$id)->first();
        return view('admin.add_trip_people',compact('arrival_crossing_point','document_type','country','motivation_of_trip','mean_of_transport','id'));
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

    public function update_trip_people_from_admin(Request $request){
        $update_trip_people = TripPeople::where('contacts_email',$request->contacts_email)->first();
        $update_trip_people->name = $request->name;
        $update_trip_people->family_name = $request->family_name;
        $update_trip_people->gender = $request->gender;
        $update_trip_people->dob = date('Y-m-d', strtotime(date('Y-m-d', strtotime($request->dob))));
        $update_trip_people->document_type = $request->document_type;
        $update_trip_people->document_number = $request->document_number;
        $update_trip_people->valid_untill = date('Y-m-d', strtotime($request->valid_untill));
        $update_trip_people->document_country = $request->document_country;
        $update_trip_people->residence_address = $request->residence_address;
        $update_trip_people->residence_city = $request->residence_city;
        $update_trip_people->residence_post_code = $request->residence_post_code;
        $update_trip_people->profession = $request->profession;
        $update_trip_people->contacts_email = $request->contacts_email;
        $update_trip_people->contacts_phone = $request->contacts_phone;
        $update_trip_people->motivation_of_trip = $request->motivation_of_trip;
        $update_trip_people->mean_of_transport = $request->mean_of_transport;
        $update_trip_people->orginating_form_via = $request->originating_from_via;
        $update_trip_people->arrival_crossing_point_border_crossing_point = $request->arrival_crossing_point_border_crossing_point;
        $update_trip_people->departure_crossing_point_border_crossing_point = $request->departure_crossing_point_border_crossing_point;
        if($update_trip_people->save()){
            session()->flash('success','Trip people updated successfully');
            return redirect()->back();
        }else{
            session()->flash('error','Something went wrong');
            return redirect()->back();
        }
    }

    public function insert_trip_people_from_admin(Request $request){
        $add_trip_people = new TripPeople;
        $add_trip_people->people_id_code = rand(1,9).time().rand(1,9);
        $add_trip_people->trip_id = $request->trip_id;
        $add_trip_people->user_id = $user_id;
        $add_trip_people->name = $request->name;
        $add_trip_people->family_name = $request->family_name;
        $add_trip_people->gender = $request->gender;
        $add_trip_people->dob = date('Y-m-d', strtotime(date('Y-m-d', strtotime($request->dob))));
        $add_trip_people->document_type = $request->document_type;
        $add_trip_people->document_number = $request->document_number;
        $add_trip_people->valid_untill = date('Y-m-d', strtotime($request->valid_untill));
        $add_trip_people->document_country = $request->document_country;
        $add_trip_people->residence_address = $request->residence_address;
        $add_trip_people->residence_city = $request->residence_city;
        $add_trip_people->residence_post_code = $request->residence_post_code;
        $add_trip_people->profession = $request->profession;
        $add_trip_people->contacts_email = $request->contacts_email;
        $add_trip_people->contacts_phone = $request->contacts_phone;
        $add_trip_people->motivation_of_trip = $request->motivation_of_trip;
        $add_trip_people->mean_of_transport = $request->mean_of_transport;
        $add_trip_people->orginating_form_via = $request->originating_from_via;
        $add_trip_people->arrival_crossing_point_border_crossing_point = $request->arrival_crossing_point_border_crossing_point;
        $add_trip_people->departure_crossing_point_border_crossing_point = $request->departure_crossing_point_border_crossing_point;
        if($add_trip_people->save()){
            session()->flash('success','Trip people updated successfully');
            return redirect()->back();
        }else{
            session()->flash('error','Something went wrong');
            return redirect()->back();
        }
    }
}