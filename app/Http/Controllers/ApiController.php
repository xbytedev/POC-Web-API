<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RegisterUser;
use App\Models\Trip;
use App\Models\TripPeople;
use App\Models\Country;
use App\Models\DocumentType;
use App\Models\MotivationOfTrip;
use App\Models\MeanOfTransport;
use App\Models\User;
use App\Models\Payment;
use App\Models\TripPeopleDocument;
use App\Models\ArrivalCrossingPoint;
use App\Models\DepartureCrossingPoint;
use App\Models\UserLogs;
use App\Models\PartnerScannerLogs;
use App\Models\ScanLogs;
use App\Models\UserPlaces;
use App\Models\GroupPeople;
use App\Models\Group;
use App\Models\Places;
use App\Models\CheckIn;
use App\Models\GroupLogs;
use Hash;
use File;
use Mail;

class ApiController extends Controller
{
    public function register_user(Request $request){
        $check_email = RegisterUser::where('email',$request->email)->first();
        if(empty($check_email)){
            $add = new RegisterUser;
            if(!empty($request->email) && !empty($request->password) && !empty($request->gender) && !empty($request->number)){
                $add->name = $request->name;
                $add->gender = $request->gender;
                $add->number = $request->number;
                $add->address = $request->address;
                $add->email = $request->email;
                $add->dob = date('Y-m-d', strtotime($request->dob));
                $add->password = $request->password;
                if($request->hasFile('image')){
                    $image = $request->file('image');
                    $name = time().'.'.$image->getClientOriginalExtension();
                    $destinationPath = public_path('/profile_image');
                    $image->move($destinationPath, $name);
                    $add->image = $name;
                }
                $add->role = 'enduser';
                if($add->save()){
                    $response = array('status'=>true,'message'=>'User registered successfully');
                    return response()->json($response);
                }else{
                    $response = array('status'=>false,'message'=>'Something went wrong');
                    return response()->json($response);
                }
            }else{
                $response = array('status'=>false,'message'=>'Input data missing');
                return response()->json($response);
            }
        }else{
            $response = array('status'=>false,'message'=>'User already exists');
            return response()->json($response);
        }
    }

    public function check_user_login(Request $request){
        if(!empty($request->password) && !empty($request->email)){
            $check_email = RegisterUser::where('email',$request->email)->first();
            if(!empty($check_email)){

                $check_password = RegisterUser::where('email',$request->email)->where('password',$request->password)->first();
               
                if(!empty($check_password)){
                    if($check_password->status == 1){
                        $add = new UserLogs;
                        $add->user_id = $check_password->id;
                        $add->save();

                        $response = array('status'=>true,'message'=>'User verify successfully','id'=>$check_password->id);
                        return response()->json($response);
                    }else{
                        $response = array('status'=>false,'message'=>'User status is inactive','id'=>0);
                        return response()->json($response);
                    }
                }else{
                    $response = array('status'=>false,'message'=>'Invalid password','id'=>0);
                    return response()->json($response);
                }
            }else{
                $response = array('status'=>false,'message'=>'User not found','id'=>0);
                return response()->json($response);
            }
        }else{
            $response = array('status'=>false,'message'=>'Input data missing','id'=>0);
            return response()->json($response);
        }
    }

    public function get_user_data(){
        $user_data = RegisterUser::all();
        $all_data_array = array();
        foreach($user_data as $user){
            $user_datas['id'] = $user->id;
            $user_datas['name'] = $user->name;
            $user_datas['gender'] = $user->gender;
            $user_datas['number'] = $user->number;
            $user_datas['address'] = $user->address;
            if(!empty($user->image)){
                $user_datas['image'] = asset('profile_image/'.$user->image);
            }else{
                $user_datas['image'] = '';
            }
            $user_datas['email'] = $user->email;
            $user_datas['password'] = $user->password;
            $user_datas['role'] = $user->role;
            $user_datas['status'] = $user->status;
            $user_datas['dob'] = $user->dob;
            $user_datas['created_at'] = $user->created_at;
            $user_datas['updated_at'] = $user->updated_at;
            array_push($all_data_array,$user_datas);
        }
        if($all_data_array->isEmpty()){
            $response = array('status'=>false,'data'=>[]);
        }else{
            $response = array('status'=>true,'data'=>$all_data_array);
        }
        return response()->json($response);
    }

    public function get_individual_user(Request $request){
        $id = $request->id;
        $user_data = RegisterUser::where('id',$id)->first();
        if(!empty($user_data)){
            $data['id'] = $user_data->id;
            $data['name'] = $user_data->name;
            $data['gender'] = $user_data->gender;
            $data['number'] = $user_data->number;
            $data['image'] = url("/profile_image/".$user_data->image);
            $data['address'] = $user_data->address;
            $data['email'] = $user_data->email;
            $data['password'] = $user_data->password;
            $data['role'] = $user_data->role;
            $data['dob'] = $user_data->dob;
            $data['status'] = $user_data->status;
            $data['created_at'] = $user_data->created_at;
            $data['updated_at'] = $user_data->updated_at;
            $response = array('status'=>true,'data'=>$data);
            return response()->json($response);
        }else{
            $response = array('status'=>false,'data'=> []);
            return response()->json($response);
        }
    }

    public function mean_of_transport(){
        $mean_of_transport = MeanOfTransport::all();
        $response = array('status'=>true,'data'=>$mean_of_transport);
        return response()->json($response);
    }

    public function country_list(){
        $country_data = Country::all();
        $response = array('status'=>true,'data'=>$country_data);
        return response()->json($response);
    }

    public function document_type(){
        $DocumentType = DocumentType::all();
        $response = array('status'=>true,'data'=>$DocumentType);
        return response()->json($response);
    }

    public function motivation_of_trip(){
        $motivation_of_trip = MotivationOfTrip::all();
        $response = array('status'=>true,'data'=>$motivation_of_trip);
        return response()->json($response);
    }
    
    public function add_trip(Request $request){
        if(empty($request->trip_id)){
            $add_trip = new Trip;
            $add_trip->trip_number = uniqid();
            $add_trip->trip_name = $request->trip_name;
            $add_trip->member_count = $request->member_count;
            $add_trip->trip_start_date = date('Y-m-d', strtotime($request->trip_start_date));
            $add_trip->trip_end_date = date('Y-m-d', strtotime($request->trip_end_date));
            $add_trip->date_created = date('Y-m-d', strtotime($request->date_created));
            $add_trip->date_closed = date('Y-m-d', strtotime($request->date_closed));
            $add_trip->user_id = $request->user_id;
            $add_trip->trip_status = $request->trip_status;
            $add_trip->created_by = $request->created_by;
            $user_name = RegisterUser::where('id',$request->created_by)->first();
            $add_trip->created_by_user_name = $user_name->name;
            if($add_trip->save()){
                $response = array('status'=>true,'message'=>'Trip created successfully','trip_id'=>$add_trip->id);
            }else{
                $response = array('status'=>false,'message'=>'Something went wrong','trip_id'=>'');
            }
        }else{
            $check_trip_name = Trip::where('id',$request->trip_id)->first();
            if(!empty($check_trip_name)){
                $check_trip_name->trip_name = $request->trip_name;
                $check_trip_name->member_count = $request->member_count;
                $check_trip_name->trip_start_date = date('Y-m-d', strtotime($request->trip_start_date));
                $check_trip_name->trip_end_date = date('Y-m-d', strtotime($request->trip_end_date));
                $check_trip_name->date_created = date('Y-m-d', strtotime($request->date_created));
                $check_trip_name->date_closed = date('Y-m-d', strtotime($request->date_closed));
                $check_trip_name->user_id = $request->user_id;
                $check_trip_name->trip_status = $request->trip_status;
                $check_trip_name->created_by = $request->created_by;
                $user_name = RegisterUser::where('id',$request->created_by)->first();
                $check_trip_name->created_by_user_name = $user_name->name;
                if($check_trip_name->save()){
                    $response = array('status'=>true,'message'=>'Trip Updated successfully','trip_id'=>$check_trip_name->id);
                }else{
                    $response = array('status'=>false,'message'=>'Something went wrong','trip_id'=>'');
                }
            }else{
                $response = array('status'=>false,'message'=>'Trip id not match','trip_id'=>'');
            }
        }
        return response()->json($response);
    }

