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
                                    <div class="nav flex-column custom-nav nav-pills" role="tablist"
                                        aria-orientation="vertical">
                                        <button class="nav-link" id="v-pills-bill-info-tab" data-bs-toggle="pill"
                                            data-bs-target="#v-pills-bill-info" type="button" role="tab"
                                            aria-controls="v-pills-bill-info" aria-selected="true">
                                            <span class="step-title me-2">
                                                <i class="ri-close-circle-fill step-icon me-2"></i>
                                                Trip
                                            </span>
                                        </button>
                                        <button class="nav-link active click_button_People" id="v-pills-bill-address-tab "
                                            data-bs-toggle="pill" data-bs-target="#v-pills-bill-address" type="button"
                                            role="tab" aria-controls="v-pills-bill-address" aria-selected="false">
                                            <!-- disabled -->
                                            <span class="step-title me-2">
                                                <i class="ri-close-circle-fill step-icon me-2"></i>
                                                2 People
                                            </span>
                                        </button>
                                        <!-- <button class="nav-link" disabled>
                                            <span class="step-title me-2">
                                                <i class="ri-close-circle-fill step-icon me-2"></i>
                                                3 Pay Fee
                                            </span>
                                        </button> -->
                                        <button class="nav-link" disabled>
                                            <span class="step-title me-2">
                                                <i class="ri-close-circle-fill step-icon me-2"></i>
                                                3 Get Card
                                            </span>
                                        </button>
                                    </div>
                                    <!-- end nav -->
                                </div>
                                <!-- end col-->
                                <div class="col-lg-7 mx-auto">
                                    <div class="px-lg-4">
                                        <div class="tab-content">
                                            <div class="tab-pane fade" id="v-pills-bill-info" role="tabpanel"
                                                aria-labelledby="v-pills-bill-info-tab">
                                                <!--  <div>
                                                    <h5>Billing Info</h5>
                                                    <p class="text-muted">Fill all information below</p>
                                                </div>-->
                                                <div>
                                                    <div class="row g-3">
                                                        <div class="col-sm-12">
                                                            <label for="firstName" class="form-label">Trip Name</label>
                                                            <input type="text" class="form-control trip_name"
                                                                id="firstName" placeholder="Enter Trip Name"
                                                                value="{{ $trip->trip_name }}" />
                                                            <p class="error_message_trip_name" style="color:red"></p>
                                                        </div>
                                                        <input type="hidden" name="id" class="trip_id"
                                                            value="{{ $trip->id }}">

                                                        <div class="col-sm-6">
                                                            <label for="dateInput" class="form-label">Start Date</label>
                                                            <input type="date" value="{{ $trip->trip_start_date }}"
                                                                class="form-control start_date" id="dateInput">
                                                            <p style="color:red" class="error_message_start_date"></p>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <label for="dateInput" class="form-label">End Date</label>
                                                            <input type="date" value="{{ $trip->trip_end_date }}"
                                                                class="form-control end_date" id="dateInput">
                                                            <p style="color:red" class="error_message_end_date"></p>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="d-flex align-items-start gap-3 mt-4">
                                                    <button type="button"
                                                        class="btn btn-success btn-label right ms-auto nexttab nexttab save_trip"
                                                        data-nexttab="v-pills-bill-address-tab">
                                                        <i
                                                            class="ri-arrow-right-line label-icon align-middle fs-16 ms-2"></i>Save
                                                    </button>
                                                </div>
                                            </div>
                                            <!-- end tab pane -->
                                            <div class="tab-pane fade active show" id="v-pills-bill-address" role="tabpanel"
                                                aria-labelledby="v-pills-bill-address-tab">
                                                <form action="{{ url('add_trip_TripPeople') }}" method="post"
                                                    enctype="multipart/form-data" class="needs-validation" novalidate>
                                                    @csrf
                                                    <div>
                                                        <input type="hidden" value="{{ $trip->id }}"
                                                            class="append_trip_id" name="trip_id">
                                                        <div class="col-12">
                                                            <label for="address" class="form-label">Select person</label>
                                                            <select name=""
                                                                class="form-control get_trip_people_datas" id="">
                                                                <option value="">Select person</option>
                                                                @if(!empty($user_list))
                                                                    @foreach ($user_list as $user_list_data)
                                                                        <option value="{{ $user_list_data->id }}">
                                                                            {{ $user_list_data->name }}({{$user_list_data->contacts_email}})</option>
                                                                    @endforeach
                                                                @endif
                                                            </select>
                                                        </div>
                                                        <div class="row g-3">
                                                            <div class="col-12">
                                                                <label for="address" class="form-label">Name</label>
                                                                <input type="text" class="form-control name"
                                                                    name="name" id="address" placeholder="Name"
                                                                    required />
                                                            </div>
                                                            <div class="col-12">
                                                                <label for="address" class="form-label">Family
                                                                    Name</label>
                                                                <input type="text" class="form-control family_name"
                                                                    name="family_name" id="address"
                                                                    placeholder="Family Name" required />
                                                            </div>

                                                            <div class="col-12">
                                                                <div class="my-3">
                                                                    <label for=""
                                                                        class="form-label">Gender</label><br>
                                                                    <div class="form-check form-check-inline">
                                                                        <input id="credit" name="gender"
                                                                            type="radio" class="form-check-input female"
                                                                            checked required />
                                                                        <label class="form-check-label" for="credit"
                                                                            value="Female">Female</label>
                                                                    </div>
                                                                    <div class="form-check form-check-inline">
                                                                        <input id="debit" name="gender"
                                                                            type="radio" value="Male"
                                                                            class="form-check-input male" required />
                                                                        <label class="form-check-label"
                                                                            for="debit">Male</label>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-12">
                                                                <label for="address" class="form-label">Birth
                                                                    Date</label>
                                                                <input type="date" max="<?php echo date('Y-m-d'); ?>" name="dob" class="form-control dob" id="address" required/>
                                                            </div>

                                                            <div class="col-12">
                                                                <label for="">Document Type</label>
                                                                <select name="document_type" id="document_type"
                                                                    class="form-control document_type" required>
                                                                    <option value="">Select Document Type</option>
                                                                    @foreach($document_type as $document_type_data)
                                                                        <option id="{{ $document_type_data->id }}" value="{{ $document_type_data->id }}">{{ $document_type_data->name }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>

                                                            <div class="col-12">
                                                                <label for="address2" class="form-label">Document Number</label>
                                                                <input type="text" class="form-control document_number"
                                                                    name="document_number" id="address2"
                                                                    placeholder="Document Number" required />
                                                            </div>

                                                            <div class="col-12">
                                                                <label for="address" class="form-label">Valid Until</label>
                                                                <input type="date" name="valid_untill"
                                                                    class="form-control valid_untill" id="address"
                                                                    required />
                                                            </div>

                                                            <div class="col-md-12">
                                                                <label for="country" class="form-label">Country</label>
                                                                <select class="form-select country" name="document_country" id="country"  required>
                                                                    <option>Select Country</option>
                                                                    @foreach($country as $country_data)
                                                                        <option class="document_country_{{ $country_data->id }}" value="{{ $country_data->id }}">{{ $country_data->name }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                            <!-- <div class="col-md-6">
                                                                <label for="state" class="form-label">Upload Document</label> <input type="file" name="document_id_data" class="form-control document_id_data" required>
                                                            </div> -->
                                                        </div>
                                                        <!-- <hr class="my-4 text-muted"/> -->
                                                        <br>
                                                        <h4>Residence</h4>
                                                        <div class="col-12">
                                                            <label for="address" class="form-label">Street
                                                                Address</label>
                                                            <input type="text" class="form-control residence_address"
                                                                name="residence_address" id="address"
                                                                placeholder="Street Address" required />
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <label for="country" class="form-label">Country</label>
                                                                <select name="residence_country"
                                                                    class="form-select residence_country" id="country"
                                                                    required>
                                                                    <option>Select Country</option>
                                                                    @foreach ($country as $country_data)
                                                                        <option
                                                                            class="residence_country_{{ $country_data->id }}"
                                                                            value="{{ $country_data->id }}">
                                                                            {{ $country_data->name }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>

                                                            <div class="col-4">
                                                                <label for="address" class="form-label">City</label>
                                                                <input type="text" name="residence_city"
                                                                    class="form-control residence_city" id="address"
                                                                    placeholder="City" required />
                                                            </div>

                                                            <div class="col-4">
                                                                <label for="address" class="form-label">Postal
                                                                    Code</label>
                                                                <input type="text" name="residence_post_code"
                                                                    class="form-control residence_post_code"
                                                                    id="address" placeholder="Postal Code" required />
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <h4>Contacts</h4>
                                                        <div class="col-12">
                                                            <label for="address" class="form-label">Email</label>
                                                            <input type="text" name="contacts_email"
                                                                class="form-control contacts_email" id="address"
                                                                placeholder="Email" required />
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-12">
                                                                <label for="address" class="form-label">Phone</label>
                                                                <input type="number" required name="contacts_phone"
                                                                    class="form-control contacts_phone" id="address"
                                                                    placeholder="Phone" />
                                                            </div>
                                                            
                                                            <div class="col-12">
                                                                <label for="address" class="form-label">Phone</label>
                                                                <input type="number" required name="contacts_phone"
                                                                    class="form-control contacts_phone" id="address"
                                                                    placeholder="Phone" />
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <!-- <h4>Trip Data</h4> -->
                                                        <!-- <div class="col-12">
                                                            <label for="address" class="form-label">Visa Number</label>
                                                            <input type="text" name="trip_data_visa_information"
                                                                class="form-control trip_data_visa_information"
                                                                id="address" placeholder="Visa Number" />
                                                        </div>
                                                        <div class="col-12">
                                                            <label for="address" class="form-label">Expiration
                                                                Date</label>
                                                            <input type="date" name="experience_date"
                                                                class="form-control experience_date" id="address" />
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <label for="address" class="form-label">Visa
                                                                    motive</label>
                                                                <select class="form-control visa_motive"
                                                                    name="visa_motive" id="">
                                                                    <option value="">Select visa motive</option>
                                                                    @foreach ($motivation_of_trip as $motivation_of_trip_data)
                                                                        <option class="visa_motive_{{ $motivation_of_trip_data->id }}"
                                                                            value="{{ $motivation_of_trip_data->id }}">
                                                                            {{ $motivation_of_trip_data->name }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                            <div class="col-6">
                                                                <label for="address" class="form-label">Upload Visa Document</label>
                                                                <input type="file" name="visa_document"
                                                                    class="form-control visa_document">
                                                            </div>
                                                        </div>
                                                        <br> -->
                                                        <h4>Motivation Of Trip</h4>
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <label for="address"
                                                                    class="form-label">Motivation</label>
                                                                <select class="form-control motivation_of_trip"
                                                                    name="motivation_of_trip" id="" required>
                                                                    <option value="">Select Motivation</option>
                                                                    @foreach ($motivation_of_trip as $motivation_of_trip_data)
                                                                        <option
                                                                            class="motivation_of_trip_{{ $motivation_of_trip_data->id }}"
                                                                            value="{{ $motivation_of_trip_data->id }}">
                                                                            {{ $motivation_of_trip_data->name }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                            <div class="col-6">
                                                                <label for="address" class="form-label">Mean Of
                                                                    Transport</label>
                                                                <select class="form-control mean_of_transport"
                                                                    name="mean_of_transport" id="" required>
                                                                    <option value="">Select Mean Of Transport
                                                                    </option>
                                                                    @foreach ($mean_of_transport as $mean_of_transport_data)
                                                                        <option
                                                                            class="mean_of_transport_{{ $mean_of_transport_data->id }}"
                                                                            value="{{ $mean_of_transport_data->id }}">
                                                                            {{ $mean_of_transport_data->name }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <!-- <div class="col-12">
                                                            <label for="address" class="form-label">Document
                                                                number/PNR</label>
                                                            <input type="text" class="form-control document_number_pnr"
                                                                name="document_number_pnr" required
                                                                placeholder="Document number/PNR">
                                                        </div> -->
                                                        <br>
                                                        <!-- <h4>Originating From</h4> -->
                                                        <!-- <div class="row">
                                                            <div class="col-md-4">
                                                                <label for="country" class="form-label">Country</label>
                                                                <select class="form-select originating_from_country"
                                                                    required name="originating_from_country"
                                                                    id="country">
                                                                    <option>Select Country</option>
                                                                    @foreach ($country as $country_data)
                                                                        <option
                                                                            class="originating_from_country_{{ $country_data->id }}"
                                                                            value="{{ $country_data->id }}">
                                                                            {{ $country_data->name }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>

                                                            <div class="col-4">
                                                                <label for="address" class="form-label">City</label>
                                                                <input type="text"
                                                                    class="form-control orginating_form_city" required
                                                                    name="orginating_form_city" id="address"
                                                                    placeholder="City" />
                                                            </div>

                                                            <div class="col-4">
                                                                <label for="address" class="form-label">Via</label>
                                                                <input type="text" name="originating_from_via"
                                                                    class="form-control originating_from_via"
                                                                    id="address" placeholder="Via" />
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <h4>Hotel Details</h4>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <label for="address" class="form-label">Hotel
                                                                    Name</label>
                                                                <input type="text" class="form-control hotel_name"
                                                                    name="hotel_name" id="address"
                                                                    placeholder="Hotel Name" />
                                                            </div>
                                                            <div class="col-md-6">
                                                                <label for="address" class="form-label">Room No.</label>
                                                                <input type="text" class="form-control room_no"
                                                                    name="room_no" id="address"
                                                                    placeholder="Room No." />
                                                            </div>
                                                        </div> -->
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <label for="address" class="form-label">Arrival
                                                                    Date</label>
                                                                <input type="date" min="{{$trip->trip_start_date}}" max="{{$trip->trip_end_date}}" name="arrival_date"
                                                                    class="form-control arrival_date" id="address" />
                                                            </div>
                                                            <div class="col-md-6">
                                                                <label for="address" class="form-label">Departure
                                                                    Date</label>
                                                                <input type="date" name="dep_date" min="{{$trip->trip_start_date}}" max="{{$trip->trip_end_date}}" class="form-control dep_date" id="address" />
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <h4>Arrival Crossing Point</h4>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <label for="country" class="form-label">Arrival Crossing Point</label>
                                                                <select class="form-select arrival_crossing_point_border_crossing_point" required name="arrival_crossing_point_border_crossing_point" id="country">
                                                                    <option>Select Arrival Crossing Point</option>
                                                                    @foreach ($arrival_crossing_point as $arrival_crossing_point_data)
                                                                        <option
                                                                            class="arrival_crossing_point_border_crossing_point_{{ $arrival_crossing_point_data->id }}"
                                                                            value="{{ $arrival_crossing_point_data->id }}">
                                                                            {{ $arrival_crossing_point_data->name }}
                                                                        </option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                            <!-- <div class="col-md-6">
                                                                <label for="address" class="form-label">Arrival Date</label>
                                                                <input type="date" min="{{$trip->trip_start_date}}" max="{{$trip->trip_end_date}}" required name="arrival_crossing_point_arrival_date" class="form-control arrival_crossing_point_arrival_date" id="address"/>
                                                            </div> -->
                                                        </div>
                                                        <br>
                                                        <h4>Departure Crossing Point</h4>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <label for="country" class="form-label">Border Crossing
                                                                    Point</label>
                                                                <select
                                                                    class="form-select departure_crossing_point_border_crossing_point"
                                                                    required
                                                                    name="departure_crossing_point_border_crossing_point"
                                                                    id="country">
                                                                    <option>Select Border Crossing Point</option>
                                                                    @foreach ($arrival_crossing_point as $arrival_crossing_point_data)
                                                                        <option
                                                                            class="departure_crossing_point_border_crossing_point_{{ $arrival_crossing_point_data->id }}"
                                                                            value="{{ $arrival_crossing_point_data->id }}">
                                                                            {{ $arrival_crossing_point_data->name }}
                                                                        </option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                            <!-- <div class="col-md-6">
                                                                <label for="address" class="form-label">Departure
                                                                    Date</label>
                                                                <input type="date" min="{{$trip->trip_start_date}}" max="{{$trip->trip_end_date}}"
                                                                    name="departure_crossing_point_departure_date"
                                                                    class="form-control departure_crossing_point_departure_date"
                                                                    id="address" required />
                                                            </div> -->
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="align-items-start gap-3 mt-4">
                                                                <button type="submit" name="add_person"
                                                                    class="btn btn-primary btn-label left ms-auto nexttab nexttab"
                                                                    data-nexttab="v-pills-payment-tab">
                                                                    <i
                                                                        class="ri-arrow-left-line label-icon m-lg-0 align-middle fs-16 ms-2"></i>Add
                                                                    person to this trip
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="align-items-end text-end gap-3 mt-4">
                                                                <button type="submit"
                                                                    class="btn btn-success btn-label right ms-auto nexttab nexttab"
                                                                    data-nexttab="v-pills-payment-tab">
                                                                    <i
                                                                        class="ri-arrow-right-line label-icon align-middle fs-16 ms-2"></i>Go
                                                                    to Payment
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <!-- end tab pane -->
                                            <div class="tab-pane fade" id="v-pills-payment" role="tabpanel"
                                                aria-labelledby="v-pills-payment-tab">
                                                <div>
                                                    <h5>Payment</h5>
                                                    <p class="text-muted">Fill all information below</p>
                                                </div>
                                                <div>
                                                    <div class="my-3">
                                                        <div class="form-check form-check-inline">
                                                            <input id="credit" name="paymentMethod" type="radio"
                                                                class="form-check-input" checked required />
                                                            <label class="form-check-label" for="credit">Credit
                                                                card</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input id="debit" name="paymentMethod" type="radio"
                                                                class="form-check-input" required />
                                                            <label class="form-check-label" for="debit">Debit
                                                                card</label>
                                                        </div>
                                                        <div class="form-check form-check-inline">
                                                            <input id="paypal" name="paymentMethod" type="radio"
                                                                class="form-check-input" required />
                                                            <label class="form-check-label" for="paypal">PayPal</label>
                                                        </div>
                                                    </div>

                                                    <div class="row gy-3">
                                                        <div class="col-md-12">
                                                            <label for="cc-name" class="form-label">Name on card</label>
                                                            <input type="text" class="form-control" id="cc-name"
                                                                placeholder="" required />
                                                            <small class="text-muted">Full name as displayed on
                                                                card</small>
                                                            <div class="invalid-feedback">
                                                                Name on card is required
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <label for="cc-number" class="form-label">Credit card
                                                                number</label>
                                                            <input type="text" class="form-control" id="cc-number"
                                                                placeholder="" required />
                                                            <div class="invalid-feedback">
                                                                Credit card number is required
                                                            </div>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <label for="cc-expiration"
                                                                class="form-label">Expiration</label>
                                                            <input type="text" class="form-control" id="cc-expiration"
                                                                placeholder="" required />
                                                            <div class="invalid-feedback">
                                                                Expiration date required
                                                            </div>
                                                        </div>

                                                        <div class="col-md-3">
                                                            <label for="cc-cvv" class="form-label">CVV</label>
                                                            <input type="text" class="form-control" id="cc-cvv"
                                                                placeholder="" required />
                                                            <div class="invalid-feedback">
                                                                Security code required
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="d-flex align-items-start gap-3 mt-4">
                                                    <button type="button" class="btn btn-light btn-label previestab"
                                                        data-previous="v-pills-bill-address-tab">
                                                        <i
                                                            class="ri-arrow-left-line label-icon align-middle fs-16 me-2"></i>
                                                        Back to Shipping Info
                                                    </button>
                                                    <button type="button"
                                                        class="btn btn-success btn-label right ms-auto nexttab nexttab"
                                                        data-nexttab="v-pills-finish-tab">
                                                        <i
                                                            class="ri-arrow-right-line label-icon align-middle fs-16 ms-2"></i>
                                                        Order Complete
                                                    </button>
                                                </div>
                                            </div>
                                            <!-- end tab pane -->
                                            <div class="tab-pane fade" id="v-pills-finish" role="tabpanel"
                                                aria-labelledby="v-pills-finish-tab">
                                                <div class="text-center pt-4 pb-2">
                                                    <div class="mb-4">
                                                        <lord-icon src="https://cdn.lordicon.com/lupuorrc.json"
                                                            trigger="loop" colors="primary:#0ab39c,secondary:#405189"
                                                            style="width: 120px; height: 120px;"></lord-icon>
                                                    </div>
                                                    <h5>Your Order is Completed !</h5>
                                                    <p class="text-muted">You Will receive an order confirmation email with
                                                        details of your order.</p>
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
@section('scripts')
    @parent
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.9.2/parsley.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.9.2/parsley.js"></script>
    <script>
        $(".save_trip").click(function() {
            var start_date = $(".start_date").val();
            var trip_name = $(".trip_name").val();
            var trip_id = $(".trip_id").val();
            var end_date = $(".end_date").val();

            if (start_date) {
                $('.error_message_start_date').html('');
            } else {
                $('.error_message_start_date').html('');
                $('.error_message_start_date').append('Select Trip Start Date');
            }
            if (trip_name) {
                $('.error_message_trip_name').html('');
            } else {
                $('.error_message_trip_name').html('');
                $('.error_message_trip_name').append('Select Trip Name');
            }
            if (end_date) {
                $('.error_message_end_date').html('');
            } else {
                $('.error_message_end_date').html('');
                $('.error_message_end_date').append('Select Trip Name');
            }

            if (end_date && trip_name && start_date) {
                $.ajax({
                    url: '{{ url('add_trip') }}',
                    type: 'POST',
                    data: {
                        _token: '{{ csrf_token() }}',
                        trip_name: trip_name,
                        trip_end_date: end_date,
                        trip_start_date: start_date,
                        trip_id: trip_id
                    },
                    success: function(response) {
                        console.log(response.trip_id);
                        $(".append_trip_id").val(response.trip_id);
                        $(".click_button_People").trigger("click");
                    },
                    error: function() {},
                });
            }

        });

        $(".get_trip_people_datas").change(function() {
            var user_id = $(this).val();
            $.ajax({
                url: '{{ url('get_trip_wise_people_datas') }}',
                type: 'POST',
                data: {
                    _token: '{{ csrf_token() }}',
                    user_id: user_id
                },
                success: function(response) {
                    var data = response.data;
                    console.log(data);
                    if (data.gender == "Male" || data.gender == "male") {
                        $('.male').attr('checked', true);
                    } else {
                        $('.female').attr('checked', true);
                    }
                    @foreach ($document_type as $document_type_data)
                        if (data.document_type == {{ $document_type_data->id }}) {
                            $('#{{ $document_type_data->id }}').attr('selected', true);
                        }
                    @endforeach

                    @foreach ($country as $country_data)
                        if (data.document_country == {{ $country_data->id }}) {
                            $('.document_country_{{ $document_type_data->id }}').attr('selected',
                                true);
                        }
                    @endforeach

                    @foreach ($country as $country_data)
                        if (data.residence_country == {{ $country_data->id }}) {
                            $('.residence_country_{{ $document_type_data->id }}').attr('selected',
                                true);
                        }
                    @endforeach

                    @foreach ($motivation_of_trip as $motivation_of_trip_data)
                        if (data.visa_motive == {{ $motivation_of_trip_data->id }}) {
                            $('.visa_motive_{{ $document_type_data->id }}').attr('selected', true);
                        }
                    @endforeach

                    @foreach ($motivation_of_trip as $motivation_of_trip_data)
                        if (data.motivation_of_trip == {{ $motivation_of_trip_data->id }}) {
                            $('.motivation_of_trip_{{ $document_type_data->id }}').attr('selected',
                                true);
                        }
                    @endforeach

                    @foreach ($mean_of_transport as $mean_of_transport_data)
                        if (data.mean_of_transport == {{ $mean_of_transport_data->id }}) {
                            $('.mean_of_transport_{{ $mean_of_transport_data->id }}').attr('selected',
                                true);
                        }
                    @endforeach

                    @foreach ($country as $country_data)
                        if (data.orginating_form_country == {{ $country_data->id }}) {
                            $('.originating_from_country_{{ $country_data->id }}').attr('selected',
                                true);
                        }
                    @endforeach

                    // @foreach ($arrival_crossing_point as $arrival_crossing_point_data)
                    //     if (data.arrival_crossing_point_border_crossing_point ==
                    //         {{ $arrival_crossing_point_data->id }}) {
                    //         $('.arrival_crossing_point_border_crossing_point_{{ $arrival_crossing_point_data->id }}')
                    //             .attr('selected', true);
                    //     }
                    // @endforeach

                    // @foreach ($arrival_crossing_point as $arrival_crossing_point_data)
                    //     if (data.departure_crossing_point_border_crossing_point ==
                    //         {{ $arrival_crossing_point_data->id }}) {
                    //         $('.departure_crossing_point_border_crossing_point_{{ $arrival_crossing_point_data->id }}')
                    //             .attr('selected', true);
                    //     }
                    // @endforeach

                    $('.name').val(data.name);
                    $('.family_name').val(data.family_name);
                    $('.dob').val(data.dob);
                    $('.document_number').val(data.document_number);
                    $('.valid_untill').val(data.valid_untill);
                    $('.residence_address').val(data.residence_address);
                    $('.residence_city').val(data.residence_city);
                    $('.residence_post_code').val(data.residence_post_code);
                    $('.contacts_email').val(data.contacts_email);
                    $('.contacts_phone').val(data.contacts_phone);
                    $('.document_number_pnr').val(data.airline)
                    $('.trip_data_visa_information').val(data.trip_data_visa_information);
                    $('.experience_date').val(data.experience_date);
                    $('.motivation_of_trip').val(data.motivation_of_trip);
                    $('.orginating_form_city').val(data.orginating_form_city);
                    $('.originating_from_via').val(data.orginating_form_via);
                    // $('.hotel_name').val(data.hotel_name);
                    // $('.room_no').val(data.room_no);
                    // $('.arrival_date').val(data.arrival_date);
                    // $('.dep_date').val(data.dep_date);
                    // $('.arrival_crossing_point_arrival_date').val(data.arrival_crossing_point_arrival_date);
                    // $('.departure_crossing_point_departure_date').val(data.departure_crossing_point_departure_date);
                },
                error: function() {},
            });
        })
    </script>
@endsection
