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
                                    <button class="nav-link active" id="v-pills-bill-info-tab" data-bs-toggle="pill" data-bs-target="#v-pills-bill-info" type="button" role="tab" aria-controls="v-pills-bill-info" aria-selected="true">
                                        <span class="step-title me-2">
                                            <i class="ri-close-circle-fill step-icon me-2"></i>
                                            Trip
                                        </span>
                                    </button>
                                    <button class="nav-link click_button_People" id="v-pills-bill-address-tab "  data-bs-toggle="pill" data-bs-target="#v-pills-bill-address" type="button" role="tab" aria-controls="v-pills-bill-address" aria-selected="false">
                                    <!-- disabled -->
                                        <span class="step-title me-2">
                                            <i class="ri-close-circle-fill step-icon me-2"></i>
                                            2 People
                                        </span>
                                    </button>
                                    <a class="nav-link" type="button">
                                        <span class="step-title me-2">
                                            <i class="ri-close-circle-fill step-icon me-2"></i>
                                            3 Pay Fee
                                        </span>
                                    </a>
                                    <a class="nav-link" type="button">
                                        <span class="step-title me-2">
                                            <i class="ri-close-circle-fill step-icon me-2"></i>
                                            4 Get Card
                                        </span>
                                    </a>
                                </div>
                                <!-- end nav -->
                            </div>
                            <!-- end col-->
                            <div class="col-lg-7 mx-auto">
                                <div class="px-lg-4">
                                    <div class="tab-content">
                                        <div class="tab-pane fade  show active" id="v-pills-bill-info" role="tabpanel" aria-labelledby="v-pills-bill-info-tab">
                                           <!--  <div>
                                                <h5>Billing Info</h5>
                                                <p class="text-muted">Fill all information below</p>
                                            </div>
                                            -->
                                            <div>
                                                <div class="row g-3">
                                                    <div class="col-sm-12">
                                                        <label for="firstName" class="form-label">Trip Name</label>
                                                        <input type="text" class="form-control trip_name" id="firstName" placeholder="Enter Trip Name" value="" />
                                                        <p class="error_message_trip_name" style="color:red"></p>
                                                    </div>

                                                    <div class="col-sm-6">
                                                        <label for="dateInput" class="form-label">Start Date</label>
                                                        <input type="date" class="form-control start_date" id="dateInput">
                                                        <p style="color:red" class="error_message_start_date"></p>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <label for="dateInput" class="form-label">End Date</label>
                                                        <input type="date" class="form-control end_date" id="dateInput">
                                                        <p style="color:red" class="error_message_end_date"></p>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="d-flex align-items-start gap-3 mt-4">
                                                <button type="button" class="btn btn-success btn-label right ms-auto nexttab nexttab save_trip" data-nexttab="v-pills-bill-address-tab">
                                                    <i class="ri-arrow-right-line label-icon align-middle fs-16 ms-2"></i>Save
                                                </button>
                                            </div>
                                        </div>
                                        <!-- end tab pane -->
                                        <div class="tab-pane fade" id="v-pills-bill-address" role="tabpanel" aria-labelledby="v-pills-bill-address-tab">

                                            <form action="{{url('add_trip_TripPeople')}}" method="post" enctype="multipart/form-data" parsley-validate>
                                                @csrf
                                                <div>
                                                    <input type="hidden" class="append_trip_id" name="trip_id">
                                                    <div class="row g-3">
                                                        <div class="col-12">
                                                            <label for="address" class="form-label">Name</label>
                                                            <input type="text" class="form-control" name="name" id="address" placeholder="Name" required/>
                                                            
                                                        </div>
                                                        <div class="col-12">
                                                            <label for="address" class="form-label">Family Name</label>
                                                            <input type="text" class="form-control" name="family_name" id="address" placeholder="Family Name" required/>
                                                        </div>
                                                        
                                                        <div class="col-12">
                                                            <div class="my-3">
                                                            <label for="" class="form-label">Gender</label><br>
                                                                <div class="form-check form-check-inline">
                                                                    <input id="credit" name="gender" type="radio" class="form-check-input" checked required />
                                                                    <label class="form-check-label" for="credit" value="Female">Female</label>
                                                                </div>
                                                                <div class="form-check form-check-inline">
                                                                    <input id="debit" name="gender" type="radio" value="Male" class="form-check-input" required />
                                                                    <label class="form-check-label" for="debit">Male</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        
                                                        <div class="col-12">
                                                            <label for="address" class="form-label">Birth Date</label>
                                                            <input type="date" name="dob" class="form-control" id="address" required/>
                                                        </div>

                                                        <div class="col-12">
                                                            <label for="">Document Type</label>
                                                            <select name="document_type" id="" class="form-control" required>
                                                                <option value="">Select Document Type</option>
                                                                @foreach($document_type as $document_type_data)
                                                                    <option value="{{$document_type_data->id}}">{{$document_type_data->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>

                                                        <div class="col-12">
                                                            <label for="address2" class="form-label">Document Number</label>
                                                            <input type="number" class="form-control" name="document_number" id="address2" placeholder="Document Number" required/>
                                                        </div>

                                                        <div class="col-12">
                                                            <label for="address" class="form-label">Valid Until</label>
                                                            <input type="date" name="valid_untill" class="form-control" id="address" required/>
                                                        </div>


                                                        <div class="col-md-6">
                                                            <label for="country" class="form-label">Country</label>
                                                            <select class="form-select" name="document_country" id="country" required>
                                                                <option>Select Country</option>
                                                                @foreach($country as $country_data)
                                                                    <option value="{{$country_data->id}}">{{$country_data->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <label for="state" class="form-label">Upload Document</label>
                                                            <input type="file" name="document_id_data" class="form-control" required>
                                                        </div>
                                                    </div>

                                                    <!-- <hr class="my-4 text-muted" /> -->

                                                    <br><h4>Residence</h4>
                                                    <div class="col-12">
                                                        <label for="address" class="form-label">Street Address</label>
                                                        <input type="text" class="form-control" name="residence_address" id="address" placeholder="Street Address" required/>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <label for="country" class="form-label">Country</label>
                                                            <select name="residence_country" class="form-select" id="country" required>
                                                                <option>Select Country</option>
                                                                @foreach($country as $country_data)
                                                                    <option value="{{$country_data->id}}">{{$country_data->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>

                                                        <div class="col-4">
                                                            <label for="address" class="form-label">City</label>
                                                            <input type="text" name="residence_city" class="form-control" id="address" placeholder="City" required/>
                                                        </div>

                                                        <div class="col-4">
                                                            <label for="address" class="form-label">Postal Code</label>
                                                            <input type="text" name="residence_post_code" class="form-control" id="address" placeholder="Postal Code" required/>
                                                        </div>
                                                    </div>
                                                    <br><h4>Contacts</h4>
                                                    <div class="col-12">
                                                        <label for="address" class="form-label">Email</label>
                                                        <input type="text" name="contacts_email" class="form-control" id="address" placeholder="Email" required/>
                                                    </div>
                                                    <div class="col-12">
                                                        <label for="address" class="form-label">Phone</label>
                                                        <input type="number" required name="contacts_phone" class="form-control" id="address" placeholder="Phone"/>
                                                    </div>
                                                    <br><h4>Trip Data</h4>
                                                    <div class="col-12">
                                                        <label for="address" class="form-label">Visa Number</label>
                                                        <input type="number" required name="trip_data_visa_information" class="form-control" id="address" placeholder="Visa Number"/>
                                                    </div>
                                                    <div class="col-12">
                                                        <label for="address" class="form-label">Expiration Date</label>
                                                        <input type="date" name="experience_date" required class="form-control" id="address" />
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <label for="address" class="form-label">Visa motive</label>
                                                            <select required class="form-control" name="visa_motive" id="">
                                                                <option value="">Select visa motive</option>
                                                                @foreach($motivation_of_trip as $motivation_of_trip_data)
                                                                    <option value="{{$motivation_of_trip_data->id}}">{{$motivation_of_trip_data->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        <div class="col-6">
                                                            <label for="address" class="form-label">Upload Visa Document</label>
                                                            <input type="file"  name="visa_document" class="form-control">
                                                        </div>
                                                    </div>
                                                    <br><h4>Motivation Of Trip</h4>
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <label for="address" class="form-label">Motivation</label>
                                                            <select class="form-control" name="motivation_of_trip" id="" required>
                                                                <option value="">Select Motivation</option>
                                                                @foreach($motivation_of_trip as $motivation_of_trip_data)
                                                                    <option value="{{$motivation_of_trip_data->id}}">{{$motivation_of_trip_data->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        <div class="col-6">
                                                            <label for="address" class="form-label">Mean Of Trip</label>
                                                            <select class="form-control" name="mean_of_transport" id="" required>
                                                                <option value="">Select Mean Of Trip</option>
                                                                @foreach($mean_of_transport as $mean_of_transport_data)
                                                                    <option value="{{$mean_of_transport_data->id}}">{{$mean_of_transport_data->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <label for="address" class="form-label">Document number/PNR</label>
                                                        <input type="number" class="form-control" required placeholder="Document number/PNR">
                                                    </div>
                                                    <br><h4>Originating From</h4>
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <label for="country" class="form-label">Country</label>
                                                            <select class="form-select" required name="originating_from_country" id="country">
                                                                <option>Select Country</option>
                                                                @foreach($country as $country_data)
                                                                    <option value="{{$country_data->id}}">{{$country_data->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>

                                                        <div class="col-4">
                                                            <label for="address" class="form-label">City</label>
                                                            <input type="text" class="form-control" required name="originating_from_city" id="address" placeholder="City"/>
                                                        </div>

                                                        <div class="col-4">
                                                            <label for="address" class="form-label">Via</label>
                                                            <input type="text" required name="originating_from_via" class="form-control" id="address" placeholder="Via"/>
                                                        </div>
                                                    </div>
                                                    <br><h4>Hotel Details</h4>
                                                    <div class="row">
                                                        <div class="col-md-6">  
                                                            <label for="address" class="form-label">Hotel Name</label>
                                                            <input type="text" class="form-control" name="hotel_name" id="address" placeholder="Hotel Name"/>
                                                        </div>
                                                        <div class="col-md-6">  
                                                            <label for="address" class="form-label">Room No.</label>
                                                            <input type="text" class="form-control" name="room_no" id="address" placeholder="Room No."/>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">  
                                                            <label for="address" class="form-label">Arrival Date</label>
                                                            <input type="date" name="arrival_date" class="form-control" id="address"/>
                                                        </div>
                                                        <div class="col-md-6">  
                                                            <label for="address" class="form-label">Departure Date</label>
                                                            <input type="date" name="dep_date" class="form-control" id="address"/>
                                                        </div>
                                                    </div>
                                                    <br><h4>Arrival Crossing Point</h4>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label for="country" class="form-label">Arrival Crossing Point</label>
                                                            <select class="form-select" required name="arrival_crossing_point_border_crossing_point" id="country">
                                                                <option>Select Arrival Crossing Point</option>
                                                                @foreach($arrival_crossing_point as $arrival_crossing_point_data)
                                                                    <option value="{{$arrival_crossing_point_data->id}}">{{$arrival_crossing_point_data->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        <div class="col-md-6">  
                                                            <label for="address" class="form-label">Arrival Date</label>
                                                            <input type="date" required name="arrival_crossing_point_arrival_date" class="form-control" id="address"/>
                                                        </div>
                                                    </div>

                                                    <br><h4>Departure Crossing Point</h4>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label for="country" class="form-label">Border Crossing Point</label>
                                                            <select class="form-select" required name="departure_crossing_point_border_crossing_point" id="country">
                                                                <option>Select Border Crossing Point</option>
                                                                @foreach($arrival_crossing_point as $arrival_crossing_point_data)
                                                                    <option value="{{$arrival_crossing_point_data->id}}">{{$arrival_crossing_point_data->name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        <div class="col-md-6">  
                                                            <label for="address" class="form-label">Departure Date</label>
                                                            <input type="date" name="departure_crossing_point_departure_date" class="form-control" id="address" required/>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="d-flex align-items-start gap-3 mt-4">
                                                    <button type="button" class="btn btn-light btn-label previestab" data-previous="v-pills-bill-info-tab">
                                                        <i class="ri-arrow-left-line label-icon align-middle fs-16 me-2"></i> Back to Billing Info
                                                    </button>
                                                    <button type="submit" class="btn btn-success btn-label right ms-auto nexttab nexttab" data-nexttab="v-pills-payment-tab">
                                                        <i class="ri-arrow-right-line label-icon align-middle fs-16 ms-2"></i>Go to Payment
                                                    </button>
                                                </div>
                                                
                                            </form>
                                        </div>
                                        <!-- end tab pane -->
                                        <div class="tab-pane fade" id="v-pills-payment" role="tabpanel" aria-labelledby="v-pills-payment-tab">
                                            <div>
                                                <h5>Payment</h5>
                                                <p class="text-muted">Fill all information below</p>
                                            </div>

                                            <div>
                                                <div class="my-3">
                                                    <div class="form-check form-check-inline">
                                                        <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required />
                                                        <label class="form-check-label" for="credit">Credit card</label>
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required />
                                                        <label class="form-check-label" for="debit">Debit card</label>
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required />
                                                        <label class="form-check-label" for="paypal">PayPal</label>
                                                    </div>
                                                </div>

                                                <div class="row gy-3">
                                                    <div class="col-md-12">
                                                        <label for="cc-name" class="form-label">Name on card</label>
                                                        <input type="text" class="form-control" id="cc-name" placeholder="" required />
                                                        <small class="text-muted">Full name as displayed on card</small>
                                                        <div class="invalid-feedback">
                                                            Name on card is required
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <label for="cc-number" class="form-label">Credit card number</label>
                                                        <input type="text" class="form-control" id="cc-number" placeholder="" required />
                                                        <div class="invalid-feedback">
                                                            Credit card number is required
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <label for="cc-expiration" class="form-label">Expiration</label>
                                                        <input type="text" class="form-control" id="cc-expiration" placeholder="" required />
                                                        <div class="invalid-feedback">
                                                            Expiration date required
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <label for="cc-cvv" class="form-label">CVV</label>
                                                        <input type="text" class="form-control" id="cc-cvv" placeholder="" required />
                                                        <div class="invalid-feedback">
                                                            Security code required
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="d-flex align-items-start gap-3 mt-4">
                                                <button type="button" class="btn btn-light btn-label previestab" data-previous="v-pills-bill-address-tab">
                                                    <i class="ri-arrow-left-line label-icon align-middle fs-16 me-2"></i> Back to Shipping Info
                                                </button>
                                                <button type="button" class="btn btn-success btn-label right ms-auto nexttab nexttab" data-nexttab="v-pills-finish-tab">
                                                    <i class="ri-arrow-right-line label-icon align-middle fs-16 ms-2"></i> Order Complete
                                                </button>
                                            </div>
                                        </div>
                                        <!-- end tab pane -->
                                        <div class="tab-pane fade" id="v-pills-finish" role="tabpanel" aria-labelledby="v-pills-finish-tab">
                                            <div class="text-center pt-4 pb-2">
                                                <div class="mb-4">
                                                    <lord-icon src="https://cdn.lordicon.com/lupuorrc.json" trigger="loop" colors="primary:#0ab39c,secondary:#405189" style="width: 120px; height: 120px;"></lord-icon>
                                                </div>
                                                <h5>Your Order is Completed !</h5>
                                                <p class="text-muted">You Will receive an order confirmation email with details of your order.</p>
                                            </div>
                                        </div>
                                        <!-- end tab pane -->
                                    </div>
                                    <!-- end tab content -->
                                </div>
                            </div>
                        </div>
                        <!-- end row -->
                    </div>
                </div>
            </div>
            <!-- end -->
        </div>
        <!-- end col -->
    </div>
</div>
@endsection
@section('scripts') @parent
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.9.2/parsley.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.9.2/parsley.js"></script>
<script>
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