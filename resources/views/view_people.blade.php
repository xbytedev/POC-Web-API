@extends('frontcomponent.master')

@section('content')

<div class="container-fluid">

    <div class="row">

        <div class="col">

            <div class="h-100">
                @if($trip->trip_status != 'active')
                    <div class="col-auto">
                        <a href="{{url('add_trip_wise_people/'.request('id'))}}" class="btn theme-btn text-white"> <i class="ri-add-circle-line align-middle me-1"></i> Add People</a>
                    </div>
                @endif

                <div class="row">

                    @foreach($trip_people as $trip_people_data)

                        <div class="col-xl-3 col-md-6">

                            <div class="card card-animate mt-3">

                                <a href="{{url('edit_trip_people/'.$trip_people_data->id)}}">

                                    <div class="card-body text-black">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <h4 class="card-title mb-0 flex-grow-1">{{$trip_people_data->id}}</h4>
                                                <h5 class="trip-title theme-color">{{$trip_people_data->name}}</h5>
                                            </div>
                                            <div class="col-md-6 text-end">
                                                @if($trip->trip_end_date > date("Y-m-d"))
                                                    <span class="btn btn-sm disable btn-outline-success">Valid</span>
                                                @else
                                                    <span class="btn btn-sm disable btn-outline-danger">Expired</span>
                                                @endif
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center my-3">

                                            <div class="flex-grow-1">

                                                <b>Family Name</b> 

                                                <p class="mb-0" >{{$trip_people_data->family_name}}</p>

                                            </div>

                                        

                                            <div class="flex-grow-1">

                                                <b>Birth Date</b> 

                                                <p class="mb-0">{{$trip_people_data->dob}}</p>

                                            </div>

                                        </div>

                                        <div class="d-flex align-items-center my-3">

                                            <div class="flex-grow-1">

                                                <b>ID Type</b> 

                                                <p class="mb-0" >@if(isset($trip_people_data->document_types->name)) {{$trip_people_data->document_types->name}} @endif</p>

                                            </div>

                                            <div class="flex-grow-1">

                                                <b>Document</b> 

                                                <p class="mb-0">{{$trip_people_data->document_number}}</p>

                                            </div>

                                        </div>

                                        <div class="d-flex align-items-center my-3">

                                            <div class="flex-grow-1">

                                                <b>Visa</b> 

                                                <p class="mb-0">{{$trip_people_data->experience_date}}</p>

                                            </div>

                                        </div>

                                    </div>

                                </a>

                            </div>

                        </div>

                    @endforeach
                    
                </div>

            </div>

        </div>

    </div>

</div>
@endsection