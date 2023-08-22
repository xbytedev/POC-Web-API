@extends('component.master')

@section('styles') @parent

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet" type="text/css"/>

<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>

@endsection

@section('title','Feedback Details')

@section('content')

@if ($errors->any())

    <div class="alert alert-danger">

        <ul>

            @foreach($errors->all() as $error)

                <li>{{ $error }}</li>

            @endforeach

        </ul>

    </div>

@endif

@if(Session::has('success'))

    <div class="alert">

        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>

        {{Session::get('success')}}

    </div>

@endif

@if(Session::has('error'))

    <div class="alert alert-danger alert-dismissible fade show" role="alert">

        <strong>{{ Session::get('error') }}</strong>

    <button type="button" class="close" data-dismiss="alert" aria-label="Close">

        <span aria-hidden="true">&times;</span>

    </button>
    </div>
@endif


<div class="container">
    <div class="card">
        <div class="card-body">

            @if(Session::has('success'))

                <div class="alert alert-primary">

                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>

                <strong>{{Session::get('success')}}</strong>

                </div>

            @endif

            @if(Session::has('error'))

                <div class="alert alert-danger alert-dismissible fade show" role="alert">

                    <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>

                    <strong>{{ Session::get('error') }}</strong>

                    </button>

                </div>
            @endif

            <div class="form-group">
                <h6>How much money did you spend for this trip to Country overall, including the expenses made in your country and the expenses made.</h6>
                <div class="row">
                    <div class="col-md-4">
                        <label for="">WRITE THE AMOUNT</label>
                        <input class="form-control" type="number" name="a_one_country_overall_w_t_amt" id="WRITE_THE_AMOUNT" placeholder="WRITE THE AMOUNT" value="{{$feedback->a_one_country_overall_w_t_amt}}"><br>
                    </div>
                    <div class="col-md-4">
                        <label for="">WRITE THE CURRENCY</label>
                        <input class="form-control" type="text" value="{{$feedback->a_two_w_t_c}}" name="a_two_w_t_c" id="WRITE_THE_CURRENCY" placeholder="WRITE THE CURRENCY"><br>
                    </div>
                    
                    <div class="col-md-4">
                        <label for="">WRITE THE CURRENCY CODE FROM THE LIST ATTACHED (PAGE 7)</label>
                        <input class="form-control" value="{{$feedback->a_two_w_t_c_c_f_t_l_a}}" type="text" name="a_two_w_t_c_c_f_t_l_a" id="WRITE_THE_CURRENCY" placeholder="WRITE THE CURRENCY CODE FROM THE LIST ATTACHED (PAGE 7)"><br>
                    </div>
                </div>
            </div>
            <table class="table border">
                <thead class="border">
                    <tr class="border">
                        <th class="border" scope="col">#</th>
                        <th class="border" scope="col">WRITE THE AMOUNT</th>
                        <th class="border" scope="col">WRITE THE % OF THE TOTAL</th>
                        <th class="border" scope="col">ESTIMATE THE PERCENTAGE (%) CORRESPONDING TO EACH CATEGORY IN COUNTRY X IN RELATION TO THE TOTAL OF THE CATEGORY</th>
                        <th class="border" scope="col">ESTIMATE THE PERCENTAGE (%) CORRESPONDING TO EACH CATEGORY IN YOUR COUNTRY OF RESIDENCE IN RELATION TO THE TOTAL OF THE CATEGORY</th>
                    </tr>
                </thead>
                <tbody class="border">
                    <tr class="border">
                        <th scope="row" class="border">Accommodation in Country - Hotels, camping, rented rooms, youth hostels, staying in boats, trains etc.</th>
                        <td class="border"><input type="number" class="form-control" value="{{$feedback->hotels_camping_w_t_amt}}" name="hotels_camping_w_t_amt"></td>
                        <td class="border"><input type="number" class="form-control" name="hotels_camping_w_t_amt_t" value="{{$feedback->hotels_camping_w_t_amt_t}}"></td>
                        <td class="border"><input type="text" class="form-control" value="{{$feedback->hotels_camping_w_t_c_code}}" name="hotels_camping_w_t_c_code"></td>
                        <td class="border"><input type="    " class="form-control" value="{{$feedback->hotels_camping_estimate_t_r_c}}" name="hotels_camping_estimate_t_r_c"></td>
                    </tr>
                    <tr class="border">
                        <th scope="row" class="border">Restaurants and Bars in Country For any reason (to eat, for business, for pleasure etc.)</th>
                        <td class="border"><input type="number" class="form-control" value="{{$feedback->restaurants_and_bars_w_t_amt}}" name="restaurants_and_bars_w_t_amt"></td>
                        <td class="border"><input type="number" class="form-control" name="restaurants_and_bars_w_t_amt_t" value="{{$feedback->restaurants_and_bars_w_t_amt_t}}"></td>
                        <td class="border"><input type="text" class="form-control" value="{{$feedback->restaurants_and_bars_w_t_c_code}}" name="restaurants_and_bars_w_t_c_code"></td>
                        <td class="border"><input type="number" class="form-control" value="{{$feedback->restaurants_and_bars_t_r_c}}" name="restaurants_and_bars_t_r_c"></td>
                    </tr>
                    <tr class="border">
                        <th scope="row" class="border">Transportation in Country  - (by train, by car, by boat, by plane, rent a car, gastolls, etc.)</th>
                        <td class="border"><input type="number" class="form-control" value="{{$feedback->transportation_in_country_w_t_amt}}" name="transportation_in_country_w_t_amt"></td>
                        <td class="border"><input type="number" class="form-control" name="transportation_in_country_w_t_amt_t" value="{{$feedback->transportation_in_country_w_t_amt_t}}"></td>
                        <td class="border"><input type="text" class="form-control" value="{{$feedback->transportation_in_country_w_t_c_code}}" name="transportation_in_country_w_t_c_code"></td>
                        <td class="border"><input type="number" class="form-control" value="{{$feedback->transportation_in_country_t_r_c}}" name="transportation_in_country_t_r_c"></td>
                    </tr>
                    <tr class="border">
                        <th scope="row" class="border">Entertainment, Cultural & Sports Activities in Country - (visiting museums, cultural events, sports activities, parks, zoos, historical monuments, games etc.)</th>
                        <td class="border"><input type="number" class="form-control" value="{{$feedback->entertainment_cultural_w_t_amt}}" name="entertainment_cultural_w_t_amt"></td>
                        <td class="border"><input type="number" class="form-control" name="entertainment_cultural_w_t_amt_t" value="{{$feedback->entertainment_cultural_w_t_amt_t}}"></td>
                        <td class="border"><input type="text" class="form-control" value="{{$feedback->entertainment_cultural_w_t_c_code}}" name="entertainment_cultural_w_t_c_code"></td>
                        <td class="border"><input type="number" class="form-control" value="{{$feedback->entertainment_cultural_t_r_c}}" name="entertainment_cultural_t_r_c"></td>
                    </tr>
                    <tr class="border">
                        <th scope="row" class="border">Purchases and other expenditure in Country  - (purchasing of goods & services ex. packaged food, drinks, personal care, souvenirs, clothes, shoes etc, phone calls, post, commission for exchanging money, etc.)</th>
                        <td class="border"><input type="number" class="form-control" value="{{$feedback->purchases_and_other_expenditure_w_t_amt}}" name="purchases_and_other_expenditure_w_t_amt"></td>
                        <td class="border"><input type="number" class="form-control" name="purchases_and_other_expenditure_w_t_amt_t" value="{{$feedback->purchases_and_other_expenditure_w_t_amt_t}}"></td>
                        <td class="border"><input type="text" class="form-control" value="{{$feedback->purchases_and_other_expenditure_w_t_c_code}}" name="purchases_and_other_expenditure_w_t_c_code"></td>
                        <td class="border"><input type="number" class="form-control" value="{{$feedback->purchases_and_other_expenditure_t_r_c}}" name="purchases_and_other_expenditure_t_r_c"></td>
                    </tr>
                     <tfoot class="border">
                        <tr class="border">
                            <th scope="row" class="border">TOTAL AGGREGATE</th>
                            <td class="border">{{$feedback->hotels_camping_w_t_amt+$feedback->restaurants_and_bars_w_t_amt+$feedback->transportation_in_country_w_t_amt+$feedback->entertainment_cultural_w_t_amt+$feedback->purchases_and_other_expenditure_w_t_amt}}</td>
                            <td class="border">{{$feedback->hotels_camping_w_t_amt_t+$feedback->restaurants_and_bars_w_t_amt_t+$feedback->transportation_in_country_w_t_amt_t+$feedback->entertainment_cultural_w_t_amt_t+$feedback->purchases_and_other_expenditure_w_t_amt_t}}</td>
                            <td class="border">-</td>
                            <td class="border">{{$feedback->hotels_camping_estimate_t_r_c+$feedback->restaurants_and_bars_t_r_c+$feedback->transportation_in_country_t_r_c+$feedback->entertainment_cultural_t_r_c+$feedback->purchases_and_other_expenditure_t_r_c}}</td>
                        </tr>
                    </tfoot>
                </tbody>
            </table>
        </div>
    </div>
