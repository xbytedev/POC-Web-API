<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Trip;
use App\Models\RegisterUser;
use App\Models\DocumentType;
use App\Models\Country;
use App\Models\MotivationOfTrip;
use App\Models\MeanOfTransport;
use App\Models\ArrivalCrossingPoint;
use App\Models\TripPeople;
use File;

class TripController extends Controller
{
    public function trip(Request $request){
        $motivation_of_trip = MotivationOfTrip::all();
        $document_type = DocumentType::all();
        $country = Country::all();
        $mean_of_transport = MeanOfTransport::all();
        $arrival_crossing_point = ArrivalCrossingPoint::all();
        return view('add_trip',compact('document_type','country','motivation_of_trip','mean_of_transport','arrival_crossing_point'));
    }

    public function add_trip(Request $request){
        
        if(isset($request->trip_id) && !empty($request->trip_id)){
            $add_trip = Trip::where('id',$request->trip_id)->first();
            $add_trip->trip_number = uniqid();
            $add_trip->trip_name = $request->trip_name;
            $add_trip->trip_start_date = date('Y-m-d', strtotime($request->trip_start_date));
            $add_trip->trip_end_date = date('Y-m-d', strtotime($request->trip_end_date));
            $add_trip->date_created = date('Y-m-d', strtotime($request->trip_start_date));
            $add_trip->date_closed = date('Y-m-d', strtotime($request->trip_end_date));
            $add_trip->user_id = $_SESSION['user']->id;
            $add_trip->trip_status = 'draft';
            $add_trip->created_by = $_SESSION['user']->id;
            $user_name = RegisterUser::where('id',$_SESSION['user']->id)->first();
            $add_trip->created_by_user_name = $user_name->name;
            if($add_trip->save()){
                $response = array('status'=>true,'message'=>'Trip created successfully','trip_id'=>$add_trip->id);
            }else{
                $response = array('status'=>false,'message'=>'Something went wrong','trip_id'=>'');
            }
        }else{
            $add_trip = new Trip;
            $add_trip->trip_number = uniqid();
            $add_trip->trip_name = $request->trip_name;
            $add_trip->trip_start_date = date('Y-m-d', strtotime($request->trip_start_date));
            $add_trip->trip_end_date = date('Y-m-d', strtotime($request->trip_end_date));
            $add_trip->date_created = date('Y-m-d', strtotime($request->trip_start_date));
            $add_trip->date_closed = date('Y-m-d', strtotime($request->trip_end_date));
            $add_trip->user_id = $_SESSION['user']->id;
            $add_trip->trip_status = 'draft';
            $add_trip->created_by = $_SESSION['user']->id;
            $user_name = RegisterUser::where('id',$_SESSION['user']->id)->first();
            $add_trip->created_by_user_name = $user_name->name;
            if($add_trip->save()){
                $response = array('status'=>true,'message'=>'Trip created successfully','trip_id'=>$add_trip->id);
            }else{
                $response = array('status'=>false,'message'=>'Something went wrong','trip_id'=>'');
            }
        }
        return response()->json($response);
    }

