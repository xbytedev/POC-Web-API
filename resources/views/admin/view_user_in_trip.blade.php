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
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label for=""><b> Name</b></label>
                    <input type="text" class="form-control" value="{{$trip_people->name}}" readonly>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label for=""><b> Family Name</b></label>
                    <input type="text" class="form-control" value="{{$trip_people->family_name}}" readonly>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <label for=""><b> Gender</b></label>
                    <input type="text" class="form-control" value="{{$trip_people->gender}}" readonly>
                </div>
            </div>
            <div class="col-md-4 mt-2">
                <div class="form-group">
                    <label for=""><b> Document Type</b></label>
                    <input type="text" class="form-control" @if(isset($trip_people->document_types->name)) value="{{$trip_people->document_types->name}}" @endif readonly>
                </div>
            </div>

            <div class="col-md-4 mt-2">
                <div class="form-group">
                    <label for=""><b> Document Number</b></label>
                    <input type="text" class="form-control" value="{{$trip_people->document_number}}" readonly>
                </div>
            </div>

            <div class="col-md-4 mt-2">
                <div class="form-group">
                    <label for=""><b> Valid Untill</b></label>
                    <input type="text" class="form-control" @if(isset($trip_people->valid_untill)) value="{{$trip_people->valid_untill}}" @endif readonly>
                </div>
            </div>

            <div class="col-md-4 mt-2">
                <div class="form-group">
                    <label for=""><b> Document Country</b></label>
                    <input type="text" class="form-control" @if(isset($trip_people->document_countrys->name)) value="{{$trip_people->document_countrys->name}}" @endif readonly>
                </div>
            </div>

            <div class="col-md-4 mt-2">
                <div class="form-group">
                    <label for=""><b> Residence Country</b></label>
                    <input type="text" class="form-control" @if(!empty($trip_people->residence_countrys->name)) value="{{$trip_people->residence_countrys->name}}" @endif readonly>
                </div>
            </div>

            <div class="col-md-4 mt-2">
                <div class="form-group">
                    <label for=""><b> Residence City</b></label>
                    <input type="text" class="form-control" value="{{$trip_people->residence_city}}" readonly>
                </div>
            </div>

            <div class="col-md-4 mt-2">
                <div class="form-group">
                    <label for=""><b> Residence Post Code</b></label>
                    <input type="text" class="form-control" value="{{$trip_people->residence_post_code}}" readonly>
                </div>
            </div>

            <div class="col-md-4 mt-2">
                <div class="form-group">
                    <label for=""><b> Contacts Email</b></label>
                    <input type="text" class="form-control" value="{{$trip_people->contacts_email}}" readonly>
                </div>
            </div>

            <div class="col-md-4 mt-2">
                <div class="form-group">
                    <label for=""><b> Contacts Number</b></label>
                    <input type="text" class="form-control" value="{{$trip_people->contacts_phone}}" readonly>
                </div>
            </div>

            <div class="col-md-4 mt-2">
                <div class="form-group">
                    <label for=""><b> Trip Data Visa Information</b></label>
                    <input type="text" class="form-control" value="{{$trip_people->trip_data_visa_information}}" readonly>
                </div>
            </div>

            <div class="col-md-4 mt-2">
                <div class="form-group">
                    <label for=""><b> Experience Date</b></label>
                    <input type="text" class="form-control" @if(!empty($trip_people->experience_date)) value="{{$trip_people->experience_date}}" @endif readonly>
                </div>
            </div>

            <div class="col-md-4 mt-2">
                <div class="form-group">
                    <label for=""><b> Visa Motive</b></label>
                    <input type="text" class="form-control" @if(isset($trip_people->visa_motives->name)) value="{{$trip_people->visa_motives->name}}" @endif readonly>
                </div>
            </div>

            <div class="col-md-4 mt-2">
                <div class="form-group">
                    <label for=""><b> Motivation Of Trip</b></label>
                    <input type="text" class="form-control" @if(isset($trip_people->motivation_of_trips->name)) value="{{$trip_people->motivation_of_trips->name}}" @endif readonly>
                </div>
            </div>

            <div class="col-md-4 mt-2">
                <div class="form-group">
                    <label for=""><b> Mean Of Transport</b></label>
                    <input type="text" class="form-control" @if(isset($trip_people->mean_of_transports->name)) value="{{$trip_people->mean_of_transports->name}}" @endif readonly>
                </div>
            </div>

            <div class="col-md-4 mt-2">
                <div class="form-group">
                    <label for=""><b> Airline</b></label>
                    <input type="text" class="form-control" value="{{$trip_people->airline}}" readonly>
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
            @if(!empty($trip_people->visa_document))
                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Document</b></label><br>
                        <img style="height: 140px;width: 60%;" src="{{asset('visa_document/'.$trip_people->visa_document)}}" alt="">
                    </div>
                </div>
            @endif
        </div>
    </div>
</div>
@endsection
@section('scripts') @parent
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
@endsection