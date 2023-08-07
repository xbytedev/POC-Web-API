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
        <form action="" method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for=""><b> Name</b></label>
                        <input type="text" class="form-control" value="{{$trip_people->name}}" name="name">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for=""><b> Family Name</b></label>
                        <input type="text" class="form-control" value="{{$trip_people->family_name}}" name="family_name">
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">
                    <label for="" class="form-label">Gender</label><br>
                        <div class="form-check form-check-inline">
                            <input @if($trip_people->gender == 'Female' || $trip_people->gender == 'female') checked @endif id="credit" name="gender" type="radio" class="form-check-input" required/>
                            <label class="form-check-label" for="credit" value="Female">Female</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input @if ($trip_people->gender == 'Male' || $trip_people->gender == 'male') checked @endif id="debit" name="gender" type="radio" value="Male" class="form-check-input" required/>
                            <label class="form-check-label" for="debit">Male</label>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="address" class="form-label">Birth Date</label>
                        <input type="date" value="{{ $trip_people->dob }}" name="dob" class="form-control" id="address" required />
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
                        <input type="text" class="form-control" name="document_number" value="{{$trip_people->document_number}}">
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Valid Untill</b></label>
                        <input type="date" class="form-control" name="valid_untill" @if(isset($trip_people->valid_untill)) value="{{$trip_people->valid_untill}}" @endif>
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
                        <label for="address" class="form-label">Residence Street Address</label>
                        <input type="text" class="form-control" value="{{ $trip_people->residence_address }}" name="residence_address" id="address" placeholder="Street Address" required />
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Residence City</b></label>
                        <input type="text" class="form-control" name="residence_city" value="{{$trip_people->residence_city}}">
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Residence Post Code</b></label>
                        <input type="text" class="form-control" name="residence_post_code" value="{{$trip_people->residence_post_code}}">
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Contacts Email</b></label>
                        <input type="text" class="form-control" name="contacts_email" value="{{$trip_people->contacts_email}}">
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for=""><b> Contacts Number</b></label>
                        <input type="text" class="form-control" name="contacts_phone" value="{{$trip_people->contacts_phone}}">
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
                        <select class="form-control" name="mean_of_transport" id="" required>
                            <option value="">Select Mean Of Transport</option>
                            @foreach ($mean_of_transport as $mean_of_transport_data)
                                <option @if ($mean_of_transport_data->id == $trip_people->mean_of_transport) selected @endif value="{{ $mean_of_transport_data->id }}">{{ $mean_of_transport_data->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for="country" class="form-label">Arrival Crossing Point</label>

                        <select class="form-select" required
                            name="arrival_crossing_point_border_crossing_point"
                            id="country">

                            <option>Select Arrival Crossing Point</option>

                            @foreach ($arrival_crossing_point as $arrival_crossing_point_data)
                                <option @if ($arrival_crossing_point_data->id == $trip_people->arrival_crossing_point_border_crossing_point) selected @endif
                                    value="{{ $arrival_crossing_point_data->id }}">
                                    {{ $arrival_crossing_point_data->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="col-md-4 mt-2">
                    <div class="form-group">
                        <label for="country" class="form-label">Border Crossing Point</label>
                        <select class="form-select" required
                            name="departure_crossing_point_border_crossing_point"
                            id="country">
                            <option>Select Border Crossing Point</option>
                            @foreach ($arrival_crossing_point as $arrival_crossing_point_data)
                                <option @if ($arrival_crossing_point_data->id ==  $trip_people->departure_crossing_point_border_crossing_point) selected @endif
                                    value="{{ $arrival_crossing_point_data->id }}">
                                    {{ $arrival_crossing_point_data->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
            <button class="btn mt-5 btn-success">Submit</button>
            <a href="{{url('view_trip_peopel/'.$trip_people->trip_id)}}" class="btn mt-5 btn-danger">Cancel</a>
        </form>
    </div>
</div>
@endsection
@section('scripts') @parent
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
@endsection