     public function add_trip_TripPeople(Request $request){
        if(!empty($request->trip_id)){
            $check_user = RegisterUser::where('email',$request->contacts_email)->first();
            $check_trip_people = TripPeople::where('trip_id',$request->trip_id)->where('contacts_email',$request->contacts_email)->first();
            
            if(empty($check_trip_people)){
                $add_trip_people = new TripPeople;
                $add_trip_people->trip_id = $request->trip_id;
                $add_trip_people->name = $request->name;
                $add_trip_people->family_name = $request->family_name;
                $add_trip_people->gender = $request->gender;
                $add_trip_people->dob = date('Y-m-d', strtotime(date('Y-m-d', strtotime($request->dob))));
                $add_trip_people->document_type = $request->document_type;
                $add_trip_people->document_number = $request->document_number;
                $add_trip_people->valid_untill = date('Y-m-d', strtotime($request->valid_untill));
                $add_trip_people->document_country = $request->document_country;
                $add_trip_people->airline = $request->document_number_pnr;
                $add_trip_people->residence_address = $request->residence_address;
                $add_trip_people->residence_country = $request->residence_country;
                $add_trip_people->residence_city = $request->residence_city;
                $add_trip_people->residence_post_code = $request->residence_post_code;
                $add_trip_people->contacts_email = $request->contacts_email;
                $add_trip_people->contacts_phone = $request->contacts_phone;
                
                $add_trip_people->status = $request->status;

                $add_trip_people->is_draft = 1;
                $add_trip_people->trip_data_visa_information = $request->trip_data_visa_information;
                $add_trip_people->experience_date = date('Y-m-d', strtotime($request->experience_date));
                $add_trip_people->visa_motive = $request->visa_motive;
                $fils = $request->visa_document;
                if(!empty($fils)){
                    if($fils){
                        $image = $fils;
                        $name = time().'.'.$image->getClientOriginalExtension();
                        $destinationPath = public_path('/visa_document');
                        $image->move($destinationPath, $name);
                        $add_trip_people->document_image = $name;
                    }
                }

                $fils_data = $request->document_id_data;
                if(!empty($fils_data)){
                    if($fils_data){
                        $image = $fils_data;
                        $name = time().'.'.$image->getClientOriginalExtension();
                        $destinationPath = public_path('/document_image');
                        $image->move($destinationPath, $name);
                        $add_trip_people->document_id_data = $name;
                    }
                }

                $add_trip_people->motivation_of_trip = $request->motivation_of_trip;
                $add_trip_people->mean_of_transport = $request->mean_of_transport;
                $add_trip_people->airline = $request->airline;                
                $add_trip_people->orginating_form_country = $request->originating_from_country;
                $add_trip_people->orginating_form_city = $request->originating_from_city;
                $add_trip_people->orginating_form_via = $request->originating_from_via;
                $add_trip_people->arrival_crossing_point_border_crossing_point = $request->arrival_crossing_point_border_crossing_point;
                $add_trip_people->arrival_crossing_point_arrival_date = date('Y-m-d', strtotime($request->arrival_crossing_point_arrival_date));
                $add_trip_people->departure_crossing_point_border_crossing_point = $request->departure_crossing_point_border_crossing_point;
                $add_trip_people->departure_crossing_point_departure_date =  date('Y-m-d', strtotime($request->departure_crossing_point_departure_date));
                $add_trip_people->room_no = $request->room_no;
                $add_trip_people->hotel_name = $request->hotel_name;
                $add_trip_people->arrival_date = date('Y-m-d', strtotime($request->arrival_date));
                $add_trip_people->dep_date = date('Y-m-d', strtotime($request->dep_date));
                if($add_trip_people->save()){
                    return redirect('paymentpage/'.$request->trip_id);
                    // $response = array('status'=>true,'message'=>'People added successfully on this trip');
                }else{
                    return redirect()->back();
                    // $response = array('status'=>false,'message'=>'Something went wrong');
                }
            }else{
                $update_trip_people = TripPeople::where('contacts_email',$request->contacts_email)->first();
                $update_trip_people->trip_id = $request->trip_id;
                $update_trip_people->name = $request->name;
                $update_trip_people->family_name = $request->family_name;
                $update_trip_people->gender = $request->gender;
                $update_trip_people->dob = date('Y-m-d', strtotime(date('Y-m-d', strtotime($request->dob))));
                $update_trip_people->document_type = $request->document_type;
                $update_trip_people->document_number = $request->document_number;
                $update_trip_people->valid_untill = date('Y-m-d', strtotime($request->valid_untill));
                $update_trip_people->document_country = $request->document_country;
                $update_trip_people->airline = $request->document_number_pnr;

                $update_trip_people->residence_address = $request->residence_address;
                $update_trip_people->residence_country = $request->residence_country;
                $update_trip_people->residence_city = $request->residence_city;
                $update_trip_people->residence_post_code = $request->residence_post_code;
                $update_trip_people->contacts_email = $request->contacts_email;
                $update_trip_people->contacts_phone = $request->contacts_phone;
                $update_trip_people->status = $request->status;
                $update_trip_people->is_draft = 1;
                $update_trip_people->trip_data_visa_information = $request->trip_data_visa_information;
                $update_trip_people->experience_date = date('Y-m-d', strtotime($request->experience_date));
                $update_trip_people->visa_motive = $request->visa_motive;
                $fils = $request->visa_document;
                if(!empty($fils)){
                    if($fils){
                        $image = $fils;
                        $name = time().'.'.$image->getClientOriginalExtension();
                        $destinationPath = public_path('/visa_document');
                        $image->move($destinationPath, $name);
                        $update_trip_people->document_image = $name;
                    }
                }
                $fils_data = $request->document_id_data;
                if(!empty($fils_data)){
                    if($fils_data){
                        
                        $imagePath = public_path('document_image/'.$add_trip_people->document_id_data);
                        if(File::exists($imagePath)){
                            unlink($imagePath);
                        }

                        $image = $fils_data;
                        $name = time().'.'.$image->getClientOriginalExtension();
                        $destinationPath = public_path('/document_image');
                        $image->move($destinationPath, $name);
                        $add_trip_people->document_id_data = $name;
                    }
                }
                $update_trip_people->motivation_of_trip = $request->motivation_of_trip;
                $update_trip_people->mean_of_transport = $request->mean_of_transport;
                $update_trip_people->airline = $request->airline;
                $update_trip_people->orginating_form_country = $request->originating_from_country;
                $update_trip_people->orginating_form_city = $request->originating_from_city;
                $update_trip_people->orginating_form_via = $request->originating_from_via;
                $update_trip_people->arrival_crossing_point_border_crossing_point = $request->arrival_crossing_point_border_crossing_point;
                $update_trip_people->arrival_crossing_point_arrival_date = date('Y-m-d', strtotime($request->arrival_crossing_point_arrival_date));
                $update_trip_people->departure_crossing_point_border_crossing_point = $request->departure_crossing_point_border_crossing_point;
                $update_trip_people->departure_crossing_point_departure_date =  date('Y-m-d', strtotime($request->departure_crossing_point_departure_date));
                $update_trip_people->room_no = $request->room_no;
                $update_trip_people->hotel_name = $request->hotel_name;
                $update_trip_people->arrival_date = date('Y-m-d', strtotime($request->arrival_date));
                $update_trip_people->dep_date = date('Y-m-d', strtotime($request->dep_date));
                
                if($update_trip_people->save()){
                    // $response = array('status'=>true,'message'=>'Data updated successfully');
                    return redirect()->back();
                }else{
                    $response = array('status'=>false,'message'=>'Something went wrong');
                    return redirect()->back();
                }
            }
        }else{
            return redirect()->back();
            // $response = array('status'=>false,'message'=>'Trip id not found');
        }
        // return response()->json($response);
    }

