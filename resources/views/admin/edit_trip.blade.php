@extends('component.master')

@section('styles') @parent

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet" type="text/css"/>

<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>

@endsection

@section('title','Edit Trip')

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

<div class="card">

    <div class="card-body">

        <form data-parsley-validate method="post" enctype="multipart/form-data" action="{{url('edit_update_trip/'.$trip_data->id)}}">
            @csrf
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Trip Name</label>
                        <input type="text" name="name" value="{{$trip_data->trip_name}}" required class="form-control" id="exampleInputEmail1" placeholder="Name">
                    </div><br>
                </div>

                <div class="col-md-6">
                    <label for="dateInput" class="form-label">Start Date</label>
                    <input type="date" value="{{$trip_data->trip_start_date}}" class="form-control start_date" min="<?php echo date('Y-m-d', strtotime(' + 1 day')); ?>" id="dateInput" name="trip_start_date" required>
                </div>

                <div class="col-md-6">
                    <label for="dateInput1" class="form-label">End Date</label>
                    <input type="date" value="{{$trip_data->trip_end_date}}" min="<?php echo date('Y-m-d', strtotime(' + 2 day')); ?>" class="form-control end_date" id="dateInput1" name="trip_end_date" required>
                </div>
            </div>
            <div class="mt-10">
                <button type="submit" class="btn btn-primary">Submit</button> 
                <a href="{{url('trip')}}" class="btn btn-danger">Cancel</a>
            </div>
        </form>
    </div>
</div>

@endsection

@section('scripts') @parent

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

@endsection