@extends('component.master')

@section('styles') @parent

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet" type="text/css"/>

<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>

@endsection

@section('title','Edit Group People')

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

    <form data-parsley-validate method="post" enctype="multipart/form-data" action="{{url('update_group_people/'.$group_people_data->id)}}">

        @csrf

        <div class="row">

            <div class="col-md-4">

                <div class="form-group">

                    <label for="exampleInputEmail1">Code</label>

                    <input type="text" name="people_code" value="{{$group_people_data->people_code}}" required class="form-control" id="exampleInputEmail1" placeholder="Code">
                    
                    <input type="hidden" name="group_id" value="{{$group_data->id}}">
                    
                    <input type="hidden" name="group_code" value="{{$group_data->group_code}}">

                </div><br>

            </div>

        </div>

        <div class="form-group form-check">

            <input type="checkbox" name="status" class="form-check-input" checked id="exampleCheck1">

            <label class="form-check-label" for="exampleCheck1">Status</label>

        </div><br>

        <button type="submit" class="btn btn-primary">Submit</button> 
        
            <a href="{{url('group_wise_people/'.request('id'))}}" class="btn btn-danger">Cancel</a>

        </form>

    </div>

</div>

@endsection

@section('scripts') @parent

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

@endsection