</div>
<br>
<!-- <div class="container">
    <div class="card">
        <div class="card-header">
            <h5>A. Total expenses for this trip in Country and in your country</h5>
        </div>
        <div class="card-body">
            <div class="form-group">
                <h6>How much money did you spend for this trip to Country overall, including the expenses made in your country and the expenses made.</h6>
                <div class="row">
                    <div class="col-md-6">
                        <label class="ml-3" for="">WRITE THE AMOUNT</label>
                        <input class="form-control" type="number" value="{{$feedback->a_one_country_overall_w_t_amt}}" name="a_one_country_overall_w_t_amt" id="WRITE_THE_AMOUNT" placeholder="WRITE THE AMOUNT"><br>
                    </div>
                    <div class="col-md-6">
                        <label class="ml-3" for="">WRITE THE CURRENCY</label>
                        <input class="form-control" type="text" value="{{$feedback->a_two_w_t_c}}" name="a_two_w_t_c" id="WRITE_THE_CURRENCY" placeholder="WRITE THE CURRENCY"><br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> -->
<br>
<div class="container">
    <div class="card">
        <div class="card-header">
            <h5>B. Traveller and Trip Information</h5>
        </div>
        <div class="card-body">
            <div class="form-group">
                <h6>The country of your permanent residence</h6>
                <div class="row">
                    <div class="col-md-6">
                        <label class="ml-3" for="">COUNTRY</label>
                            @foreach($country as $country_data)
                                @if($feedback->one_traveller_and_trip_country == $country_data->id)
                                    <input class="form-control" type="text" value="{{$country_data->name}}" name="one_traveller_and_trip_country" id="COUNTRY" placeholder="COUNTRY" readonly><br>
                                @endif
                            @endforeach
                        
                    </div>
                    <div class="col-md-6">
                        <label class="ml-3" for="">COUNTRY CODE</label>
                        <input class="form-control" type="text" value="{{$feedback->one_traveller_and_trip_country_code}}" name="one_traveller_and_trip_country_code" id="COUNTRY_CODE" placeholder="COUNTRY CODE" readonly><br>
                    </div>
                </div>
            </div>
            <h6>1) What was the main purpose for your trip to Country </h6>
            <div class="form-group">
                <label class="ml-3">PLEASE TICK () ONE BOX</label><br>
                <b>1) Holidays / Recreation</b><br>
                <input class="form-check-input" type="radio" value="Studies" @if($feedback->two_one_what_was_the_main_traveller_and_trip == 'Studies') checked @endif name="two_one_what_was_the_main_traveller_and_trip" id="holidays2" checked> <label class="ml-3" for="">A) Studies / lessons / seminars</label> <br>
                <input class="form-check-input" type="radio" value="Health reasons" @if($feedback->two_one_what_was_the_main_traveller_and_trip == 'Health reasons') checked @endif name="two_one_what_was_the_main_traveller_and_trip" id="holidays2"> <label class="ml-3" for="">B) Health reasons/ medical reasons</label>
            </div>

            <div class="form-group">
                <b>2) Family visit/ friends</b><br>
                <input class="form-check-input" type="radio" value="Professional reasons" @if($feedback->two_two_family_visit_traveller_and_trip == 'Professional reasons') checked @endif name="two_two_family_visit_traveller_and_trip" id="family_visit" checked> <label class="ml-3" for="">C) Professional reasons/ Business</label> <br>
                <input class="form-check-input" type="radio" value="Other reasons" @if($feedback->two_two_family_visit_traveller_and_trip == 'Other reasons') checked @endif name="two_two_family_visit_traveller_and_trip" id="family_visit"> <label class="ml-3" for="">D) Other reasons</label> <br>
                <input class="form-check-input" type="radio" value="Transit" @if($feedback->two_two_family_visit_traveller_and_trip == 'Transit') checked @endif name="two_two_family_visit_traveller_and_trip" id="family_visit"> <label class="ml-3" for="">E) Transit</label> <br>
            </div>
        <br>
        <h6>2) If your answer in Question 2 is Code 5 (professional reasons/work), please specify.</h6>
            <div class="form-group">
                <label class="ml-3">PLEASE NOTE () ONE ANSWER</label><br>
                <input class="form-check-input" type="radio" value="hort business trip" @if($feedback->two_three_question_two_is_code_traveller_and_trip == 'hort business trip') checked @endif name="two_three_question_two_is_code_traveller_and_trip" id="is_code2" checked> <label class="ml-3" for="">F) Short business trip (consulting services, commercial transactions, conferences and other business reasons</label> <br>
                <input class="form-check-input" type="radio" value="tourist season" @if($feedback->two_three_question_two_is_code_traveller_and_trip == 'tourist season') checked @endif name="two_three_question_two_is_code_traveller_and_trip" id="is_code2"> <label class="ml-3" for="">G) I work in Country X seasonally (tourist season, agricultural activities, construction projects, etc.)</label><br>
                <input class="form-check-input" type="radio" value="permanently and return" @if($feedback->two_three_question_two_is_code_traveller_and_trip == 'permanently and return') checked @endif name="two_three_question_two_is_code_traveller_and_trip" id="is_code2"> <label class="ml-3" for="">H) I work in Country X permanently and return home every day/ week/ month</label>
            </div>
            <br>
            <!-- <h6>4) What was the total number of overnight stays in Country on this trip?</h6>
            <div class="form-group">
                <label class="ml-3">PLEASE WRITE THE NUMBER OF NIGHTS OR TICK () THE BOX  IF YOU DID NOT STAY OVER NIGHT</label><br>
                <input class="form-check-input" type="checkbox" @if($feedback->two_for_WRITE_THE_NUMBER_OF_NIGHTS_traveller_and_trip == 'on') checked @endif name="two_for_WRITE_THE_NUMBER_OF_NIGHTS_traveller_and_trip" id="number_of_overnigh_checkbox"> <label class="ml-3" for="">No overnight stays, I stayed less than 1 day </label> <br>
                <label class="ml-3" for="">No overnight stays, I stayed less than 1 day </label>
                <input class="form-control w-25" type="number" value="{{$feedback->two_for_number_of_overnigh_traveller_and_trip}}" name="two_for_number_of_overnigh_traveller_and_trip" id="number_of_overnigh2"><br>
            </div> -->
            <!-- <h6>5) Where did you stay overnight in this trip to Country ? And how many nights did you stay?</h6>
            <label class="ml-3" for="">PLEASE TICK () THE APPROPRIATE BOX AND WRITE THE NUMBER OF OVERNIGHT STAYS NEXT TO YOUR ANSWER</label><br>
            <div class="form-group">
                <table class="table border">
                    <thead class="border">
                        <tr class="border">
                            <th class="border" scope="col">#</th>
                            <th class="border" scope="col">No</th>
                            <th class="border" scope="col">PLEASE ()</th>
                            <th class="border" scope="col">NUMBER OF NIGHTS</th>
                        </tr>
                    </thead>
                    <tbody class="border">
                        <tr class="border">
                            <th scope="row" class="border">Hotel, holiday resort</th>
                            <td class="border">1</td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->please_hotel_overnight_in_this_trip}}" name="please_hotel_overnight_in_this_trip"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->number_of_night_hotel_overnight_in_this_trip}}" name="number_of_night_hotel_overnight_in_this_trip"></td>
                        </tr>
                        <tr class="border">
                            <td scope="row" class="border">(i) Rented room, apartment or house</td>
                            <td class="border">2</td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->please_rented_room_overnight_in_this_trip}}" name="please_rented_room_overnight_in_this_trip"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->number_of_night_rented_room_overnight_in_this_trip}}" name="number_of_night_rented_room_overnight_in_this_trip"></td>
                        </tr>
                        <tr class="border">
                            <td scope="row" class="border">(ii) My own house</td>
                            <td class="border">3</td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->please_my_own_house_overnight_in_this_trip}}" name="please_my_own_house_overnight_in_this_trip"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->number_of_night_my_own_house_overnight_in_this_trip}}" name="number_of_night_my_own_house_overnight_in_this_trip"></td>
                        </tr>
                        <tr class="border">
                            <th scope="row" class="border">With relatives /friends</th>
                            <td class="border">4</td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->please_with_relatives_overnight_in_this_trip}}" name="please_with_relatives_overnight_in_this_trip"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->number_of_night_with_relatives_overnight_in_this_trip}}" name="number_of_night_with_relatives_overnight_in_this_trip"></td>
                        </tr>
                        <tr class="border">
                            <th scope="row" class="border">I was camping</th>
                            <td class="border">5</td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->please_i_was_camping_overnight_in_this_trip}}" name="please_i_was_camping_overnight_in_this_trip"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->number_of_night_i_was_camping_overnight_in_this_trip}}" name="number_of_night_i_was_camping_overnight_in_this_trip"></td>
                        </tr>
                        <tr class="border">
                            <th scope="row" class="border">On a yacht, private cruiser</th>
                            <td class="border">6</td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->please_private_cruiser_overnight_in_this_trip}}" name="please_private_cruiser_overnight_in_this_trip"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->number_of_night_private_cruiser_overnight_in_this_trip}}" name="number_of_night_private_cruiser_overnight_in_this_trip"></td>
                        </tr>
                        <tr class="border">
                            <th scope="row" class="border">On a cruise ship, cruise liner</th>
                            <td class="border">7</td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->please_cruise_liner_overnight_in_this_trip}}" name="please_cruise_liner_overnight_in_this_trip"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->number_of_night_cruise_liner_overnight_in_this_trip}}" name="number_of_night_cruise_liner_overnight_in_this_trip"></td>
                        </tr>
                        <tr class="border">
                            <th scope="row" class="border">Hospital/ clinic</th>
                            <td class="border">8</td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->please_hospital_overnight_in_this_trip}}" name="please_hospital_overnight_in_this_trip"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->number_of_night_hospital_overnight_in_this_trip}}" name="number_of_night_hospital_overnight_in_this_trip"></td>
                        </tr>
                        <tr class="border">
                            <th scope="row" class="border">Other</th>
                            <td class="border">9</td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->please_other_overnight_in_this_trip}}" name="please_other_overnight_in_this_trip"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->number_of_night_other_overnight_in_this_trip}}" name="number_of_night_other_overnight_in_this_trip"></td>
                        </tr>
                    </tbody>
                </table>
            </div> -->
            <h6>3) Did you travel alone or with other people with which you shared the expenses of the trip (shared budget)? Please write the number of people with which you shared expenses (including yourself). PLEASE TICK () THE BOX IF YOU TRAVELLED ALONE OR WRITE THE NUMBER OF PEOPLE</h6>
            <div class="form-group">
                <label class="ml-3">PLEASE TICK () THE BOX IF YOU TRAVELLED ALONE OR WRITE THE NUMBER OF PEOPLE</label><br>
                <input class="form-check-input" type="checkbox" @if($feedback->six_TRAVELLED_ALONE == 'on') checked @endif name="six_TRAVELLED_ALONE" id="travelled_alone"> <label class="ml-3" for="">I travelled alone </label> <br>
                <label class="ml-3" for="">I travelled with other people with which I shared expenses</label>
                <input class="form-control w-25" type="number" value="{{$feedback->six_travelled_with_other}}" name="six_travelled_with_other" id="travelled_with_other2"><br>
            </div>
        </div>
    </div>
</div>
<br>
  <div class="container">
        <div class="card">
            <div class="card-header">
                <h5>C. Satisfaction with your trip</h5>
            </div>
            <div class="card-body">
                <!-- <div class="form-group">
                    <h5>How much money did you spend during your stay in Country? Please include all expenses made by you and the people travelling with you (on transport, accommodation and food, shopping, off board in ports by cruise liner passengers etc.)?</h5>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="">WRITE THE AMOUNT</label>
                            <input class="form-control" type="number" name="during_your_stay_w_t_amt" id="WRITE_THE_AMOUNT" placeholder="WRITE THE AMOUNT"><br>
                        </div>
                        <div class="col-md-6">
                            <label for="">WRITE THE CURRENCY</label>
                            <input class="form-control" type="text" name="during_your_stay_w_t_currency" id="WRITE_THE_CURRENCY" placeholder="WRITE THE CURRENCY"><br>
                        </div>
                    </div>
                </div> -->
                <div class="form-group">
                    <!-- <h5>In the table of the following page, please split the money you spent in Country (thus, excluding the amount you spent in your country for this trip) and which you have indicated in q.11 into the following categories (the total of these amounts should be equal to the amount mentioned in question</h5> -->
                    <!-- <p><b>Note: </b>Alternatively, if it is difficult for you to fill in the amounts, you can estimate approximately what percentage of your total spending in Country X corresponds to each one of the categories on the table. In this case the sum should be 100%.</p> -->
                    <!-- <table class="table border">
                        <thead class="border">
                            <tr class="border">
                                <th class="border" scope="col">#</th>
                                <th class="border" scope="col">WRITE THE AMOUNT</th>
                                <th class="border" scope="col">WRITE THE CURRENCY CODE FROM THE LIST ATTACHED</th>
                                <th class="border" scope="col">ESTIMATE THE PERCENTAGE (%) CORRESPONDING TO EACH CATEGORY</th>
                            </tr>
                        </thead>
                        <tbody class="border">
                            <tr class="border">
                                <td scope="row" class="border"><b>Accommodation in Country</b> - Hotels, camping, rented rooms, youth hostels, staying in boats, trains etc.</td>
                                <td class="border"><input type="text" class="form-control" name="c_accommodation_split_the_money_you_spent_w_t_amt"></td>
                                <td class="border"><input type="text" class="form-control" name="c_accommodation_split_the_money_you_spent_w_t_currency"></td>
                                <td class="border"><input type="text" class="form-control" name="c_accommodation_split_the_money_you_spent_e_t_p"></td>
                            </tr>
                            
                            <tr class="border">
                                <td scope="row" class="border"><b>Restaurants and Bars in Country </b>For any reason (to eat, for business, for pleasure etc.)</td>
                                <td class="border"><input type="text" class="form-control" name="c_restaurants_split_the_money_you_spent_w_t_amt"></td>
                                <td class="border"><input type="text" class="form-control" name="c_restaurants_split_the_money_you_spent_w_t_currency"></td>
                                <td class="border"><input type="text" class="form-control" name="c_restaurants_split_the_money_you_spent_e_t_p"></td>
                            </tr>
                            <tr class="border">
                                <td scope="row" class="border"><b>Transportation in Country </b>(by train, by car, by boat, by plane, rent a car, gaz, tolls, etc.)</td>
                                <td class="border"><input type="text" class="form-control" name="c_transportation_split_the_money_you_spent_w_t_amt"></td>
                                <td class="border"><input type="text" class="form-control" name="c_transportation_split_the_money_you_spent_w_t_currency"></td>
                                <td class="border"><input type="text" class="form-control" name="c_transportation_split_the_money_you_spent_e_t_p"></td>
                            </tr>
                            <tr class="border">
                                <td scope="row" class="border"><b>Entertainment, Cultural & Sports Activities in Country </b>(visiting museums, cultural events, sports activities, parks, zoos, historical monuments, games etc.)</td>
                                <td class="border"><input type="text" class="form-control" name="c_entertainment_split_the_money_you_spent_w_t_amt"></td>
                                <td class="border"><input type="text" class="form-control" name="c_entertainment_split_the_money_you_spent_w_t_currency"></td>
                                <td class="border"><input type="text" class="form-control" name="c_entertainment_split_the_money_you_spent_e_t_p"></td>
                            </tr>
                            <tr class="border">
                                <td scope="row" class="border"><b>Purchases and other expenditure in Country</b>(purchasing of goods & services ex. packaged food, drinks, personal care, souvenirs, clothes, shoes etc, phone calls, post, commission for exchanging money, etc.)</td>
                                <td class="border"><input type="text" class="form-control" name="c_purchases_split_the_money_you_spent_w_t_amt"></td>
                                <td class="border"><input type="text" class="form-control" name="c_purchases_split_the_money_you_spent_w_t_currency"></td>
                                <td class="border"><input type="text" class="form-control" name="c_purchases_split_the_money_you_spent_e_t_p"></td>
                            </tr> 
                        </tbody>
                    </table> -->
                    <table class="table border">
                        <thead class="border">
                            <tr class="border">
                                <th class="border" scope="col">PLEASE FILL IN, rating from 1 to 5</th>
                                <th class="border" scope="col">1 (horrific), 2( bad), 3 (acceptable), 4 (good), 5 (excellent)</th>
                            </tr>
                        </thead>
                        <tbody class="border">
                            <tr class="border">
                                <td scope="row" class="border"><b>Accommodation in Country X</b> - Hotels, camping, rented rooms, youth hostels, staying in boats, trains etc.</td>
                                <td class="border"><input type="text" class="form-control" name="please_fill_in_rating_a_i_c" value="{{$feedback->please_fill_in_rating_a_i_c}}"></td>
                            </tr>

                            <tr class="border">
                                <td scope="row" class="border"><b>Restaurants and Bars in Country X</b> - For any reason (to eat, for business, for pleasure etc.)</td>
                                <td class="border"><input type="text" class="form-control" name="please_fill_in_rating_r_a_b_i_c" value="{{$feedback->please_fill_in_rating_r_a_b_i_c}}"></td>
                            </tr>
                            <tr class="border">
                                <td scope="row" class="border"><b>Transportation in Country X </b> - (by train, by car, by boat, by plane, rent a car, gastolls, etc.)</td>
                                <td class="border"><input type="text" class="form-control" name="please_fill_in_rating_t_i_c" value="{{$feedback->please_fill_in_rating_t_i_c}}"></td>
                            </tr>
                            <tr class="border">
                                <td scope="row" class="border"><b>Entertainment, Cultural & Sports Activities in Country X</b> - (visiting museums, cultural events, sports activities, parks, zoos, historical monuments, games etc.)</td>
                                <td class="border"><input type="text" class="form-control" name="please_fill_in_rating_e_c_s_a_i_c" value="{{$feedback->please_fill_in_rating_e_c_s_a_i_c}}"></td>
                            </tr>
                            <tr class="border">
                                <td scope="row" class="border"><b>Purchases and shopping in Country X</b> - (purchasing of goods & services ex. packaged food, drinks, personal care, souvenirs, clothes, shoes etc, phone calls, post, commission for exchanging money, etc.)</td>
                                <td class="border"><input type="text" class="form-control" name="please_fill_in_rating_p_a_s_i_c" value="{{$feedback->please_fill_in_rating_p_a_s_i_c}}"></td>
                            </tr>
                            <tr class="border">
                                <td scope="row" class="border"><b>Professional services in Country X </b> - (travel agent, tour operators, travel guides, translators, etc.)</td>
                                <td class="border"><input type="text" class="form-control" name="please_fill_in_rating_p_s_i_c" value="{{$feedback->please_fill_in_rating_p_s_i_c}}"></td>
                            </tr>
                            <tr class="border">
                                <td scope="row" class="border"><b>Overall</b></td>
                                <td class="border"><input type="text" class="form-control" name="please_fill_in_rating_o" value="{{$feedback->please_fill_in_rating_o}}"></td>
                            </tr>
                        </tbody>
                    </table><br>
                    <div class="form-group">
                        <label><b>Are there any comments you would like to make, claims or suggestions for improvement?</b></label><br>
                        <textarea name="any_comments" cols="15" class="form-control" rows="5">{{$feedback->any_comments}}</textarea>
                    </div><br>
                </div>
            </div>
        </div>
    </div>
<!-- <div class="container">
    <div class="card">
        <div class="card-header">
            <h5>C. Expenses you made in your home country before departing for Country </h5>
        </div>
        <div class="card-body">
            <div class="form-group">
                <h5>Did you make any payment in your country before your departure for this trip to Country (e.g. to a travel agency, directly to an airline company etc through credit card, money transfer, through the Internet, etc,)?</h5>
                <label class="ml-3">PLEASE TICK () THE APPROPRIATE BOX</label><br>
                <label class="ml-3" for="">Yes, I made payments in my country</label> <br>
                <input class="form-check-input" type="radio" @if($feedback->c_did_you_make_any_payment == 'yes') checked @endif name="c_did_you_make_any_payment" value="yes" id="made_payments2" checked> <label class="ml-3 mr-4" for="">Yes</label>
                <input class="form-check-input" type="radio" @if($feedback->c_did_you_make_any_payment == 'no') checked @endif name="c_did_you_make_any_payment" value="no" id="made_payments2"> <label class="ml-3" for="">No</label><br>
                <label class="ml-3" for="">No, I did not make any payments in my country</label>
                <p>GO TO QUESTION 11</p>
            </div>
            <div class="form-group">
                <h5>Please tick () in COLUMN A below, for which service or services you paid in your country.</h5>
                <label class="ml-3">PLEASE TICK () THE APPROPRIATE BOX</label><br>
                <input class="form-check-input" type="radio" @if($feedback->c_which_services_you_paid == 'Tickets') checked @endif name="c_which_services_you_paid" value="Tickets" id="made_payments2" checked> <label class="ml-3" for="">Tickets </label><br>
                <input class="form-check-input" type="radio" @if($feedback->c_which_services_you_paid == 'Accommodation') checked @endif name="c_which_services_you_paid" value="Accommodation" id="made_payments2" checked> <label class="ml-3" for="">Accommodation (with or without meals) </label><br>
                <input class="form-check-input" type="radio" @if($feedback->c_which_services_you_paid == 'Other services') checked @endif name="c_which_services_you_paid" value="Other services" id="made_payments2"> <label class="ml-3" for="">Other services (car rental, guided tours etc)</label><br>
                <input class="form-check-input" type="radio" @if($feedback->c_which_services_you_paid == 'Cruise package') checked @endif name="c_which_services_you_paid" value="Cruise package" id="made_payments2"> <label class="ml-3" for="">Cruise package</label><br>
            </div>
            <div class="form-group">
                <h5>Please tick () in COLUMN B below for which of these services, if any, you paid via a travel agency.</h5>
                <label class="ml-3">PLEASE TICK () THE APPROPRIATE BOX</label><br>
                <input class="form-check-input" type="radio" @if($feedback->c_which_of_these_services == 'Tickets') checked @endif name="c_which_of_these_services" id="COLUMN_B_below2" checked> <label class="ml-3" for="">Tickets </label><br>
                <input class="form-check-input" type="radio" @if($feedback->c_which_of_these_services == 'Accommodation') checked @endif name="c_which_of_these_services" id="COLUMN_B_below2" checked> <label class="ml-3" for="">Accommodation (with or without meals) </label><br>
                <input class="form-check-input" type="radio" @if($feedback->c_which_of_these_services == 'Other services') checked @endif name="c_which_of_these_services" id="COLUMN_B_below2"> <label class="ml-3" for="">Other services (car rental, guided tours etc)</label><br>
                <input class="form-check-input" type="radio" @if($feedback->c_which_of_these_services == 'Cruise package') checked @endif name="c_which_of_these_services" id="COLUMN_B_below2"> <label class="ml-3" for="">Cruise package</label><br>
            </div>
            <div class="form-group">
                <h5>Please write the amount of money spent in your country solely for the tickets to Country by you and the people travelling with you. IF YOU TRAVELLED BY ROAD DO NOT INCLUDE FUEL EXPENSES</h5>
                <div class="row">
                    <div class="col-md-6">
                        <label class="ml-3" for="">WRITE THE AMOUNT</label>
                        <input class="form-control" type="number" value="{{$feedback->c_solely_for_the_tickets_w_t_amt}}" name="c_solely_for_the_tickets_w_t_amt" id="WRITE_THE_AMOUNT" placeholder="WRITE THE AMOUNT"><br>
                    </div>
                    <div class="col-md-6">
                        <label class="ml-3" for="">WRITE THE CURRENCY</label>
                        <input class="form-control" type="text" value="{{$feedback->c_solely_for_the_tickets_w_t_currency}}" name="c_solely_for_the_tickets_w_t_currency" id="WRITE_THE_CURRENCY" placeholder="WRITE THE CURRENCY"><br>
                    </div>
                </div>
                <div class="form-group">
                    <h5>How much money did you spend in total before your departure for this trip? Please include expenses made by you and the people travelling with you. IF YOU TRAVELLED BY ROAD DO NOT INCLUDE FUEL EXPENSES.</h5>
                    <div class="row">
                        <div class="col-md-6">
                            <label class="ml-3" for="">WRITE THE AMOUNT</label>
                            <input class="form-control" type="number" value="{{$feedback->total_before_your_departure_w_t_amt}}" name="total_before_your_departure_w_t_amt" id="WRITE_THE_AMOUNT" placeholder="WRITE THE AMOUNT"><br>
                        </div>
                        <div class="col-md-6">
                            <label class="ml-3" for="">WRITE THE CURRENCY</label>
                            <input class="form-control" type="text" value="{{$feedback->total_before_your_departure_w_t_currency}}" name="total_before_your_departure_w_t_currency" id="WRITE_THE_CURRENCY" placeholder="WRITE THE CURRENCY"><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br> -->
<!-- <div class="container">
    <div class="card">
        <div class="card-header">
            <h5>D. Expenses you made in Country X during your stay</h5>
        </div>
        <div class="card-body">
            <div class="form-group">
                <h5>How much money did you spend during your stay in Country? Please include all expenses made by you and the people travelling with you (on transport, accommodation and food, shopping, off board in ports by cruise liner passengers etc.)?</h5>
                <div class="row">
                    <div class="col-md-6">
                        <label class="ml-3" for="">WRITE THE AMOUNT</label>
                        <input class="form-control" type="number" value="{{$feedback->during_your_stay_w_t_amt}}" name="during_your_stay_w_t_amt" id="WRITE_THE_AMOUNT" placeholder="WRITE THE AMOUNT"><br>
                    </div>
                    <div class="col-md-6">
                        <label class="ml-3" for="">WRITE THE CURRENCY</label>
                        <input class="form-control" type="text" value="{{$feedback->during_your_stay_w_t_currency}}" name="during_your_stay_w_t_currency" id="WRITE_THE_CURRENCY" placeholder="WRITE THE CURRENCY"><br>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <h5>In the table of the following page, please split the money you spent in Country (thus, excluding the amount you spent in your country for this trip) and which you have indicated in q.11 into the following categories (the total of these amounts should be equal to the amount mentioned in question</h5>
                <p><b>Note: </b>Alternatively, if it is difficult for you to fill in the amounts, you can estimate approximately what percentage of your total spending in Country X corresponds to each one of the categories on the table. In this case the sum should be 100%.</p>
                <table class="table border">
                    <thead class="border">
                        <tr class="border">
                            <th class="border" scope="col">#</th>
                            <th class="border" scope="col">WRITE THE AMOUNT</th>
                            <th class="border" scope="col">WRITE THE CURRENCY CODE FROM THE LIST ATTACHED</th>
                            <th class="border" scope="col">ESTIMATE THE PERCENTAGE (%) CORRESPONDING TO EACH CATEGORY</th>
                        </tr>
                    </thead>
                    <tbody class="border">
                        <tr class="border">
                            <td scope="row" class="border"><b>Accommodation in Country</b> - Hotels, camping, rented rooms, youth hostels, staying in boats, trains etc.</td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->c_accommodation_split_the_money_you_spent_w_t_amt}}" name="c_accommodation_split_the_money_you_spent_w_t_amt"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->c_accommodation_split_the_money_you_spent_w_t_currency}}" name="c_accommodation_split_the_money_you_spent_w_t_currency"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->c_accommodation_split_the_money_you_spent_e_t_p}}" name="c_accommodation_split_the_money_you_spent_e_t_p"></td>
                        </tr>
                        
                        <tr class="border">
                            <td scope="row" class="border"><b>Restaurants and Bars in Country </b>For any reason (to eat, for business, for pleasure etc.)</td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->c_restaurants_split_the_money_you_spent_w_t_amt}}" name="c_restaurants_split_the_money_you_spent_w_t_amt"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->c_restaurants_split_the_money_you_spent_w_t_currency}}" name="c_restaurants_split_the_money_you_spent_w_t_currency"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->c_restaurants_split_the_money_you_spent_e_t_p}}" name="c_restaurants_split_the_money_you_spent_e_t_p"></td>
                        </tr>
                        <tr class="border">
                            <td scope="row" class="border"><b>Transportation in Country </b>(by train, by car, by boat, by plane, rent a car, gaz, tolls, etc.)</td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->c_transportation_split_the_money_you_spent_w_t_amt}}" name="c_transportation_split_the_money_you_spent_w_t_amt"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->c_transportation_split_the_money_you_spent_w_t_currency}}" name="c_transportation_split_the_money_you_spent_w_t_currency"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->c_transportation_split_the_money_you_spent_e_t_p}}" name="c_transportation_split_the_money_you_spent_e_t_p"></td>
                        </tr>
                        <tr class="border">
                            <td scope="row" class="border"><b>Entertainment, Cultural & Sports Activities in Country </b>(visiting museums, cultural events, sports activities, parks, zoos, historical monuments, games etc.)</td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->c_entertainment_split_the_money_you_spent_w_t_amt}}" name="c_entertainment_split_the_money_you_spent_w_t_amt"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->c_entertainment_split_the_money_you_spent_w_t_currency}}" name="c_entertainment_split_the_money_you_spent_w_t_currency"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->c_entertainment_split_the_money_you_spent_e_t_p}}" name="c_entertainment_split_the_money_you_spent_e_t_p"></td>
                        </tr>
                        <tr class="border">
                            <td scope="row" class="border"><b>Purchases and other expenditure in Country</b>(purchasing of goods & services ex. packaged food, drinks, personal care, souvenirs, clothes, shoes etc, phone calls, post, commission for exchanging money, etc.)</td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->c_purchases_split_the_money_you_spent_w_t_amt}}" name="c_purchases_split_the_money_you_spent_w_t_amt"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->c_purchases_split_the_money_you_spent_w_t_currency}}" name="c_purchases_split_the_money_you_spent_w_t_currency"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->c_purchases_split_the_money_you_spent_e_t_p}}" name="c_purchases_split_the_money_you_spent_e_t_p"></td>
                        </tr> 
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<br>
<div class="container">
    <div class="card">
        <div class="card-header">
            <h5>E. Expenses you made in Country X during your stay</h5>
        </div>
        <div class="card-body">
            <div class="form-group">
                <h5>How much money did you spend for this trip to Country overall, including the expenses made in your country and the expenses made in Country?</h5>
                <div class="row">
                    <div class="col-md-6">
                        <label class="ml-3" for="">WRITE THE AMOUNT</label>
                        <input class="form-control" type="number" value="{{$feedback->e_overall_including_w_t_amt}}" name="e_overall_including_w_t_amt" id="WRITE_THE_AMOUNT" placeholder="WRITE THE AMOUNT"><br>
                    </div>
                    <div class="col-md-6">
                        <label class="ml-3" for="">WRITE THE CURRENCY</label>
                        <input class="form-control" type="text" value="{{$feedback->e_overall_including_w_t_currency}}" name="e_overall_including_w_t_currency" id="WRITE_THE_CURRENCY" placeholder="WRITE THE CURRENCY"><br>
                    </div>
                </div>
            </div>
            <h6>Please, write in COLUMN 2 of the following table, the number of your night stays by region of Country X and in COLUMN 3 the percentage of expenditure incurred in each region of Country X you visited (in the currency you used for your answers in question . In order to help you locate the area you visited, please use the map below or the AREA TABLE on page 5b.</h6>
            
            <table class="table border">
                <thead class="border">
                    <tr class="border">
                        <th class="border" scope="col">COLUMN 1 Region Code</th>
                        <th class="border" scope="col">COLUMN 2 No of night stays</th>
                        <th class="border" scope="col">COLUMN 3 Expenditure estimation %</th>
                    </tr>
                </thead>
                
                <tbody class="border">
                    @for($i=1; $i < 14 ; $i++) 
                        <tr class="border">
                            <th scope="row" class="border">{{$i}}</th>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->e_column_two_no_of_night_stays_.$i}}" name="e_column_two_no_of_night_stays_{{$i}}"></td>
                            <td class="border"><input type="text" class="form-control" value="{{$feedback->e_column_three_expenditure_estimation_.$i}}" name="e_column_three_expenditure_estimation_{{$i}}"></td>
                        </tr>
                    @endfor
                </tbody>
            </table>
            <div class="form-group">
                <h5>If you purchased luxury goods  (jewelry, design clothing - accessories, leather - fur     clothing, cars, electric and electronic appliances of high value, etc.) that you took with you on your departure from Greece, please note the amount</h5>
                <div class="row">
                    <div class="col-md-6">
                        <label class="ml-3" for="">WRITE THE AMOUNT OF LUXURY GOODS</label>
                        <input class="form-control" type="number" value="{{$feedback->e_luxury_goods_w_t_amt}}" name="e_luxury_goods_w_t_amt" id="WRITE_THE_AMOUNT" placeholder="WRITE THE AMOUNT OF LUXURY GOODS"><br>
                    </div>
                    <div class="col-md-6">
                        <label class="ml-3" for="">WRITE THE CURRENCY</label>
                        <input class="form-control" type="text" value="{{$feedback->e_luxury_goods_w_t_currency}}" name="e_luxury_goods_w_t_currency" id="WRITE_THE_CURRENCY" placeholder="WRITE THE CURRENCY"><br>
                    </div>
                </div>
            </div>
            <b>*Thank you very much for the cooperation. Please hand the questionnaire to the interviewer.</b>
        </div>
    </div>
</div> -->

@endsection

@section('scripts') @parent

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

@endsection