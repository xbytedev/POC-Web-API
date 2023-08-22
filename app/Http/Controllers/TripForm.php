<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RegisterUser;
use App\Models\Trip;
use App\Models\TripPeople;
use App\Models\Country;
use App\Models\TripFormModel;

class TripForm extends Controller
{
   public function trip_form()
   {
      $country = Country::all();
      return view('trip_form',compact('country'));
   }
   
   public function insert_user_feedback(Request $request){

      $check_data = TripFormModel::where('user_id',$request->user_id)->where('trip_id',$request->trip_id)->where('user_type',$request->user_type)->first();
      if(empty($check_data)){
         $add = new TripFormModel;
         $add->user_id = $request->user_id;
         $add->trip_id = $request->trip_id;
         $add->user_type = $request->user_type;
         $add->hotels_camping_w_t_amt = $request->hotels_camping_w_t_amt;
         $add->hotels_camping_w_t_amt_t = $request->hotels_camping_w_t_amt_t;
         $add->restaurants_and_bars_w_t_amt_t = $request->restaurants_and_bars_w_t_amt_t;
         $add->transportation_in_country_w_t_amt_t = $request->transportation_in_country_w_t_amt_t;
         $add->entertainment_cultural_w_t_amt_t = $request->entertainment_cultural_w_t_amt_t;
         $add->purchases_and_other_expenditure_w_t_amt_t = $request->purchases_and_other_expenditure_w_t_amt_t;
         $add->a_two_w_t_c_c_f_t_l_a = $request->a_two_w_t_c_c_f_t_l_a;
         $add->hotels_camping_w_t_c_code = $request->hotels_camping_w_t_c_code;
         $add->hotels_camping_estimate_t_r_c = $request->hotels_camping_estimate_t_r_c;
         $add->restaurants_and_bars_w_t_amt = $request->restaurants_and_bars_w_t_amt;
         $add->restaurants_and_bars_w_t_c_code = $request->restaurants_and_bars_w_t_c_code;
         $add->restaurants_and_bars_t_r_c = $request->restaurants_and_bars_t_r_c;
         $add->transportation_in_country_w_t_amt = $request->transportation_in_country_w_t_amt;
         $add->transportation_in_country_w_t_c_code = $request->transportation_in_country_w_t_c_code;
         $add->transportation_in_country_t_r_c = $request->transportation_in_country_t_r_c;
         $add->entertainment_cultural_w_t_amt = $request->entertainment_cultural_w_t_amt;
         $add->entertainment_cultural_w_t_c_code = $request->entertainment_cultural_w_t_c_code;
         $add->entertainment_cultural_t_r_c = $request->entertainment_cultural_t_r_c;
         $add->purchases_and_other_expenditure_w_t_amt = $request->purchases_and_other_expenditure_w_t_amt;
         $add->purchases_and_other_expenditure_w_t_c_code = $request->purchases_and_other_expenditure_w_t_c_code;
         $add->purchases_and_other_expenditure_t_r_c = $request->purchases_and_other_expenditure_t_r_c;
         $add->a_one_country_overall_w_t_amt = $request->a_one_country_overall_w_t_amt;
         $add->a_two_w_t_c = $request->a_two_w_t_c;
         $add->one_traveller_and_trip_country = $request->one_traveller_and_trip_country;
         $add->one_traveller_and_trip_country_code = $request->one_traveller_and_trip_country_code;
         $add->two_one_what_was_the_main_traveller_and_trip = $request->two_one_what_was_the_main_traveller_and_trip;
         $add->two_two_family_visit_traveller_and_trip = $request->two_two_family_visit_traveller_and_trip;
         $add->two_three_question_two_is_code_traveller_and_trip = $request->two_three_question_two_is_code_traveller_and_trip;
         $add->two_for_WRITE_THE_NUMBER_OF_NIGHTS_traveller_and_trip = $request->two_for_WRITE_THE_NUMBER_OF_NIGHTS_traveller_and_trip;
         $add->two_for_number_of_overnigh_traveller_and_trip = $request->two_for_number_of_overnigh_traveller_and_trip;
         $add->please_hotel_overnight_in_this_trip = $request->please_hotel_overnight_in_this_trip;
         $add->number_of_night_hotel_overnight_in_this_trip = $request->number_of_night_hotel_overnight_in_this_trip;
         $add->please_rented_room_overnight_in_this_trip = $request->please_rented_room_overnight_in_this_trip;
         $add->number_of_night_rented_room_overnight_in_this_trip = $request->number_of_night_rented_room_overnight_in_this_trip;
         $add->please_my_own_house_overnight_in_this_trip = $request->please_my_own_house_overnight_in_this_trip;
         $add->number_of_night_my_own_house_overnight_in_this_trip = $request->number_of_night_my_own_house_overnight_in_this_trip;
         $add->please_with_relatives_overnight_in_this_trip = $request->please_with_relatives_overnight_in_this_trip;
         $add->number_of_night_with_relatives_overnight_in_this_trip = $request->number_of_night_with_relatives_overnight_in_this_trip;
         $add->please_i_was_camping_overnight_in_this_trip = $request->please_i_was_camping_overnight_in_this_trip;
         $add->number_of_night_i_was_camping_overnight_in_this_trip = $request->number_of_night_i_was_camping_overnight_in_this_trip;
         $add->please_private_cruiser_overnight_in_this_trip = $request->please_private_cruiser_overnight_in_this_trip;
         $add->number_of_night_private_cruiser_overnight_in_this_trip = $request->number_of_night_private_cruiser_overnight_in_this_trip;
         $add->please_cruise_liner_overnight_in_this_trip = $request->please_cruise_liner_overnight_in_this_trip;
         $add->number_of_night_cruise_liner_overnight_in_this_trip = $request->number_of_night_cruise_liner_overnight_in_this_trip;
         $add->please_hospital_overnight_in_this_trip = $request->please_hospital_overnight_in_this_trip;
         $add->number_of_night_hospital_overnight_in_this_trip = $request->number_of_night_hospital_overnight_in_this_trip;
         $add->please_other_overnight_in_this_trip = $request->please_other_overnight_in_this_trip;
         $add->number_of_night_other_overnight_in_this_trip = $request->number_of_night_other_overnight_in_this_trip;
         $add->six_TRAVELLED_ALONE = $request->six_TRAVELLED_ALONE;
         $add->six_travelled_with_other = $request->six_travelled_with_other;
         $add->c_did_you_make_any_payment = $request->c_did_you_make_any_payment;
         $add->c_which_services_you_paid = $request->c_which_services_you_paid;
         $add->c_which_of_these_services = $request->c_which_of_these_services;
         $add->c_solely_for_the_tickets_w_t_amt = $request->c_solely_for_the_tickets_w_t_amt;
         $add->c_solely_for_the_tickets_w_t_currency = $request->c_solely_for_the_tickets_w_t_currency;
         $add->total_before_your_departure_w_t_amt = $request->total_before_your_departure_w_t_amt;
         $add->total_before_your_departure_w_t_currency = $request->total_before_your_departure_w_t_currency;
         $add->during_your_stay_w_t_amt = $request->during_your_stay_w_t_amt;
         $add->during_your_stay_w_t_currency = $request->during_your_stay_w_t_currency;
         $add->c_accommodation_split_the_money_you_spent_w_t_amt = $request->c_accommodation_split_the_money_you_spent_w_t_amt;
         $add->c_accommodation_split_the_money_you_spent_w_t_currency = $request->c_accommodation_split_the_money_you_spent_w_t_currency;
         $add->c_accommodation_split_the_money_you_spent_e_t_p = $request->c_accommodation_split_the_money_you_spent_e_t_p;
         $add->c_restaurants_split_the_money_you_spent_w_t_amt = $request->c_restaurants_split_the_money_you_spent_w_t_amt;
         $add->c_restaurants_split_the_money_you_spent_w_t_currency = $request->c_restaurants_split_the_money_you_spent_w_t_currency;
         $add->c_restaurants_split_the_money_you_spent_e_t_p = $request->c_restaurants_split_the_money_you_spent_e_t_p;
         $add->c_transportation_split_the_money_you_spent_w_t_amt = $request->c_transportation_split_the_money_you_spent_w_t_amt;
         $add->c_transportation_split_the_money_you_spent_w_t_currency = $request->c_transportation_split_the_money_you_spent_w_t_currency;
         $add->c_transportation_split_the_money_you_spent_e_t_p = $request->c_transportation_split_the_money_you_spent_e_t_p;
         $add->c_entertainment_split_the_money_you_spent_w_t_amt = $request->c_entertainment_split_the_money_you_spent_w_t_amt;
         $add->c_entertainment_split_the_money_you_spent_w_t_currency = $request->c_entertainment_split_the_money_you_spent_w_t_currency;
         $add->c_entertainment_split_the_money_you_spent_e_t_p = $request->c_entertainment_split_the_money_you_spent_e_t_p;
         $add->c_purchases_split_the_money_you_spent_w_t_amt = $request->c_purchases_split_the_money_you_spent_w_t_amt;
         $add->c_purchases_split_the_money_you_spent_w_t_currency = $request->c_purchases_split_the_money_you_spent_w_t_currency;
         $add->c_purchases_split_the_money_you_spent_e_t_p = $request->c_purchases_split_the_money_you_spent_e_t_p;
         $add->e_overall_including_w_t_amt = $request->e_overall_including_w_t_amt;
         $add->e_overall_including_w_t_currency = $request->e_overall_including_w_t_currency;
         $add->e_column_two_no_of_night_stays_1 = $request->e_column_two_no_of_night_stays_1;
         $add->e_column_two_no_of_night_stays_2 = $request->e_column_two_no_of_night_stays_2;
         $add->e_column_two_no_of_night_stays_3 = $request->e_column_two_no_of_night_stays_3;
         $add->e_column_two_no_of_night_stays_4 = $request->e_column_two_no_of_night_stays_4;
         $add->e_column_two_no_of_night_stays_5 = $request->e_column_two_no_of_night_stays_5;
         $add->e_column_two_no_of_night_stays_6 = $request->e_column_two_no_of_night_stays_6;
         $add->e_column_two_no_of_night_stays_7 = $request->e_column_two_no_of_night_stays_7;
         $add->e_column_two_no_of_night_stays_8 = $request->e_column_two_no_of_night_stays_8;
         $add->e_column_two_no_of_night_stays_9 = $request->e_column_two_no_of_night_stays_9;
         $add->e_column_two_no_of_night_stays_10 = $request->e_column_two_no_of_night_stays_10;
         $add->e_column_two_no_of_night_stays_11 = $request->e_column_two_no_of_night_stays_11;
         $add->e_column_two_no_of_night_stays_12 = $request->e_column_two_no_of_night_stays_12;
         $add->e_column_two_no_of_night_stays_13 = $request->e_column_two_no_of_night_stays_13;
         $add->e_column_three_expenditure_estimation_1 = $request->e_column_three_expenditure_estimation_1;
         $add->e_column_three_expenditure_estimation_2 = $request->e_column_three_expenditure_estimation_2;
         $add->e_column_three_expenditure_estimation_3 = $request->e_column_three_expenditure_estimation_3;
         $add->e_column_three_expenditure_estimation_4 = $request->e_column_three_expenditure_estimation_4;
         $add->e_column_three_expenditure_estimation_5 = $request->e_column_three_expenditure_estimation_5;
         $add->e_column_three_expenditure_estimation_6 = $request->e_column_three_expenditure_estimation_6;
         $add->e_column_three_expenditure_estimation_7 = $request->e_column_three_expenditure_estimation_7;
         $add->e_column_three_expenditure_estimation_8 = $request->e_column_three_expenditure_estimation_8;
         $add->e_column_three_expenditure_estimation_9 = $request->e_column_three_expenditure_estimation_9;
         $add->e_column_three_expenditure_estimation_10 = $request->e_column_three_expenditure_estimation_10;
         $add->e_column_three_expenditure_estimation_11 = $request->e_column_three_expenditure_estimation_11;
         $add->e_column_three_expenditure_estimation_12 = $request->e_column_three_expenditure_estimation_12;
         $add->e_column_three_expenditure_estimation_13 = $request->e_column_three_expenditure_estimation_13;
         $add->e_luxury_goods_w_t_amt = $request->e_luxury_goods_w_t_amt;
         $add->e_luxury_goods_w_t_currency = $request->e_luxury_goods_w_t_currency;
         $add->please_fill_in_rating_a_i_c = $request->please_fill_in_rating_a_i_c;
         $add->please_fill_in_rating_r_a_b_i_c = $request->please_fill_in_rating_r_a_b_i_c;
         $add->please_fill_in_rating_t_i_c = $request->please_fill_in_rating_t_i_c;
         $add->please_fill_in_rating_e_c_s_a_i_c = $request->please_fill_in_rating_e_c_s_a_i_c;
         $add->please_fill_in_rating_p_a_s_i_c = $request->please_fill_in_rating_p_a_s_i_c;
         $add->please_fill_in_rating_p_s_i_c = $request->please_fill_in_rating_p_s_i_c;
         $add->please_fill_in_rating_o = $request->please_fill_in_rating_o;
         $add->any_comments = $request->any_comments;
         if($add->save()){
            session()->flash('success','Thank you for the feedback and support');
            return redirect()->back();
         }else{
            session()->flash('error','Something went wrong');
            return redirect()->back();
         }
      }else{
         session()->flash('error','Your feedback already exists');
         return redirect()->back();
      }
   }

   public function admin_view_feedback_data(){
      $feedback = TripFormModel::with('trips','user_only','create_bys')->get();
      return view('admin.admin_trip_form',compact('feedback'));
   }

   public function admin_view_feedback_details_data($id){
      $feedback = TripFormModel::where('id',$id)->with('trips','user_only','create_bys')->first();
      $country = Country::all();
      return view('admin.view_feedback_details',compact('feedback','country'));
   }  
}