    public function add_trip_TripPeople(Request $request){
        $user_id = $request->user_id;
        if(!empty($request->trip_id)){
            $check_user = RegisterUser::where('email',$request->contacts_email)->first();
            $check_trip_people = TripPeople::where('trip_id',$request->trip_id)->where('contacts_email',$request->contacts_email)->first();
            
            if(empty($check_trip_people)){
                $last_people_id = TripPeople::orderBy('id', 'DESC')->pluck('id')->first();
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

                $fils_data = $request->document_fils;
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
                $add_trip_people->orginating_form_city = $request->orginating_form_city;
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
                    $response = array('status'=>true,'message'=>'People added successfully on this trip');
                }else{
                    $response = array('status'=>false,'message'=>'Something went wrong');
                }
            }else{
                $update_trip_people = TripPeople::where('contacts_email',$request->contacts_email)->first();
                $update_trip_people->trip_id = $request->trip_id;
                $update_trip_people->user_id = $user_id;
                $update_trip_people->name = $request->name;
                $update_trip_people->family_name = $request->family_name;
                $update_trip_people->gender = $request->gender;
                $update_trip_people->dob = date('Y-m-d', strtotime(date('Y-m-d', strtotime($request->dob))));
                $update_trip_people->document_type = $request->document_type;
                $update_trip_people->document_number = $request->document_number;
                $update_trip_people->valid_untill = date('Y-m-d', strtotime($request->valid_untill));
                $update_trip_people->document_country = $request->document_country;
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

                $fils_data = $request->document_fils;
                if(!empty($fils_data)){
                    if($fils_data){
                        $image = $fils_data;
                        $name = time().'.'.$image->getClientOriginalExtension();
                        $destinationPath = public_path('/document_image');
                        $image->move($destinationPath, $name);
                        $update_trip_people->document_id_data = $name;
                    }
                }

                $update_trip_people->motivation_of_trip = $request->motivation_of_trip;
                $update_trip_people->mean_of_transport = $request->mean_of_transport;
                $update_trip_people->airline = $request->airline;
                $update_trip_people->orginating_form_country = $request->originating_from_country;
                $update_trip_people->orginating_form_city = $request->orginating_form_city;
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
                    $response = array('status'=>true,'message'=>'Data updated successfully');
                }else{
                    $response = array('status'=>false,'message'=>'Something went wrong');
                }
            }
        }else{
            $response = array('status'=>false,'message'=>'Trip id not found');
        }
        return response()->json($response);
    }

    public function add_trip_tripPeople_as_draft(Request $request){
        $user_id = $request->user_id;
        $is_draft = $request->draft_user_id;
        if(!empty($request->trip_id)){
            $check_user = RegisterUser::where('email',$request->contacts_email)->first();
            $check_trip_people = TripPeople::where('trip_id',$request->trip_id)->where('contacts_email',$request->contacts_email)->first();
            
            if(empty($is_draft)){
                $last_people_id = TripPeople::orderBy('id', 'DESC')->pluck('id')->first();
                $add_trip_people = new TripPeople;
                $add_trip_people->trip_id = $request->trip_id;
                $add_trip_people->people_id_code = rand(1,9).time().rand(1,9);
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
                $add_trip_people->residence_country = $request->residence_country;
                $add_trip_people->residence_city = $request->residence_city;
                $add_trip_people->residence_post_code = $request->residence_post_code;
                $add_trip_people->contacts_email = $request->contacts_email;
                $add_trip_people->contacts_phone = $request->contacts_phone;
                $add_trip_people->status = $request->status;
                $add_trip_people->trip_data_visa_information = $request->trip_data_visa_information;
                $add_trip_people->experience_date = date('Y-m-d', strtotime($request->experience_date));
                $add_trip_people->visa_motive = $request->visa_motive;
                $add_trip_people->is_draft = 0;
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
                    $add_trip_people->motivation_of_trip = $request->motivation_of_trip;
                    $add_trip_people->mean_of_transport = $request->mean_of_transport;
                    $add_trip_people->airline = $request->airline;
                    $add_trip_people->orginating_form_country = $request->originating_from_country;
                    $add_trip_people->orginating_form_city = $request->orginating_form_city;
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
                        $response = array('status'=>true,'message'=>'People added successfully on this trip','draft_user_id'=>$add_trip_people->id);
                    }else{
                        $response = array('status'=>false,'message'=>'Something went wrong','draft_user_id'=>'');
                    }
            }else{
                $update_trip_people = TripPeople::where('id',$is_draft)->first();
                $update_trip_people->trip_id = $request->trip_id;
                $update_trip_people->user_id = $user_id;
                $update_trip_people->name = $request->name;
                $update_trip_people->family_name = $request->family_name;
                $update_trip_people->gender = $request->gender;
                $update_trip_people->dob = date('Y-m-d', strtotime(date('Y-m-d', strtotime($request->dob))));
                $update_trip_people->document_type = $request->document_type;
                $update_trip_people->document_number = $request->document_number;
                $update_trip_people->valid_untill = date('Y-m-d', strtotime($request->valid_untill));
                $update_trip_people->document_country = $request->document_country;
                $update_trip_people->residence_address = $request->residence_address;
                $update_trip_people->residence_country = $request->residence_country;
                $update_trip_people->residence_city = $request->residence_city;
                $update_trip_people->residence_post_code = $request->residence_post_code;
                $update_trip_people->contacts_email = $request->contacts_email;
                $update_trip_people->contacts_phone = $request->contacts_phone;
                $update_trip_people->status = $request->status;
                $update_trip_people->is_draft = 0;
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
                $update_trip_people->motivation_of_trip = $request->motivation_of_trip;
                $update_trip_people->mean_of_transport = $request->mean_of_transport;
                $update_trip_people->airline = $request->airline;
                $update_trip_people->orginating_form_country = $request->originating_from_country;
                $update_trip_people->orginating_form_city = $request->orginating_form_city;
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
                    $response = array('status'=>true,'message'=>'Data updated successfully','draft_user_id'=>$update_trip_people->id);
                }else{
                    $response = array('status'=>false,'message'=>'Something went wrong','draft_user_id'=>'');
                }
            }
        }else{
            $response = array('status'=>false,'message'=>'Trip id not found');
        }
        return response()->json($response);
    }

    public function get_trip(Request $request){
        $trip_id = $request->trip_id;
        if(!empty($trip_id)){
            $trip_people_all_array = array();
            $trip['trip'] = Trip::where('id',$trip_id)->first();
            $trip_people_data = TripPeople::with('mean_of_transports','document_countrys','residence_countrys','arrival_crossing','departure_crossing','orginating_form_countrys','document_types','motivation_of_trips')->where('trip_id',$trip_id)->get();
            foreach($trip_people_data as $trip_people_datas){
                $trip_peo['id'] = $trip_people_datas->id;
                $trip_peo['trip_id'] = $trip_people_datas->trip_id;
                $trip_peo['user_id'] = $trip_people_datas->user_id;
                $trip_peo['name'] = $trip_people_datas->name;
                $trip_peo['family_name'] = $trip_people_datas->family_name;
                $trip_peo['gender'] = $trip_people_datas->gender;
                $trip_peo['dob'] = $trip_people_datas->dob;
                if(isset($trip_people_datas->document_types->name)){
                    $trip_peo['document_type'] = $trip_people_datas->document_types->name;
                }else{
                    $trip_peo['document_type'] = '';
                }
                $trip_peo['document_number'] = $trip_people_datas->document_number;
                $trip_peo['valid_untill'] = $trip_people_datas->valid_untill;
                if(!empty($trip_people_datas->document_countrys->name)){
                    $trip_peo['document_country'] = $trip_people_datas->document_countrys->name;
                }else{
                    $trip_peo['document_country'] = '';
                }

                $trip_peo['residence_address'] = $trip_people_datas->residence_address;
                if(!empty($trip_people_datas->residence_countrys->name)){
                    $trip_peo['residence_country'] = $trip_people_datas->residence_countrys->name;
                }else{
                    $trip_peo['residence_country'] = '';
                }
                
                $trip_peo['residence_city'] = $trip_people_datas->residence_city;
                $trip_peo['residence_post_code'] = $trip_people_datas->residence_post_code;
                $trip_peo['contacts_email'] = $trip_people_datas->contacts_email;
                $trip_peo['contacts_phone'] = $trip_people_datas->contacts_phone;
                $trip_peo['trip_data_visa_information'] = $trip_people_datas->trip_data_visa_information;
                $trip_peo['experience_date'] = $trip_people_datas->experience_date;
                $trip_peo['visa_motive'] = $trip_people_datas->visa_motive;
                if(!empty($trip_people_datas->visa_document)){
                    $trip_peo['visa_document'] = asset('visa_document/'.$trip_people_datas->visa_document);
                }else{
                    $trip_peo['visa_document'] = '';
                }
                if(isset($trip_people_datas->motivation_of_trips->name)){
                    $trip_peo['motivation_of_trip'] = $trip_people_datas->motivation_of_trips->name;
                }else{
                    $trip_peo['motivation_of_trip'] = '';
                }
                if(isset($trip_people_datas->mean_of_transports->name)){
                    $trip_peo['mean_of_transport'] = $trip_people_datas->mean_of_transports->name;
                }else{
                    $trip_peo['mean_of_transport'] = '';
                }
                $trip_peo['airline'] = $trip_people_datas->airline;
                $trip_peo['airline'] = $trip_people_datas->airline;
                if(isset($trip_people_datas->orginating_form_countrys->name)){
                    $trip_peo['originating_from_country'] = $trip_people_datas->orginating_form_countrys->name;
                }else{
                    $trip_peo['originating_from_country'] = '';
                }
                $trip_peo['orginating_form_city'] = $trip_people_datas->orginating_form_city;
                $trip_peo['originating_from_via'] = $trip_people_datas->orginating_form_via;
                if(isset($trip_people_datas->arrival_crossing->name)){
                    $trip_peo['arrival_crossing_point_border_crossing_point'] = $trip_people_datas->arrival_crossing->name;
                }else{
                    $trip_peo['arrival_crossing_point_border_crossing_point'] = '';
                }
                $trip_peo['arrival_crossing_point_arrival_date'] = $trip_people_datas->arrival_crossing_point_arrival_date;
                if(isset($trip_people_datas->departure_crossing->name)){
                    $trip_peo['departure_crossing_point_border_crossing_point'] = $trip_people_datas->departure_crossing->name;
                }else{
                    $trip_peo['departure_crossing_point_border_crossing_point'] = '';
                }
                $trip_peo['departure_crossing_point_departure_date'] = $trip_people_datas->departure_crossing_point_departure_date;
                $trip_peo['created_at'] = $trip_people_datas->created_at;
                $trip_peo['updated_at'] = $trip_people_datas->updated_at;
                $trip_peo['document_fils'] =  asset('document_image/'.$trip_people_datas->document_id_data);
                array_push($trip_people_all_array,$trip_peo);
            }
            $trip['trip_people'] = $trip_people_all_array;
            $response = array('status'=>true,'data'=>$trip);
        }else{
            $response = array('status'=>false,'data'=> []);
        }
        return response()->json($response);
    }

    public function update_user(Request $request){
        $id = $request->user_id;
        $add = RegisterUser::where('id',$id)->first();
        if(!empty($request->email) && !empty($request->gender) && !empty($request->number)){
            $add->name = $request->name;
            $add->gender = $request->gender;
            $add->number = $request->number;
            $add->address = $request->address;
            $add->email = $request->email;
            $add->dob = date('Y-m-d', strtotime($request->dob));
            if($request->hasFile('image')){
                if(!empty($add->image)){
                    $imagePath = public_path('profile_image/'.$add->image);
                    if(File::exists($imagePath)){
                        unlink($imagePath);
                    }
                }
                $image = $request->file('image');
                $name = time().'.'.$image->getClientOriginalExtension();
                $destinationPath = public_path('/profile_image');
                $image->move($destinationPath, $name);
                $add->image = $name;
            }$add->role = $request->role;
            if($request->status == 'on'){
                $add->status = 1;
            }else{
                $add->status = 0;
            }
            if($add->save()){
                $response = array('status'=>true,'message'=>'Data updated successfully');
            }else{
            $response = array('status'=>false,'message'=>'Something went wrong');
            }
        }else{
            $response = array('status'=>false,'message'=>'input data missing');
        }
        return response()->json($response);
    }

    public function login_border_scanner_partner(Request $request){

        /**************************************************************
         * This is for android
        *************************************************************/
        $email = $request->email;
        $password = $request->password;
        if(!empty($email) && !empty($password)){
            $check_email_password = User::where('email',$email)->first();
            if(!empty($check_email_password) && $check_email_password->role == 'agent' && Hash::check($request->password,$check_email_password->password)){
                if($check_email_password['status'] == 1 && isset($check_email_password['status'])){
                    if($email == 'testid@gmail.com'){
                        $user_details = User::where('email',$check_email_password->email)->first();
                        $response = array('status'=>true,'message'=>'OTP has been sent to the registered email id','role'=>$check_email_password->role,'user_id'=>$user_details->id);
                    }elseif($email == 'testidpartner@gmail.com'){
                        $user_details = User::where('email',$check_email_password->email)->first();
                        $response = array('status'=>true,'message'=>'OTP has been sent to the registered email id','role'=>$check_email_password->role,'user_id'=>$user_details->id);
                    }else{
                        $details = rand(1000,9999);
                        $update_user = User::where('email',$check_email_password->email)->first();
                        $update_user->otp = $details;
                        if($update_user->save()){
                            Mail::to($email)->send(new \App\Mail\PartnerScannerOTP($details));
                            $response = array('status'=>true,'message'=>'OTP has been sent to the registered email id','role'=>$check_email_password->role,'user_id'=>$update_user->id);
                        }else{
                            $response = array('status'=>false,'message'=>'Something went wrong','user_id'=>0,'role'=>'');
                        }
                    }
                }else{
                    $response = array('status'=>false,'message'=>'User status inactive','user_id'=>0,'role'=>'');
                }
            }else{
                $response = array('status'=>false,'message'=>'User email and password not match','user_id'=>0,'role'=>'');
            }
        }else{
            $response = array('status'=>false,'message'=>'Input data missing','user_id'=>0,'role'=>'');
        }
        return response()->json($response);
        // $email = $request->email;
        // $password = $request->password;
        // if(!empty($email) && !empty($password)){
        //     $check_email_password = User::where('email',$email)->first();
        
        //     if($check_email_password->status == 1 && Hash::check($request->password,$check_email_password->password)){
        //         if(!empty($check_email_password)){
        //             $details = rand(1000,9999);
        //             $update_user = User::where('email',$check_email_password->email)->first();
        //             $update_user->otp = $details;
        //             if($update_user->save()){
        //                 Mail::to($email)->send(new \App\Mail\PartnerScannerOTP($details));
        //                 $response = array('status'=>true,'message'=>'OTP has been sent to the registered email id','role'=>$check_email_password->role,'user_id'=>$update_user->id);
        //             }else{
        //                 $response = array('status'=>false,'message'=>'Something went wrong','user_id'=>'','role'=>'');
        //             }
        //         }else{
        //             $response = array('status'=>false,'message'=>'User email and password not match','user_id'=>'','role'=>'');
        //         }
        //     }else{
        //         $response = array('status'=>false,'message'=>'User status inactive','user_id'=>'','role'=>'');
        //     }
        // }else{
        //     $response = array('status'=>false,'message'=>'Input data missing','user_id'=>'','role'=>'');
        // }
        // return response()->json($response);
    }

    public function resend_login_otp(Request $request){
       $user_id = $request->user_id;
        if(!empty($user_id)){
            $check_email_password = User::where('id',$user_id)->first();
            if(!empty($check_email_password)){
                if($check_email_password['status'] == 1 && isset($check_email_password['status'])){
                    $details = rand(1000,9999);
                    $update_user = User::where('id',$user_id)->first();
                    $update_user->otp = $details;
                    if($update_user->save()){
                        Mail::to($update_user->email)->send(new \App\Mail\PartnerScannerOTP($details));
                        $response = array('status'=>true,'message'=>'OTP has been sent to the registered email id','role'=>$check_email_password->role,'user_id'=>$update_user->id);
                    }else{
                        $response = array('status'=>false,'message'=>'Something went wrong','user_id'=>0,'role'=>'');
                    }
                }else{
                    $response = array('status'=>false,'message'=>'User status inactive','user_id'=>0,'role'=>'');
                }
            }else{
                $response = array('status'=>false,'message'=>'User not match','user_id'=>0,'role'=>'');
            }
        }else{
            $response = array('status'=>false,'message'=>'User data missing','user_id'=>0,'role'=>'');
        }
        return response()->json($response);
    }

    public function payment(Request $request){
        $check_user_id = Trip::where('id',$request->trip_id)->where('created_by',$request->user_id)->first();
        $get_created_by_id = Trip::where('id',$request->trip_id)->first();
        $check_card_paymant = Payment::where('trip_id',$request->trip_id)->where('enduser_id',$get_created_by_id->created_by)->first();

        if(empty($check_card_paymant)){
            $card_paymant_status = 0;
        }else{
            $card_paymant_status = 1;
        }
        $payment = new Payment;
        $payment->amount = $request->amount;
        if(!empty($check_user_id)){
            $payment->enduser_id = $request->user_id;
        }else{
            $payment->enduser_id = $get_created_by_id->created_by;
        }
        
        $payment->partner_id = $request->partner_id;
        $payment->business_type = $request->business_type;
        $payment->trip_id = $request->trip_id;
        $payment->all_user_id_in_trip = $request->all_user_id_in_trip;
        $payment->status = $request->status;
        $payment->card_paymant = $card_paymant_status;
        
        if($payment->save()){
            $update_scan_log = ScanLogs::where('trip_id',$request->trip_id)->where('user_id',$request->user_id)->where('p_b_id',$request->partner_id)->orderBy('id','DESC')->first();
            if(!empty($update_scan_log)){
                $update_scan_log->payment = 1;
                $update_scan_log->amt = $request->amount;
                $update_scan_log->save();
            }
            $response = array('status'=>true,'message'=>'Payment added successfully');
        }else{
            $response = array('status'=>false,'message'=>'Something went wrong');
        }
        return response()->json($response);
    }

    public function get_user_document(Request $request) {
        $trip_id = $request->trip_id;
        $user_id = $request->user_id;
        $trip_people = TripPeople::with('document_types')->where('trip_id',$trip_id)->where('user_id',$user_id)->first();
        if(!empty($trip_people)){
            $data['document_type'] = $trip_people->document_types->name;
            $data['document_number'] = $trip_people->document_number;
            if(!empty($trip_people->visa_document)){
                $data['document_image'] = asset('visa_document/'.$trip_people->visa_document);
            }else{
                $data['document_image'] = '';
            }
            $response = array('status'=>true,'data'=>$data);
        }else{
            $response = array('status'=>false,'data'=> []);
        }
        return response()->json($response);
    }

    public function check_payment(Request $request){
        $trip_id = $request->trip_id;
        $user_id = $request->user_id;
        $p_b_id = $request->p_b_id;
        
        if(!empty($trip_id) && !empty($user_id) && !empty($p_b_id)){
            $add_scan_logs = new ScanLogs;
            $add_scan_logs->trip_id = $trip_id;
            $add_scan_logs->user_id = $user_id;
            $add_scan_logs->p_b_id = $p_b_id;
            $add_scan_logs->save();
        }
        $trip_people = TripPeople::where('trip_id',$trip_id)->where('user_id','!=','')->pluck('user_id');
        $payment = Payment::where('trip_id',$trip_id)->where('status','paid')->first();
        if(!empty($payment)){
            $response = array('status'=>true,'message'=>'This trip is paid','user_ids'=>$trip_people);
        }else{
            $response = array('status'=>false,'message'=>'This trip is unpaid','user_ids'=>array());
        }
        return response()->json($response);
    }

    public function get_user_wise_trip(Request $request){
        $user_id = $request->user_id;
        $get_trip = Trip::where('created_by',$user_id)->get();
        $response = array('status'=>true,'data'=>$get_trip);
        
        return response()->json($response);
    }

    public function get_trip_card(Request $request){
        $trip_id = $request->trip_id;
        $trip_cart_array = array();
        $trip_wise_data = Trip::where('id',$trip_id)->first();
        $trip = TripPeople::where('trip_id',$trip_id)->get();
        foreach($trip as $trip_data){
            $trip_people['trip_id'] = $trip_data->trip_id;
            $trip_people['user_id'] = $trip_data->id;
            $trip_people['username'] = $trip_data->name;
            $trip_people['dob'] = $trip_data->dob;
            $trip_people['gender'] = $trip_data->gender;
            $trip_people['address'] = $trip_data->residence_address;
            $trip_people['start_date'] = $trip_wise_data->trip_start_date;
            $trip_people['end_date'] = $trip_wise_data->trip_end_date;
            array_push($trip_cart_array,$trip_people);
        }
        if(empty($trip_cart_array)){
            $response = array('status'=>false,'data'=>[]);
        }else{
            $response = array('status'=>true,'data'=>$trip_cart_array);
        }
        return response()->json($response);
    }

    public function arrival_crossing_point(){
        $arrival = ArrivalCrossingPoint::all();
        if(empty($arrival)){
            $response = array('status'=>false,'data'=>(object)[]);
        }else{
            $response = array('status'=>true,'data'=>$arrival);
        }
        return response()->json($response);
    }

    public function departur_crossing_point(){
        $departur = DepartureCrossingPoint::all();
        if(empty($departur)){
            $response = array('status'=>false,'data'=>(object)[]);
        }else{
            $response = array('status'=>true,'data'=>$departur);
        }
        return response()->json($response);
    }
    
    public function get_trip_wise_peoples(Request $request){
        $trip_id = $request->trip_id;
        if(!empty($trip_id)){
            $trip_people_all_array = array();
            $trip_people_data = TripPeople::where('is_draft',1)->with('departure_crossing','arrival_crossing','mean_of_transports','document_countrys','residence_countrys','orginating_form_countrys','document_types','motivation_of_trips')->where('trip_id',$trip_id)->get();
            foreach($trip_people_data as $trip_people_datas){
                $trip_peo['id'] = $trip_people_datas->id;
                $trip_peo['trip_id'] = $trip_people_datas->trip_id;
                $trip_peo['user_id'] = $trip_people_datas->user_id;
                $trip_peo['name'] = $trip_people_datas->name;
                $trip_peo['family_name'] = $trip_people_datas->family_name;
                $trip_peo['gender'] = $trip_people_datas->gender;
                $trip_peo['dob'] = $trip_people_datas->dob;
                if(!empty($trip_people_datas->document_types->name)){
                    $trip_peo['document_type'] = $trip_people_datas->document_types->name;
                }else{
                    $trip_peo['document_type'] = '';
                }
                $trip_peo['document_number'] = $trip_people_datas->document_number;
                $trip_peo['valid_untill'] = $trip_people_datas->valid_untill;
                if(!empty($trip_people_datas->document_countrys->name)){
                    $trip_peo['document_country'] = $trip_people_datas->document_countrys->name;
                }else{
                    $trip_peo['document_country'] = '';
                }
                $trip_peo['residence_address'] = $trip_people_datas->residence_address;
                if(!empty($trip_people_datas->residence_countrys->name)){
                    $trip_peo['residence_country'] = $trip_people_datas->residence_countrys->name;
                }else{
                    $trip_peo['residence_country'] = '';
                }
                $trip_peo['residence_city'] = $trip_people_datas->residence_city;
                $trip_peo['residence_post_code'] = $trip_people_datas->residence_post_code;
                $trip_peo['contacts_email'] = $trip_people_datas->contacts_email;
                $trip_peo['contacts_phone'] = $trip_people_datas->contacts_phone;
                $trip_peo['trip_data_visa_information'] = $trip_people_datas->trip_data_visa_information;
                $trip_peo['experience_date'] = $trip_people_datas->experience_date;
                $trip_peo['visa_motive'] = $trip_people_datas->visa_motive;
                if(!empty($trip_people_datas->motivation_of_trips->name)){
                    $trip_peo['motivation_of_trip'] = $trip_people_datas->motivation_of_trips->name;
                }else{
                    $trip_peo['motivation_of_trip'] = '';
                }
                if(!empty($trip_people_datas->mean_of_transports->name)){
                    $trip_peo['mean_of_transport'] = $trip_people_datas->mean_of_transports->name;
                }else{
                    $trip_peo['mean_of_transport'] = '';
                }
                $trip_peo['airline'] = $trip_people_datas->airline;
                if(isset($trip_people_datas->orginating_form_countrys->name)){
                    $trip_peo['originating_from_country'] = $trip_people_datas->orginating_form_countrys->name;
                }else{
                    $trip_peo['originating_from_country'] = '';
                }
                $trip_peo['orginating_form_city'] = $trip_people_datas->orginating_form_city;
                $trip_peo['originating_from_via'] = $trip_people_datas->orginating_form_via;
                if(isset($trip_people_datas->arrival_crossing->name)){
                    $trip_peo['arrival_crossing_point_border_crossing_point'] = $trip_people_datas->arrival_crossing->name;
                }else{
                    $trip_peo['arrival_crossing_point_border_crossing_point'] = '';

                }
                $trip_peo['arrival_crossing_point_arrival_date'] = $trip_people_datas->arrival_crossing_point_arrival_date;
                if(isset($trip_people_datas->departure_crossing->name)){
                    $trip_peo['departure_crossing_point_border_crossing_point'] = $trip_people_datas->departure_crossing->name;
                }else{
                    $trip_peo['departure_crossing_point_border_crossing_point'] = '';
                }
                $trip_peo['departure_crossing_point_departure_date'] = $trip_people_datas->departure_crossing_point_departure_date;
                $trip_peo['room_no'] = $trip_people_datas->room_no;
                $trip_peo['hotel_name'] = $trip_people_datas->hotel_name;
                $trip_peo['arrival_date'] = $trip_people_datas->arrival_date;
                $trip_peo['dep_date'] = $trip_people_datas->dep_date;
                if(!empty($trip_people_datas->document_id_data)){
                    $trip_peo['document_fils'] =  asset('document_image/'.$trip_people_datas->document_id_data);
                }else{
                    $trip_peo['document_fils'] = '';
                }
                if(!empty($trip_people_datas->document_image)){
                    $trip_peo['document_image'] = asset('visa_document/'.$trip_people_datas->document_image);
                }else{
                    $trip_peo['document_image'] = '';
                }
                $trip_peo['created_at'] = $trip_people_datas->created_at;
                $trip_peo['updated_at'] = $trip_people_datas->updated_at;
                array_push($trip_people_all_array,$trip_peo);
            }
            $trip['trip_people'] = $trip_people_all_array;
            $response = array('status'=>true,'data'=>$trip);
        }else{
            $response = array('status'=>false,'data'=> []);
        }
        return response()->json($response);
    }

    public function get_draft_trip_wise_peoples(Request $request){
        $trip_id = $request->trip_id;
        $draft_user_id = $request->draft_user_id;
        if(!empty($trip_id) && !empty($draft_user_id)){
            $trip_people_all_array = array();
            $trip_people_datas = TripPeople::where('id',$draft_user_id)->with('departure_crossing','arrival_crossing','mean_of_transports','document_countrys','residence_countrys','orginating_form_countrys','document_types','motivation_of_trips')->where('trip_id',$trip_id)->first();
            $trip_peo['id'] = $trip_people_datas->id;
            $trip_peo['trip_id'] = $trip_people_datas->trip_id;
            $trip_peo['user_id'] = $trip_people_datas->user_id;
            $trip_peo['name'] = $trip_people_datas->name;
            $trip_peo['family_name'] = $trip_people_datas->family_name;
            $trip_peo['gender'] = $trip_people_datas->gender;
            $trip_peo['dob'] = $trip_people_datas->dob;
            if(!empty($trip_people_datas->document_types->name)){
                $trip_peo['document_type'] = $trip_people_datas->document_types->name;
            }else{
                $trip_peo['document_type'] = '';
            }
            $trip_peo['document_number'] = $trip_people_datas->document_number;
            $trip_peo['valid_untill'] = $trip_people_datas->valid_untill;
            if(!empty($trip_people_datas->document_countrys->name)){
                $trip_peo['document_country'] = $trip_people_datas->document_countrys->name;
            }else{
                $trip_peo['document_country'] = '';
            }
            $trip_peo['residence_address'] = $trip_people_datas->residence_address;
            if(!empty($trip_people_datas->residence_countrys->name)){
                $trip_peo['residence_country'] = $trip_people_datas->residence_countrys->name;
            }else{
                $trip_peo['residence_country'] = '';
            }
            $trip_peo['residence_city'] = $trip_people_datas->residence_city;
            $trip_peo['residence_post_code'] = $trip_people_datas->residence_post_code;
            $trip_peo['contacts_email'] = $trip_people_datas->contacts_email;
            $trip_peo['contacts_phone'] = $trip_people_datas->contacts_phone;
            $trip_peo['trip_data_visa_information'] = $trip_people_datas->trip_data_visa_information;
            $trip_peo['experience_date'] = $trip_people_datas->experience_date;
            $trip_peo['visa_motive'] = $trip_people_datas->visa_motive;
            if(isset($trip_people_datas->motivation_of_trips->name)){
                $trip_peo['motivation_of_trip'] = $trip_people_datas->motivation_of_trips->name;
            }else {
                $trip_peo['motivation_of_trip'] = '';
            }
            if(isset($trip_people_datas->mean_of_transports->name)){
                $trip_peo['mean_of_transport'] = $trip_people_datas->mean_of_transports->name;
            }else{
                $trip_peo['mean_of_transport'] = '';
            }
            $trip_peo['airline'] = $trip_people_datas->airline;
            $trip_peo['airline'] = $trip_people_datas->airline;
            if(isset($trip_people_datas->orginating_form_countrys->name)){
                $trip_peo['originating_from_country'] = $trip_people_datas->orginating_form_countrys->name;
            }else{
                $trip_peo['originating_from_country'] = '';
            }
            $trip_peo['orginating_form_city'] = $trip_people_datas->orginating_form_city;
            $trip_peo['originating_from_via'] = $trip_people_datas->orginating_form_via;
            if(isset($trip_people_datas->arrival_crossing->name)){
                $trip_peo['arrival_crossing_point_border_crossing_point'] = $trip_people_datas->arrival_crossing->name;
            }else{
                $trip_peo['arrival_crossing_point_border_crossing_point'] = '';

            }
            $trip_peo['arrival_crossing_point_arrival_date'] = $trip_people_datas->arrival_crossing_point_arrival_date;
            if(isset($trip_people_datas->departure_crossing->name)){
                $trip_peo['departure_crossing_point_border_crossing_point'] = $trip_people_datas->departure_crossing->name;
            }else{
                $trip_peo['departure_crossing_point_border_crossing_point'] = '';
            }
            $trip_peo['departure_crossing_point_departure_date'] = $trip_people_datas->departure_crossing_point_departure_date;
            $trip_peo['room_no'] = $trip_people_datas->room_no;
            $trip_peo['hotel_name'] = $trip_people_datas->hotel_name;
            $trip_peo['arrival_date'] = $trip_people_datas->arrival_date;
            $trip_peo['dep_date'] = $trip_people_datas->dep_date;
            if(!empty($trip_people_datas->document_image)){
                $trip_peo['document_image'] = asset('visa_document/'.$trip_people_datas->document_image);
            }else{
                $trip_peo['document_image'] = '';
            }
            $trip_peo['created_at'] = $trip_people_datas->created_at;
            $trip_peo['updated_at'] = $trip_people_datas->updated_at;
            array_push($trip_people_all_array,$trip_peo);

            $trip['trip_people'] = $trip_people_all_array;
            $response = array('status'=>true,'data'=>$trip);
        }else{
            $response = array('status'=>false,'data'=> []);
        }
        return response()->json($response);
    }

    public function get_payment_list(Request $request){
        $user_id = $request->user_id;
        if(!empty($user_id)){
            $payment_list = Payment::where('enduser_id',$user_id)->with('end_user','partner','trip')->get();
            $payment_list_array = array();
            foreach($payment_list as $payment_list_data){
                $trip_payment['amount'] = $payment_list_data->amount;
                if(!empty($payment_list_data->end_user->name)){
                    $trip_payment['enduser'] = $payment_list_data->end_user->name;
                }else{
                    $trip_payment['enduser'] = '';
                }
                if(!empty($payment_list_data->partner->name)){
                    $trip_payment['partner'] = $payment_list_data->partner->name;
                }else{
                    $trip_payment['partner'] = '';
                }
                $trip_payment['business_type'] = $payment_list_data->business_type;
                if(!empty($payment_list_data->trip->trip_name)){
                    $trip_payment['trip'] = $payment_list_data->trip->trip_name;
                }else{
                    $trip_payment['trip'] = '';
                }
                $trip_payment['status'] = $payment_list_data->status;
                $trip_payment['date'] = $payment_list_data->created_at;
                if(!empty($payment_list_data->trip->trip_number)){
                    $trip_payment['trip_no'] = $payment_list_data->trip->trip_number;
                }else{
                    $trip_payment['trip_no'] = '';
                }
                $trip_payment['card_paymant'] = $payment_list_data->card_paymant;
                array_push($payment_list_array,$trip_payment);
            }
            if(!empty($payment_list_array)){
                $response = array('status'=>true,'data'=>$payment_list_array);
            }else{
                $response = array('status'=>false,'data'=>[]);
            }
        }else{
            $response = array('status'=>false,'data'=>[]);
        }
        return response()->json($response);
    }

    public function get_partner_payment_list(Request $request){
        $partner_id = $request->partner_id;
        if(!empty($partner_id)){
            $payment_list = Payment::where('partner_id',$partner_id)->with('end_user','partner','trip')->get();
            $payment_list_array = array();
            foreach($payment_list as $payment_list_data){
                $trip_payment['amount'] = $payment_list_data->amount;

                if(!empty($payment_list_data->end_user->name)){
                    $trip_payment['enduser'] = $payment_list_data->end_user->name;
                }else{
                    $trip_payment['enduser'] = '';
                }
                if(!empty($payment_list_data->partner->name)){
                    $trip_payment['partner'] = $payment_list_data->partner->name;
                }else{
                    $trip_payment['partner'] = '';
                }
                $trip_payment['business_type'] = $payment_list_data->business_type;
                $trip_payment['trip'] = $payment_list_data->trip->trip_name;
                $trip_payment['status'] = $payment_list_data->status;
                $trip_payment['date'] = $payment_list_data->created_at;
                if(!empty($payment_list_data->trip->trip_number)){
                    $trip_payment['trip_no'] = $payment_list_data->trip->trip_number;
                }else{
                    $trip_payment['trip_no'] = '';
                }
                $trip_payment['card_paymant'] = $payment_list_data->card_paymant;
                array_push($payment_list_array,$trip_payment);
            }
            if(!empty($payment_list_array)){
                $response = array('status'=>true,'data'=>$payment_list_array);
            }else{
                $response = array('status'=>false,'data'=>[]);
            }
        }else{
            $response = array('status'=>false,'data'=>[]);
        }
        return response()->json($response);
    }

    public function get_trip_wise_peoples_all(Request $request){
        $user_id = $request->user_id;
        $trip_check = Trip::where('created_by',$user_id)->pluck('id');
        
        if(!empty($user_id)){
            $trip_people_all_array = array();
            $trip_people_data = TripPeople::with('mean_of_transports','document_countrys','residence_countrys','orginating_form_countrys','document_types','motivation_of_trips')->whereIn('trip_id',$trip_check)->get();
            foreach($trip_people_data as $trip_people_datas){
                $trip_peo['id'] = $trip_people_datas->id;
                $trip_peo['trip_id'] = $trip_people_datas->trip_id;
                $trip_peo['user_id'] = $trip_people_datas->user_id;
                $trip_peo['name'] = $trip_people_datas->name;
                $trip_peo['family_name'] = $trip_people_datas->family_name;
                $trip_peo['gender'] = $trip_people_datas->gender;
                $trip_peo['dob'] = $trip_people_datas->dob;
                if(isset($trip_people_datas->document_types->name)){
                    $trip_peo['document_type'] = $trip_people_datas->document_types->name;
                }else{
                    $trip_peo['document_type'] = '';
                }
                $trip_peo['document_number'] = $trip_people_datas->document_number;
                $trip_peo['valid_untill'] = $trip_people_datas->valid_untill;
                if(!empty($trip_people_datas->document_countrys->name)){
                    $trip_peo['document_country'] = $trip_people_datas->document_countrys->name;
                }else{
                    $trip_peo['document_country'] = '';
                }
                
                $trip_peo['residence_address'] = $trip_people_datas->residence_address;
                if(!empty($trip_people_datas->residence_countrys->name)){
                    $trip_peo['residence_country'] = $trip_people_datas->residence_countrys->name;
                }else{
                    $trip_peo['residence_country'] = '';
                }

                $trip_peo['residence_city'] = $trip_people_datas->residence_city;
                $trip_peo['residence_post_code'] = $trip_people_datas->residence_post_code;
                $trip_peo['contacts_email'] = $trip_people_datas->contacts_email;
                $trip_peo['contacts_phone'] = $trip_people_datas->contacts_phone;
                $trip_peo['trip_data_visa_information'] = $trip_people_datas->trip_data_visa_information;
                $trip_peo['experience_date'] = $trip_people_datas->experience_date;
                $trip_peo['visa_motive'] = $trip_people_datas->visa_motive;
                if(!empty($trip_people_datas->visa_document)){
                    $trip_peo['visa_document'] = asset('visa_document/'.$trip_people_datas->visa_document);
                }else{
                    $trip_peo['visa_document'] = '';
                }
                if(!empty($trip_people_datas->motivation_of_trips->name)){
                    $trip_peo['motivation_of_trip'] = $trip_people_datas->motivation_of_trips->name;
                }else{
                    $trip_peo['motivation_of_trip'] = '';
                }
                if(!empty($trip_people_datas->mean_of_transports->name)){
                    $trip_peo['mean_of_transport'] = $trip_people_datas->mean_of_transports->name;
                }else{
                    $trip_peo['mean_of_transport'] = '';
                }
                $trip_peo['airline'] = $trip_people_datas->airline;
                $trip_peo['airline'] = $trip_people_datas->airline;
                if(isset($trip_people_datas->orginating_form_countrys->name)){
                    $trip_peo['originating_from_country'] = $trip_people_datas->orginating_form_countrys->name;
                }else{
                    $trip_peo['originating_from_country'] = '';
                }
                $trip_peo['orginating_form_city'] = $trip_people_datas->orginating_form_city;
                $trip_peo['originating_from_via'] = $trip_people_datas->orginating_form_via;
                $trip_peo['arrival_crossing_point_border_crossing_point'] = $trip_people_datas->arrival_crossing_point_border_crossing_point;
                $trip_peo['arrival_crossing_point_arrival_date'] = $trip_people_datas->arrival_crossing_point_arrival_date;
                $trip_peo['departure_crossing_point_border_crossing_point'] = $trip_people_datas->departure_crossing_point_border_crossing_point;
                $trip_peo['departure_crossing_point_departure_date'] = $trip_people_datas->departure_crossing_point_departure_date;
                if(!empty($trip_people_datas->document_id_data)){
                    $trip_peo['document_fils'] =  asset('document_image/'.$trip_people_datas->document_id_data);
                }else{
                    $trip_peo['document_fils'] = '';
                }
                $trip_peo['created_at'] = $trip_people_datas->created_at;
                $trip_peo['updated_at'] = $trip_people_datas->updated_at;
                array_push($trip_people_all_array,$trip_peo);
            }
            $trip['trip_people'] = $trip_people_all_array;
            $response = array('status'=>true,'data'=>$trip);
        }else{
            $response = array('status'=>false,'data'=> []);
        }
        return response()->json($response);
    }

    public function check_email_for_password(Request $request){
        $email_id = $request->email;
        if(!empty($email_id)){
            $email = RegisterUser::where('email',$email_id)->first();
            if(!empty($email)){
                $response = array('status'=>true,'message'=>'Email verify successfully','id'=>$email->id);
            }else{
                $response = array('status'=>false,'message'=>'Email not exists','id'=>'');
            }
        }else{
            $response = array('status'=>false,'message'=>'Input data missing','id'=>'');
        }
        return response()->json($response);
    }

    public function update_enduser_password(Request $request){
        $user_id = $request->user_id;
        $pass = $request->password;
        if(!empty($user_id) && !empty($pass)){
            $update_pass = RegisterUser::where('id',$user_id)->first();
            $update_pass->password = $pass;
            if($update_pass->save()){
                $response = array('status'=>true,'message'=>'Password changed successfully');
            }else{
                $response = array('status'=>false,'message'=>'Something went wrong');
            }
        }else{
            $response = array('status'=>false,'message'=>'Input data missing');
        }
        return response()->json($response);
    }

    public function border_scanner_partner_login(Request $request){
        
        /*************************************************************
         * This is for IOS
        *************************************************************/
        $email = $request->email;
        $password = $request->password;
        if(!empty($email) && !empty($password)){
            $check_email_password = User::where('email',$email)->first();
            
            if(!empty($check_email_password) && $check_email_password->role == 'agent' && Hash::check($request->password,$check_email_password->password)){
                if($check_email_password['status'] == 1 && isset($check_email_password['status'])){
                    if($email == 'testid@gmail.com'){
                        $user_details = User::where('email',$check_email_password->email)->first();
                        $response = array('status'=>true,'message'=>'OTP has been sent to the registered email id','role'=>$check_email_password->role,'user_id'=>$user_details->id);
                    }elseif($email == 'testidpartner@gmail.com'){
                        $user_details = User::where('email',$check_email_password->email)->first();
                        $response = array('status'=>true,'message'=>'OTP has been sent to the registered email id','role'=>$check_email_password->role,'user_id'=>$user_details->id);
                    }else{
                        $details = rand(1000,9999);
                        $update_user = User::where('email',$check_email_password->email)->first();
                        $update_user->otp = $details;
                        if($update_user->save()){
                            Mail::to($email)->send(new \App\Mail\PartnerScannerOTP($details));
                            $response = array('status'=>true,'message'=>'OTP has been sent to the registered email id','role'=>$check_email_password->role,'user_id'=>$update_user->id);
                        }else{
                            $response = array('status'=>false,'message'=>'Something went wrong','user_id'=>0,'role'=>'');
                        }
                    }
                }else{
                    $response = array('status'=>false,'message'=>'User status inactive','user_id'=>0,'role'=>'');
                }
            }else{
                $response = array('status'=>false,'message'=>'User email and password not match','user_id'=>0,'role'=>'');                
            }
        }else{
            $response = array('status'=>false,'message'=>'Input data missing','user_id'=>0,'role'=>'');
        }
        return response()->json($response);

        // $email = $request->email;
        // $password = $request->password;
        // if(!empty($email) && !empty($password)){
        //     $check_email_password = User::where('email',$email)->first();
        
        //     print_r($check_email_password && Hash::check($request->password,$check_email_password->password));
        //     if(!empty($check_email_password)){
        //         if($check_email_password['status'] == 1 && isset($check_email_password['status'])){
        //             if($email == 'testid@gmail.com'){
        //                 $user_details = User::where('email',$check_email_password->email)->first();
        //                 $response = array('status'=>true,'message'=>'OTP has been sent to the registered email id','role'=>$check_email_password->role,'user_id'=>$user_details->id);
        //             }elseif($email == 'testidpartner@gmail.com'){
        //                 $user_details = User::where('email',$check_email_password->email)->first();
        //                 $response = array('status'=>true,'message'=>'OTP has been sent to the registered email id','role'=>$check_email_password->role,'user_id'=>$user_details->id);
        //             }else{
        //                 $details = rand(1000,9999);
        //                 $update_user = User::where('email',$check_email_password->email)->first();
        //                 $update_user->otp = $details;
        //                 if($update_user->save()){
        //                     Mail::to($email)->send(new \App\Mail\PartnerScannerOTP($details));
        //                     $response = array('status'=>true,'message'=>'OTP has been sent to the registered email id','role'=>$check_email_password->role,'user_id'=>$update_user->id);
        //                 }else{
        //                     $response = array('status'=>false,'message'=>'Something went wrong','user_id'=>0,'role'=>'');
        //                 }
        //             }
        //         }else{
        //             $response = array('status'=>false,'message'=>'User status inactive','user_id'=>0,'role'=>'');
        //         }
        //     }else{
        //         $response = array('status'=>false,'message'=>'User email and password not match','user_id'=>0,'role'=>'');                
        //     }
        // }else{
        //     $response = array('status'=>false,'message'=>'Input data missing','user_id'=>0,'role'=>'');
        // }
        // return response()->json($response);
    }

    public function user_logs(Request $request){
        if(!empty($request->user_id)){
            $add = new UserLogs;
            $add->user_id = $request->user_id;
            $add->date = $request->timestamp;
            if($add->save()){
                $response = array('status'=>true,'message'=>'User Logs Added Successfully');
            }else{
                $response = array('status'=>false,'message'=>'Something went wrong');
            }
        }else{
            $response = array('status'=>false,'message'=>'User Id Not Found');
        }
        return response()->json($response);
    }

    public function check_email_and_sendOTP(Request $request){
        $email = $request->email;
        if(!empty($email)){
            $check_user = RegisterUser::where('email',$email)->first();
            if(!empty($check_user)){
                $details = rand(1000,9999);
                $update_user = RegisterUser::where('email',$check_user->email)->first();
                $update_user->otp = $details;
                if($update_user->save()){
                    Mail::to($check_user->email)->send(new \App\Mail\SendOTP($details));
                    $response = array('status'=>true,'message'=>'OTP sent successfully','user_id'=>$update_user->id);
                }else{
                    $response = array('status'=>false,'message'=>'Something went wrong','user_id'=>'');
                }
            }else{
                $response = array('status'=>false,'message'=>'Username Not Found','user_id'=>'');
            }
        }else{
            $response = array('status'=>false,'message'=>'Enter User Name','user_id'=>'');
        }
        return response()->json($response);
    }
 
    public function check_otp(Request $request){
        $user_id = $request->user_id;
        $otp = $request->otp;
        if(!empty($otp)){
            $update_user = RegisterUser::where('id',$user_id)->where('otp',$otp)->first();
            if(!empty($update_user)){
                $response = array('status'=>true,'message'=>'OTP verify successfully','user_id'=>$user_id);
            }else{
                $response = array('status'=>false,'message'=>'Your OTP wrong','user_id'=>'');
            }
        }else{
            $response = array('status'=>false,'message'=>'Please Enter OTP','user_id'=>'');
        }
        return response()->json($response);
    }

    public function border_scanner_partner_check_otp(Request $request){
        $user_id = $request->user_id;
        $otp = $request->otp;
        if(!empty($otp) && !empty($user_id)){
            $update_user = User::where('id',$user_id)->where('otp',$otp)->first();
            if(!empty($update_user)){
                $number = Hash::make(rand(11111111,99999999));
                $update_user_datas = User::where('id',$user_id)->update(['api_token'=>$number]);
                $update_user_single_data = User::where('id',$user_id)->where('otp',$otp)->first();
                $add = new PartnerScannerLogs;
                $add->partner_scanner_id = $user_id;
                $add->save();
                $response = array('status'=>true,'message'=>'OTP verify successfully','user_id'=>$user_id,'data'=>$update_user_single_data,'token'=>$number);
            }else{
                $response = array('status'=>false,'message'=>'Your OTP wrong','user_id'=>'');
            }
        }else{
            $response = array('status'=>false,'message'=>'Please Enter OTP','user_id'=>'');
        }
        return response()->json($response);
    } 
    
    // public function border_scanner_partner_reset_password(Request $request){
    //     $email = $request->email;
    //     if(!empty($email)){
    //         $check_email_password = User::where('email',$email)->first();
    //         if(!empty($check_email_password)){
    //             $details = rand(1000,9999);
    //             $update_user = User::where('email',$check_email_password->email)->first();
    //             $update_user->otp = $details;
    //             if($update_user->save()){
    //                 Mail::to($email)->send(new \App\Mail\SendOTP($details));
    //                 $response = array('status'=>true,'message'=>'OTP has been sent to the registered email id','role'=>$check_email_password->role,'user_id'=>$update_user->id);
    //             }else{
    //                 $response = array('status'=>false,'message'=>'Something went wrong','user_id'=>'','role'=>'');
    //             }
    //         }else{
    //             $response = array('status'=>false,'message'=>'User email not match','user_id'=>'','role'=>'');
    //         }
    //     }else{
    //         $response = array('status'=>false,'message'=>'Input data missing','user_id'=>'','role'=>'');
    //     }
    //     return response()->json($response);

    // $partner_id = $request->partner_id;
    // $email = $request->user_email;
    // $partner_name = User::where('id',$partner_id)->first();
    // $details['user_name'] = $request->user_name;
    // $details['partner_name'] = $partner_name->name;
    // $details['amount'] = $request->amount;        
    // Mail::to($email)->send(new \App\Mail\SendPaymentReceipt($details));
    // $response = array('status'=>true ,'Suceess');
    // return response()->json($response);
    // }

    public function send_payment_receipt_mail(Request $request){
        $partner_id = $request->partner_id;
        $user_id = $request->user_id;
        $trip_id = $request->trip_id;
        $partner_name = User::where('id',$partner_id)->first();
        $trip_user_data = TripPeople::where('id',$user_id)->where('trip_id',$trip_id)->first();
        if(!empty($trip_user_data) && !empty($partner_name)){
            $details['user_name'] = $trip_user_data->name;
            $details['partner_name'] = $partner_name->name;
            $details['amount'] = $request->amount;
            Mail::to($trip_user_data->contacts_email)->send(new \App\Mail\SendPaymentReceipt($details));
            $response = array('status'=>true ,'message' => 'Suceess');
        }else{
            $response = array('status'=>false ,'message' => 'Something went wrong');
        }
        return response()->json($response);
    }

    /**************************************************************
     * POC Phase 2 Start
    *************************************************************/

    public function create_group(Request $request){
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();
        if(!empty($check_token)){
            $name = $request->name;
            $agent_id = $request->agent_id;
            if(!empty($agent_id) && !empty($name)){
                $last_group_id = Group::orderBy('id','DESC')->pluck('id')->first();
                $check_group_id = Group::where('agent_id',$agent_id)->first();
                $add = new Group;
                $add->group_code = rand(1,9).time().rand(1,9);
                $add->name = $name;
                $add->partner_id = $check_token->created_by;
                $add->agent_id = $agent_id;
                if(!empty($check_group_id))
                {
                    $add->default_status = 0;
                }else{
                    $add->default_status = 1;
                }
                if($add->save()){
                    $datas = Group::with('group_people_data')->where('id', $last_group_id+1)->first();
                    if(isset($datas->group_people_data)){
                        $datas['group_people_count'] = sizeof($datas->group_people_data);
                    }else{
                        $datas['group_people_count'] = 0;
                    }
                    $response = array('status'=>true ,'message' => 'Group created successfully','data'=>$datas);
                }else{
                    $response = array('status'=>false ,'message' => 'Something went wrong');
                }
            }else{
                $response = array('status'=>false ,'message' => 'some required field missing');
            }
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }

    public function group_list(Request $request){
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();
        if(!empty($check_token)){
            $agent_id = $request->agent_id;
            if(!empty($agent_id)){
                $group_list_data = array();
                $datas = Group::with('group_people_data')->where(['is_delete'=>0,'agent_id'=>$agent_id])->get();
                foreach($datas as $datas_group){
                    $data_gorup_obj['id'] = $datas_group->id;
                    $data_gorup_obj['group_code'] = $datas_group->group_code;
                    $data_gorup_obj['name'] = $datas_group->name;
                    $data_gorup_obj['partner_id'] = $datas_group->partner_id;
                    $data_gorup_obj['status'] = $datas_group->status;
                    $data_gorup_obj['is_delete'] = $datas_group->is_delete;
                    $data_gorup_obj['agent_id'] = $datas_group->agent_id;
                    $data_gorup_obj['default_status'] = $datas_group->default_status;
                    $data_gorup_obj['created_at'] = $datas_group->created_at;
                    $data_gorup_obj['updated_at'] = $datas_group->updated_at;
                    if(isset($datas_group->group_people_data)){
                        $data_gorup_obj['group_people_count'] = sizeof($datas_group->group_people_data);
                    }else{
                        $data_gorup_obj['group_people_count'] = 0;
                    }
                    array_push($group_list_data,$data_gorup_obj);
                }

                $response = array('status'=>true ,'data' => $group_list_data);
            }else{
                $response = array('status'=>false ,'message' => 'some required field missing');
            }
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }

    public function group_people_list(Request $request){
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();
        if(!empty($check_token)){
            $group_id = $request->group_id;
            if(!empty($group_id)){
                $datas = GroupPeople::with('group_people_details')->where(['group_id'=>$group_id])->get();
                $datas_array = array();
                foreach($datas as $group_people_data){
                    $new_data['id'] = $group_people_data->id;
                    $new_data['group_id'] = $group_people_data->group_id;
                    $new_data['group_code'] = $group_people_data->group_code;
                    $new_data['partner_id'] = $group_people_data->partner_id;
                    $new_data['people_code'] = $group_people_data->people_code;
                    $new_data['status'] = $group_people_data->status;
                    $new_data['partner_id'] = $group_people_data->partner_id;
                    $new_data['people_name'] = $group_people_data->group_people_details->name;
                    array_push($datas_array,$new_data);
                }
                $response = array('status'=>true ,'data' => $datas_array);
            }else{
                $response = array('status'=>false ,'message' =>'Some Required Field Missing');
            }
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }

    public function check_people(Request $request)
    {
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();
        if(!empty($check_token)){
            $people_code = $request->people_code;
            $group_id = $request->group_id;
            $group_code = $request->group_code;
            $agent_id = $request->agent_id;
            $check_group_people_data = GroupPeople::where('people_code',$people_code)->where('group_id',$group_id)->first();
            if(empty($check_group_people_data)){
                $trip_people = TripPeople::with('residence_countrys')->select('id','name','family_name','residence_country','residence_city','residence_post_code','contacts_email','contacts_phone','gender','trip_id')->where('people_id_code',$people_code)->first();
                $get_trip_count = TripPeople::where('id','!=',$trip_people->id)->where('trip_id',$trip_people->trip_id)->count();
                if($trip_people->residence_countrys->name){
                    $trip_people['residence_country'] = $trip_people->residence_countrys->name;
                }
                $trip_people['people_count'] = $get_trip_count;
                $trip_people['people_code'] = $people_code;
                
                if(!empty($trip_people)){
                    $response = array('status'=>true ,'message' => 'People verified Successfully','people_data'=>$trip_people,'people_count'=>$get_trip_count,'people_code'=>$people_code);
                }else{
                    $response = array('status'=>false ,'message' => 'People Not Found');
                }
            }else{
                $response = array('status'=>false ,'message' => 'People Already Exist');
            }
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }

    public function add_group_people(Request $request)
    {
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();
        if(!empty($check_token)){
            $type = $request->type;
            $people_code = $request->people_code;
            $group_id = $request->group_id;
            $group_code = $request->group_code;
            $agent_id = $request->agent_id;
            $trip_people = TripPeople::where('people_id_code',$people_code)->first();
            if(!empty($trip_people)){
                if($type == 'single'){
                    $check_group_people_data = GroupPeople::where('people_id',$trip_people->id)->where('group_id',$group_id)->first();
                    if(empty($check_group_people_data)){
                        $group_people = new GroupPeople;    
                        $group_people->people_id = $trip_people->id;
                        $group_people->people_code = $trip_people->people_id_code;
                        $group_people->group_id = $group_id;
                        $group_people->group_code = $group_code;
                        $group_people->partner_id = $agent_id;
                        if($group_people->save()){
                            $response = array('status'=>true ,'message' => 'People Added Successfully');
                        }else{
                            $response = array('status'=>false ,'message' => 'Something Went Wrong');
                        }
                    }else{
                        $response = array('status'=>false ,'message' => 'People Already Exist');
                    }
                }else{
                    $get_trip_data = TripPeople::where('trip_id',$trip_people->trip_id)->get();
                    foreach($get_trip_data as $get_trip_datas){
                        $check_group_people_data = GroupPeople::where('people_id',$get_trip_datas->id)->where('group_id',$group_id)->first();
                        if(empty($check_group_people_data)){
                            $group_people = new GroupPeople;
                            $group_people->people_id = $get_trip_datas->id;
                            $group_people->people_code = $get_trip_datas->people_id_code;
                            $group_people->group_id = $group_id;
                            $group_people->group_code = $group_code;
                            $group_people->partner_id = $agent_id;
                            $group_people->save();                            
                        }
                    }
                    $response = array('status'=>true ,'message' => 'People Added Successfully');
                }
            }else{
                $response = array('status'=>false ,'message' => 'People Not Found');
            }
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }
    
    public function edit_group_people(Request $request)
    {
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();
        if(!empty($check_token)){
            $people_code = $request->people_code;
            $group_id = $request->group_id;
            $group_code = $request->group_code;
            $group_people_id = $request->group_people_id;
            $agent_id = $request->agent_id;
            $trip_people = TripPeople::where('people_id_code',$people_code)->first();
            if(!empty($trip_people)){
                $check_group_people_data = GroupPeople::where('id','!=',$group_people_id)->where('people_id',$trip_people->id)->where('group_id',$group_id)->first();
                if(empty($check_group_people_data)){
                    $group_people = GroupPeople::where('id',$group_people_id)->first();
                    $group_people->people_id = $trip_people->id;
                    $group_people->people_code = $trip_people->people_id_code;
                    $group_people->group_id = $group_id;
                    $group_people->group_code = $group_code;
                    $group_people->partner_id = $agent_id;
                    if($group_people->save()){
                        $response = array('status'=>true ,'message' => 'People Added Successfully');
                    }else{
                        $response = array('status'=>false ,'message' => 'Something Went Wrong');
                    }
                }else{
                    $response = array('status'=>false ,'message' => 'People Already Exist');
                }
            }else{
                $response = array('status'=>false ,'message' => 'People Not Found');
            }
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }

    public function change_status_group_people(Request $request)
    {
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();
        if(!empty($check_token)){
            $people_code = $request->people_code;
            $group_id = $request->group_id;
            $group_code = $request->group_code;
            $group_people_id = $request->group_people_id;
            $trip_people = TripPeople::where('people_id_code',$people_code)->first();
            if(!empty($group_people_id)){
                $group_people = GroupPeople::where('id',$group_people_id)->first();
                if($group_people->status == 0){
                    $group_people->status = 1;
                }else{
                    $group_people->status = 0;
                }
                if($group_people->save()){
                    $response = array('status'=>true ,'message' => 'Status Updated Successfully');
                }else{
                    $response = array('status'=>false ,'message' => 'Something Went Wrong');
                }
            }else{
                $response = array('status'=>false ,'message' => 'ID Not Found');
            }
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }

    public function edit_group(Request $request){
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();

        if(!empty($check_token)){
            $name = $request->name;
            $group_id = $request->group_id;
            if(!empty($name)){
                $last_group_id = Group::orderBy('id', 'DESC')->pluck('id')->first();
                $add = Group::where('id',$group_id)->first();
                $add->name = $name;
                if($add->save()){
                    $datas = Group::where('id', $group_id)->first();
                    $response = array('status'=>true ,'message' => 'Group updated successfully','data'=>$datas);
                }else{
                    $response = array('status'=>false ,'message' => 'Something went wrong');
                }
            }else{
                $response = array('status'=>false ,'message' => 'some required field missing');
            }
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }

    public function delete_group(Request $request){
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();
        if(!empty($check_token)){
            $group_id = $request->group_id;
            if(!empty($group_id)){
                $add = Group::where('id',$group_id)->first();
                $add->is_delete = 1;
                if($add->save()){
                    $datas = Group::where('id', $group_id)->first();
                    $response = array('status'=>true ,'message' => 'Group deleted successfully');
                }else{
                    $response = array('status'=>false ,'message' => 'Something went wrong');
                }
            }else{
                $response = array('status'=>false ,'message' => 'Group id missing');
            }
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }

    public function delete_group_people(Request $request){
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();
        if(!empty($check_token)){
            $group_people_id = $request->group_people_id;
            if(!empty($group_people_id)){
                $group_people = GroupPeople::where('id',$group_people_id)->first();
                if($group_people->delete()){
                    $response = array('status'=>true ,'message' => 'Group people deleted successfully');
                }else{
                    $response = array('status'=>false ,'message' => 'Something Went Wrong');
                }
            }else{
                $response = array('status'=>false ,'message' => 'ID Not Found');
            }
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }

    public function make_as_default_status(Request $request){
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();
        if(!empty($check_token)){
            $group_id = $request->group_id;
            if(!empty($group_id)){
                $check_data_update = Group::where(['agent_id'=>$request->header('id'),'default_status'=>1])->first();
                if(!empty($check_data_update)){
                    $check_data_update->default_status = 0;
                    if($check_data_update->save()){
                        $check_data = Group::where('id',$group_id)->first();
                        $check_data->default_status = 1;
                        if($check_data->save()){
                            $response = array('status'=>true ,'message' => 'Group Updated Successfully');
                        }else{
                            $response = array('status'=>false ,'message' => 'Something went wrong');
                        }
                    }else{
                        $response = array('status'=>false,'message'=>'Something went wrong');
                    }
                }else{
                    $check_data = Group::where('id',$group_id)->first();
                    $check_data->default_status = 1;
                    if($check_data->save()){
                        $response = array('status'=>true ,'message' => 'Group Updated Successfully');
                    }else{
                        $response = array('status'=>false ,'message' => 'Something went wrong');
                    }
                }
            }else{
                $response = array('status'=>false ,'message' => 'Group id missing');
            }
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }

    public function agent_place_list(Request $request){
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();
        if(!empty($check_token)){
            $user_places = User::where('id',$request->header('id'))->pluck('created_by');
            $places = UserPlaces::whereIn('user_id',$user_places)->pluck('place_id');
            $user_places_data = Places::select('id','Name','Category','Attraction_Type','Region','Rayon','City')->whereIn('id',$places)->get();
            $response = array('status'=>true ,'data' => $user_places_data);
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }

    public function agent_place_details(Request $request){
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();
        if(!empty($check_token)){
            $place_id = $request->place_id;
            if(!empty($place_id)){
                $user_places_data = Places::where('id',$place_id)->first();
                if(!empty($user_places_data->image)){
                    $user_places_data['image'] = asset('place_image/'.$user_places_data->image);
                }else{
                    $user_places_data['image'] = asset('image.jpg');
                }
                $response = array('status'=>true ,'data' => $user_places_data);
            }else{
                $response = array('status'=>false ,'message' => 'Place id not found');
            }
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }

    public function people_individual_check_in(Request $request){
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();
        if(!empty($check_token)){
            $people_code = $request->people_code;
            $place_id = $request->place_id;
            $trip_people = TripPeople::where('people_id_code',$people_code)->first();
            if(!empty($trip_people)){
                $check_in_check_data = CheckIn::where('people_code',$people_code)->where('place_id',$place_id)->first();
                if(!empty($place_id)){
                    $check_in = new CheckIn;
                    $check_in->people_id = $trip_people->id;
                    $check_in->people_code = $people_code;
                    $check_in->place_id = $place_id;
                    $check_in->agent_id = $request->header('id');
                    if($check_in->save()){
                        $response = array('status'=>true ,'message' => 'People check-in successfully');
                    }else{
                        $response = array('status'=>false ,'message' => 'Something went wrong');
                    }
                }else{
                    $response = array('status'=>false ,'message' => 'Place id not found');
                }
            }else{
                $response = array('status'=>false ,'message' => 'People Not Found');
            }
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }

    public function check_people_check_in(Request $request){
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();
        if(!empty($check_token)){
            $people_code = $request->people_code;
            $trip_people = TripPeople::with('residence_countrys')->select('id','name','family_name','residence_country','residence_city','residence_post_code','contacts_email','contacts_phone','gender','trip_id')->where('people_id_code',$people_code)->first();
            if(!empty($trip_people)){
                if($trip_people->residence_countrys->name){
                    $trip_people['residence_country'] = $trip_people->residence_countrys->name;
                }
                $response = array('status'=>true ,'message' => 'People verified Successfully','people_data'=>$trip_people,'people_code'=>$people_code);
            }else{
                $response = array('status'=>false ,'message' => 'People Not Found');
            }
            
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }

    public function people_group_check_in(Request $request){
        $check_token = User::where('id',$request->header('id'))->where('api_token',$request->header('token'))->first();
        if(!empty($check_token)){
            $group_id = $request->group_id;
            $place_id = $request->place_id;

            $group_people_datas = GroupPeople::where('status',1)->where('group_id',$group_id)->get();
            if(sizeof($group_people_datas) > 0){
                foreach($group_people_datas as $group_people_data){
                    $check_in = new CheckIn;
                    $check_in->people_id = $group_people_data->people_id;
                    $check_in->people_code = $group_people_data->people_code;
                    $check_in->place_id = $place_id;
                    $check_in->agent_id = $request->header('id');
                    $check_in->save();

                }
                $group_logs = new GroupLogs;
                $group_logs->group_id = $group_id;
                $group_logs->agent_id = $request->header('id');
                $group_logs->save();
                $response = array('status'=>true ,'message' => 'Group check-in successfully');
            }else{
                $response = array('status'=>false ,'message' => 'In this group people not found');
            }
        }else{
            $response = array('status'=>false ,'message' => 'Access Denied');
        }
        return response()->json($response);
    }
}