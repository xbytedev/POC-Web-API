@extends('frontcomponent.master')
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-xl-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title mb-0">Trip</h4>
                </div>
                <!-- end card header -->
                <div class="card-body form-steps">
                    <div class="vertical-navs-step">
                        <div class="row gy-5">
                            <div class="col-lg-3">
                                <div class="nav flex-column custom-nav nav-pills" role="tablist" aria-orientation="vertical">
                                    <a href="{{url('trips')}}" class="nav-link">
                                        <span class="step-title me-2">
                                            <i class="ri-close-circle-fill step-icon me-2"></i>
                                            Trip
                                        </span>
                                    </a>
                                    <a href="{{url('trips')}}" class="nav-link">
                                        <span class="step-title me-2">
                                            <i class="ri-close-circle-fill step-icon me-2"></i>
                                            2 People
                                        </span>
                                    </a>
                                    <button class="nav-link active" id="v-pills-payment-tab" data-bs-toggle="pill" data-bs-target="#v-pills-payment" type="button" role="tab" aria-controls="v-pills-payment" aria-selected="false">
                                        <span class="step-title me-2">
                                            <i class="ri-close-circle-fill step-icon me-2"></i>
                                            3 Pay Fee
                                        </span>
                                    </button>
                                    <button class="nav-link cards" id="v-pills-finish-tab" data-bs-toggle="pill" data-bs-target="#v-pills-finish" type="button" role="tab" aria-controls="v-pills-finish" aria-selected="false">
                                        <span class="step-title me-2">
                                            <i class="ri-close-circle-fill step-icon me-2"></i>
                                            4 Get Card
                                        </span>
                                    </button>
                                </div>
                            </div>
                            <div class="col-lg-9 mx-auto">
                                <div class="px-lg-4">
                                    <div class="tab-content">
                                        <!-- end tab pane -->
                                        <div class="tab-pane active" id="v-pills-payment" role="tabpanel" aria-labelledby="v-pills-payment-tab">
                                            <h5>Now you can proceed to payment of the eTourist card for you/your party!</h5>
                                            <p>We strongly recommend for you to make this payment online to avoid lines and delays as Paymets kiosks and support at the border are limited .</p>
                                            <p>You can also pay at partners such as Hotels(list).</p><br>
                                            <p>eTourist cards are Preliminary untill payment.</p>
                                            
                                            <!-- <div class="row"> -->
                                                <div class="col-md-6">
                                                    <button class="click_cards">PAY LATER AT BORDER ENTRY <br> OR <br> PAY TO PARTNER </button>
                                                </div>
                                            <!-- </div> -->
                                            <div class="col-md-6 mt-3">
                                                <button class="btn btn-danger click_cards">PROCEED TO PAYMENT</button>
                                            </div>

                                        </div>
                                        <!-- end tab pane -->
                                        <div class="tab-pane fade" id="v-pills-finish" role="tabpanel" aria-labelledby="v-pills-finish-tab">
                                            <!-- <div class="text-center pt-4 pb-2">
                                                <div class="mb-4">
                                                    <lord-icon src="https://cdn.lordicon.com/lupuorrc.json" trigger="loop" colors="primary:#0ab39c,secondary:#405189" style="width: 120px; height: 120px;"></lord-icon>
                                                </div>
                                                <h5>Your Order is Completed !</h5>
                                                <p class="text-muted">You Will receive an order confirmation email with details of your order.</p>
                                            </div> -->
                                            <div class="row">
                                                @foreach($trip_pepole as $trip_pepole_data)
                                                    <div class="col-xl-6 col-md-6">

                                                        <div class="card card-animate">

                                                            <div class="card-body">

                                                                <div class="d-flex justify-content-between  align-items-center">

                                                                    <div class="w-100">

                                                                        <div class="flex-grow-1">

                                                                            <b class="">Name</b> 

                                                                            <p class="text-muted mb-2">{{$trip_pepole_data->name}}</p>

                                                                        </div>

                                                                        <div class="d-flex align-items-center my-3">

                                                                            <div class="flex-grow-1 pr-3 w-50">

                                                                                <b class="">DOB</b> 

                                                                                <p class="text-muted mb-2">{{$trip_pepole_data->dob}}</p>

                                                                            </div>

                                                                            <div class="flex-grow-1 w-50">

                                                                                <b class="">Gender</b> 

                                                                                <p class="text-muted mb-2">{{$trip_pepole_data->gender}}</p>

                                                                            </div>

                                                                        </div>

                                                                        <div class="d-flex align-items-center mt-3">

                                                                            <div class="flex-grow-1 w-50">

                                                                                <b class="">Address</b> 

                                                                                <p class="text-muted mb-0">{{$trip_pepole_data->residence_address}}</p>

                                                                            </div>

                                                                            <div class="flex-grow-1 w-50">

                                                                                <b class="">Valid Until</b> 

                                                                                <p class="text-muted mb-0">{{$trip->trip_end_date}}</p>

                                                                            </div>

                                                                        </div>

                                                                    </div>

                                                                    <div>
                                                                        @php 
                                                                            $data['trip_id'] = $trip->id;
                                                                            $data['user_id'] = $trip_pepole_data->id;
                                                                            $data['username'] = $trip_pepole_data->name;
                                                                            $data['dob'] = $trip_pepole_data->dob;
                                                                            $data['gender'] = $trip_pepole_data->gender;
                                                                            $data['address'] = $trip_pepole_data->residence_address;
                                                                            $data['start_date'] = $trip->trip_start_date;
                                                                            $data['end_date'] = $trip->trip_end_date;

                                                                        @endphp
                                                                            <!-- {
                                                                                "trip_id": 1,
                                                                                "user_id": 1,
                                                                                "username": "rjufjnubybggyvgt up",
                                                                                "dob": "2022-08-05",
                                                                                "gender": "male",
                                                                                "address": "hxdfjfj",
                                                                                "start_date": "2022-08-05",
                                                                                "end_date": "2022-08-05"
                                                                            } -->

                                                                        <div class="barcode-img">
                                                                            {!! QrCode::size(200)->generate(json_encode($data)) !!}
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('scripts') @parent
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(".click_cards").click(function(){
    $( ".cards" ).trigger("click");
})

$(".save_trip").click(function(){
    var start_date = $(".start_date").val();
    var trip_name = $(".trip_name").val();
    var end_date = $(".end_date").val();
    if(start_date){
        $('.error_message_start_date').html('');
    }else{
        $('.error_message_start_date').html('');
        $('.error_message_start_date').append('Select Trip Start Date');
    }
    if(trip_name){
        $('.error_message_trip_name').html('');
    }else{
        $('.error_message_trip_name').html('');
        $('.error_message_trip_name').append('Select Trip Name');
    }
    if(end_date){
        $('.error_message_end_date').html('');
    }else{
        $('.error_message_end_date').html('');
        $('.error_message_end_date').append('Select Trip Name');
    }

    if(end_date && trip_name && start_date){
        $.ajax({
            url: '{{url("add_trip")}}',
            type: 'POST',
            data: { _token: '{{ csrf_token() }}',trip_name: trip_name,trip_end_date: end_date,trip_start_date:start_date},
            success: function(response){
                console.log(response.trip_id);
                $( ".append_trip_id" ).val(response.trip_id);
                $( ".click_button_People" ).trigger("click");
            },
            error: function (){

            }, 
        });
    }

});
</script>
@endsection