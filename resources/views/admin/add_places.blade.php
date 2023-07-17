@extends('component.master')

@section('styles') @parent

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet" type="text/css"/>

<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>

@endsection

@section('title','Add Places')

@section('content')

@if($errors->any())

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
        <form data-parsley-validate method="post" enctype="multipart/form-data" action="{{url('insert_place')}}">
            @csrf
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Name</label>
                        <input type="text" name="Name" required class="form-control" id="exampleInputEmail1" placeholder="Name">
                    </div><br>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Category</label>
                        <input type="text" name="Category" required class="form-control" id="exampleInputEmail1" placeholder="Category">
                    </div><br>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Attraction_Type</label>
                        <input type="text" name="Attraction_Type" required class="form-control" id="exampleInputEmail1" placeholder="Attraction_Type">
                    </div><br>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Region</label>
                        <input type="text" name="Region" required class="form-control" id="exampleInputEmail1" placeholder="Region">
                    </div><br>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Rayon</label>
                        <input type="text" name="Rayon" required class="form-control" id="exampleInputEmail1" placeholder="Rayon">
                    </div><br>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">City</label>
                        <input type="text" name="City" class="form-control" placeholder="City">
                    </div><br>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Address</label>
                        <input type="text" name="Address" class="form-control" placeholder="Address">
                    </div><br>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Website</label>
                        <input type="text" name="Website" class="form-control" placeholder="Website">
                    </div><br>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Telephone</label>
                        <input type="text" name="Telephone" class="form-control" placeholder="Telephone">
                    </div><br>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <input type="text" name="Email" class="form-control" placeholder="Email">
                    </div><br>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Latitude</label>
                        <input type="text" name="Latitude" class="form-control" placeholder="Latitude">
                    </div><br>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Longitude</label>
                        <input type="text" name="Longitude" class="form-control" placeholder="Longitude">
                    </div><br>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button> 
            <a href="{{url('places')}}" class="btn btn-danger">Cancel</a>
        </form>
    </div>
</div>

@endsection

@section('scripts') @parent

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

@endsection