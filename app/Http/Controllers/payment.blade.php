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
                                    <a class="nav-link click_button_People" id="v-pills-bill-address-tab "  data-bs-toggle="pill" data-bs-target="#v-pills-bill-address" type="button" role="tab" aria-controls="v-pills-bill-address" aria-selected="false">
                                    <!-- disabled -->
                                        <span class="step-title me-2">
                                            <i class="ri-close-circle-fill step-icon me-2"></i>
                                            2 People
                                        </span>
                                    </a>
                                    <button class="nav-link" id="v-pills-payment-tab" data-bs-toggle="pill" data-bs-target="#v-pills-payment" type="button" role="tab" aria-controls="v-pills-payment" aria-selected="false">
                                        <span class="step-title me-2">
                                            <i class="ri-close-circle-fill step-icon me-2"></i>
                                            3 Pay Fee
                                        </span>
                                    </button>
                                    <button class="nav-link" id="v-pills-finish-tab" data-bs-toggle="pill" data-bs-target="#v-pills-finish" type="button" role="tab" aria-controls="v-pills-finish" aria-selected="false">
                                        <span class="step-title me-2">
                                            <i class="ri-close-circle-fill step-icon me-2"></i>
                                            4 Get Card
                                        </span>
                                    </button>
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