    public function paymentpage($id)
    {
        $trip = Trip::where('id',$id)->first();
        $trip_pepole = TripPeople::where('trip_id',$id)->get();
        return view('payment',compact('trip','trip_pepole'));
    }

    public function get_trip($id){
        $trip = Trip::where('id',$id)->get();
        $trip_people = TripPeople::with('document_types')->where('trip_id',$id)->get();
        return view('view_people',compact('trip','trip_people'));
    }

    public function edit_trip_people($id)
    {
        $trip_people = TripPeople::with('document_types')->where('id',$id)->first();
        $trip = Trip::where('id',$trip_people->trip_id)->first();
        $motivation_of_trip = MotivationOfTrip::all();
        $document_type = DocumentType::all();
        $country = Country::all();
        $mean_of_transport = MeanOfTransport::all();
        $arrival_crossing_point = ArrivalCrossingPoint::all();
        return view('edit_trip_people',compact('trip_people','trip','document_type','country','motivation_of_trip','mean_of_transport','arrival_crossing_point'));
    }

    public function add_trip_wise_people($id){
        $trip = Trip::where('id',$id)->first();
        $user_list = TripPeople::where('trip_id',$id)->get();
        $motivation_of_trip = MotivationOfTrip::all();
        $document_type = DocumentType::all();
        $country = Country::all();
        $mean_of_transport = MeanOfTransport::all();
        $arrival_crossing_point = ArrivalCrossingPoint::all();
        return view('add_trip_wise_people',compact('document_type','country','motivation_of_trip','mean_of_transport','arrival_crossing_point','trip','user_list'));
    }

    public function baecode()
    {
        return view('baecode');
    }

    public function get_trip_wise_people_datas(Request $request)
    {
        $user_id = $request->user_id;
        if(!empty($user_id)){
            $user_list = TripPeople::where('id',$user_id)->first();
            $response = array('status'=>true,'data'=>$user_list);
        }else{
            $response = array('status'=>false,'data'=>[]);
        }
        return response()->json($response);
    }
}