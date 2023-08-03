@extends('component.master')
@section('styles') @parent
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css"/>
@endsection
@section('title','View Trip People Details')
@section('content')
@if(Session::has('success'))
<div class="alert alert-primary">
    <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
    <strong>{{Session::get('success')}}</strong>
</div>
@endif
@if(Session::has('error'))
<div class="alert alert-danger alert-dismissible fade show" role="alert">
    <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span><strong>{{ Session::get('error') }}</strong></button>
</div>
@endif
<div class="card">
    <div class="card-body"> 
        <form action="" method="post">
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for=""><b> Name</b></label>
                        <input type="text" class="form-control" value="{{$trip_people->name}}" name="name" readonly>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for=""><b> Family Name</b></label>
                        <input type="text" class="form-control" value="{{$trip_people->family_name}}" name="family_name" readonly>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">

                    <label for="" class="form-label">Gender</label><br>

                        <div class="form-check form-check-inline">

                            <input
                                @if ($trip_people->gender == 'Female' || $trip_people->gender == 'female') checked @endif
                                id="credit" name="gender" type="radio"
                                class="form-check-input" required />

                            <label class="form-check-label" for="credit"
                                value="Female">Female</label>

                        </div>

                        <div class="form-check form-check-inline">

                            <input @if ($trip_people->gender == 'Male' || $trip_people->gender == 'male') checked @endif
                                id="debit" name="gender" type="radio"
                                value="Male" class="form-check-input"
                                required />

                            <label class="form-check-label" for="debit">Male</label>

                        </div>
                    </div>
                </div>
                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for="">Document Type</label>
                        <select name="document_type" id="" class="form-control" required>
                            <option value="">Select Document Type</option>
                            @foreach ($document_type as $document_type_data)
                                <option
                                    @if ($document_type_data->id == $trip_people->document_type) selected @endif
                                    value="{{ $document_type_data->id }}">
                                    {{ $document_type_data->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Document Number</b></label>
                        <input type="text" class="form-control" name="document_number" value="{{$trip_people->document_number}}" readonly>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Valid Untill</b></label>
                        <input type="text" class="form-control" name="valid_untill" @if(isset($trip_people->valid_untill)) value="{{$trip_people->valid_untill}}" @endif readonly>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for="country" class="form-label">Country</label>
                        <select class="form-select" name="document_country" id="country" required>
                            <option>Select Country</option>
                            @foreach ($country as $country_data)
                                <option @if($country_data->id == $trip_people->document_country) selected @endif value="{{ $country_data->id }}">{{ $country_data->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Residence City</b></label>
                        <input type="text" class="form-control" name="residence_city" value="{{$trip_people->residence_city}}" readonly>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Residence Post Code</b></label>
                        <input type="text" class="form-control" name="residence_post_code" value="{{$trip_people->residence_post_code}}" readonly>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Contacts Email</b></label>
                        <input type="text" class="form-control" name="contacts_email" value="{{$trip_people->contacts_email}}" readonly>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Contacts Number</b></label>
                        <input type="text" class="form-control" name="contacts_phone" value="{{$trip_people->contacts_phone}}" readonly>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for="address" class="form-label">Profession</label>
                        <input type="text" required value="{{ $trip_people->profession }}" name="profession"class="form-control profession" id="address" placeholder="Profession" />
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for="address" class="form-label">Motivation</label>

                        <select class="form-control" name="motivation_of_trip"
                            id="" required>

                            <option value="">Select Motivation</option>

                            @foreach($motivation_of_trip as $motivation_of_trip_data)
                                <option
                                    @if ($motivation_of_trip_data->id == $trip_people->motivation_of_trip) selected @endif
                                    value="{{ $motivation_of_trip_data->id }}">
                                    {{ $motivation_of_trip_data->name }}</option>
                            @endforeach

                        </select>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for="address" class="form-label">Mean Of Transport</label>

                        <select class="form-control" name="mean_of_transport"
                            id="" required>

                            <option value="">Select Mean Of Transport</option>

                            @foreach ($mean_of_transport as $mean_of_transport_data)
                                <option
                                    @if ($mean_of_transport_data->id == $trip_people->mean_of_transport) selected @endif
                                    value="{{ $mean_of_transport_data->id }}">
                                    {{ $mean_of_transport_data->name }}</option>
                            @endforeach

                        </select>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> orginating Form Country</b></label>
                        <input type="text" class="form-control" @if(isset($trip_people->orginating_form_countrys->name)) value="{{$trip_people->orginating_form_countrys->name}}" @endif readonly>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> orginating Form City</b></label>
                        <input type="text" class="form-control" value="{{$trip_people->orginating_form_city}}" readonly>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Orginating Form Via</b></label>
                        <input type="text" class="form-control" value="{{$trip_people->orginating_form_via}}" readonly>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Arrival Crossing Point Border Crossing Point</b></label>
                        <input type="text" class="form-control" @if(isset($trip_people->arrival_crossing->name)) value="{{$trip_people->arrival_crossing->name}}" @endif readonly>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Arrival Crossing Point Arrival Date</b></label>
                        <input type="text" class="form-control" @if(!empty($trip_people->arrival_crossing_point_arrival_date)) value="{{$trip_people->arrival_crossing_point_arrival_date}}" @endif readonly>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Departure Crossing Point Border Crossing Point</b></label>
                        <input type="text" class="form-control" @if(isset($trip_people->departure_crossing->name)) value="{{$trip_people->departure_crossing->name}}" @endif readonly>
                    </div>
                </div>
                
                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Departure Crossing Point Departure Date</b></label>
                        <input type="text" class="form-control" @if(!empty($trip_people->departure_crossing_point_departure_date)) value="{{$trip_people->departure_crossing_point_departure_date}}" @endif readonly>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Residence Address</b></label>
                        <textarea name="" class="form-control" id="" rows="5">{{$trip_people->residence_address}}</textarea>
                    </div>
                </div>
                @if(!empty($trip_people->document_id_data))
                    <div class="col-md-4 mt-2">
                        <div class="form-group">
                            <label for=""><b> Document</b></label><br>
                            <a target="_blank" href="{{asset('document_image/'.$trip_people->document_id_data)}}" class="btn btn-primary btn-sm">View</a>
                            <img style="height: 140px;width: 60%;" src="{{asset('document_image/'.$trip_people->document_id_data)}}" alt="">
                        </div>
                    </div>
                @endif
                @if(!empty($trip_people->document_image))
                    <div class="col-md-4 mt-2">
                        <div class="form-group">
                            <label for=""><b> Visa Document</b></label><br>
                            <a target="_blank" href="{{asset('visa_document/'.$trip_people->document_image)}}" class="btn btn-primary btn-sm">View</a>
                            <img style="height: 140px;width: 60%;" src="{{asset('visa_document/'.$trip_people->document_image)}}" alt="">
                        </div>
                    </div>
                @endif
            </div>
        </form>
    </div>
</div>
@endsection
@section('scripts') @parent
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
@endsection