<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Trip;
use App\Models\TripPeople;

class TripController extends Controller
{
    public function index(){
        if(!empty($_REQUEST['to_date']) && !empty($_REQUEST['from_date'])){
            $from_date = date("Y-m-d", strtotime($_REQUEST['from_date']));
            $to_date = date("Y-m-d", strtotime($_REQUEST['to_date']));
            $trip = Trip::with('created_by_data')->whereBetween('trip_start_date', [$from_date, $to_date])->get();
        }else{
            $trip = Trip::with('created_by_data')->get();
        }
        return view('admin.trip',compact('trip'));
    }

    public function view_trip_peopel($id){
        $trip_people = TripPeople::where('trip_id',$id)->where('is_draft',1)->get();
        return view('admin.view_trip_people',compact('trip_people'));
    }

    public function view_people_individual($id){
        $trip_people = TripPeople::with('document_types','document_countrys','motivation_of_trips','visa_motives','mean_of_transports','orginating_form_countrys','arrival_crossing','departure_crossing')->where('id',$id)->first();
        return view('admin.view_user_in_trip',compact('trip_people'));
    }
}