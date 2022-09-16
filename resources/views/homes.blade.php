@extends('frontcomponent.master')
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col">
            <div class="h-100">
                <div class="row mb-3 pb-1">
                    <div class="col-12">
                        <div class="d-flex align-items-lg-center flex-lg-row flex-column">
                            <div class="mt-3 mt-lg-0">
                                <form action="javascript:void(0);">
                                    <div class="row g-3 mb-0 align-items-center">
                                        <div class="col-auto">
                                            <a href="{{url('trips')}}" class="btn theme-btn text-white"> <i class="ri-add-circle-line align-middle me-1"></i>Add Trip</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    @if(!empty($trip[0]['trip_number']))
                        @foreach($trip as $trip_data)
                            <div class="col-xl-3 col-md-6">
                                <div class="card card-animate">
                                    <a href="{{url('get_trip/'.$trip_data->id)}}">
                                        <div class="card-body text-black">
                                            <h4 class="card-title mb-0 flex-grow-1">{{$trip_data->trip_number}}</h4>
                                            <h5 class="trip-title theme-color">{{$trip_data->trip_name}}</h5>
                                            <div class="d-flex align-items-center my-3">
                                                    <div class="flex-grow-1">
                                                        <b>Trip Start Date</b> 
                                                        <p class="mb-0" >{{$trip_data->trip_start_date}}</p>
                                                    </div>
                                                
                                                    <div class="flex-grow-1">
                                                        <b>Trip End Date</b> 
                                                        <p class="mb-0">{{$trip_data->trip_end_date}}</p>
                                                    </div>
                                            </div>
                                            <div class="d-flex align-items-center my-3">
                                                <div class="flex-grow-1">
                                                    <b>Date Created</b> 
                                                    <p class="mb-0" >{{$trip_data->date_created}}</p>
                                                </div>
                                                
                                                <div class="flex-grow-1">
                                                    <b>Date Close</b> 
                                                    <p class="mb-0">{{$trip_data->date_closed}}</p>
                                                </div>
                                            </div>
                                            <div class="d-flex align-items-center my-3">
                                                <div class="flex-grow-1">
                                                    <b>Created By</b> 
                                                    <p class="mb-0">{{$trip_data->created_by_user_name}}</p>
                                                </div>
                                            
                                                
                                                <div class="flex-grow-1">
                                                    @if($trip_data->trip_status == 'draft')
                                                        <h4><span class="badge rounded-pill bg-warning">Draft</span></h4>
                                                    @else
                                                        <h4><span class="badge rounded-pill bg-success">Active</span></h4>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        @endforeach
                    @else
                        <div class="col-md-12 text-center mt-5">
                            <h2 style="color:red;">You have no TRIPS yet! <br>Add a new Trip</h2>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection