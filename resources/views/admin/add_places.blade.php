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

        <form data-parsley-validate method="post" enctype="multipart/form-data" action="{{url('insert_agent')}}">

            @csrf
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Places Title</label>
                        <input type="text" name="places_title" required class="form-control" id="exampleInputEmail1" placeholder="Places Title">
                    </div><br>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Places Location</label>
                        <input type="text" name="name" required class="form-control" id="exampleInputEmail1" placeholder="Places Location">
                    </div><br>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Address</label>
                        <textarea name="address" class="form-control" rows="4" placeholder="Address"></textarea>
                    </div><br>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Short Description</label>
                        <textarea name="short_description" class="form-control" rows="4" placeholder="Short Description"></textarea>
                    </div><br>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Places Location</label>
                        <input type="text" name="name" required class="form-control" id="exampleInputEmail1" placeholder="Places Location">
                    </div><br>
                </div>

            </div>
                <button type="submit" class="btn btn-primary">Submit</button> 
                <a href="{{url('agent')}}" class="btn btn-danger">Cancel</a>
        </form>
    </div>
</div>

@endsection

@section('scripts') @parent

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

@endsection