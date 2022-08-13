@extends('component.master')

@section('styles') @parent

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet" type="text/css"/>

<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>

@endsection

@section('title','Add Customer')

@section('content')

@if ($errors->any())

    <div class="alert alert-danger">

        <ul>

            @foreach ($errors->all() as $error)

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

    <form data-parsley-validate method="post" enctype="multipart/form-data" action="{{url('insert_user')}}">

        @csrf

        <div class="row">

            <div class="col-md-4">

                <div class="form-group">

                    <label for="exampleInputEmail1">Name</label>

                    <input type="text" name="name" required class="form-control" id="exampleInputEmail1" placeholder="Customer Name">

                </div><br>

            </div>

            <div class="col-md-4">



                <div class="form-group">

                    <label for="exampleInputEmail1">Email</label>

                    <input type="email" name="email" required class="form-control" id="exampleInputEmail1" placeholder="Primary Email">

                </div><br>

            </div>

            <div class="col-md-4">

                <div class="form-group">

                    <label for="exampleInputEmail1">Contact No.</label>

                    <input type="number" name="number" required class="form-control" id="exampleInputEmail1" placeholder="Contact No.">

                </div><br>

            </div>

        </div>

        <div class="row">

            <div class="col-md-4">

                <div class="form-group">

                    <label for="exampleInputEmail1">Gender</label>

                    <input type="text" name="gender" required class="form-control" id="exampleInputEmail1" placeholder="Gender">

                </div><br>

            </div>

            <div class="col-md-4">

                <div class="form-group">

                    <label for="exampleInputEmail1">Image</label>

                    <input type="file" name="image" required class="form-control" id="exampleInputEmail1" placeholder="image">

                </div><br>

            </div>

            <div class="col-md-4">

                <div class="form-group">

                    <label for="exampleInputEmail1">Role</label>

                    <input type="text" name="role" value="enduser" required class="form-control" id="exampleInputEmail1" placeholder="Role" readonly>

                </div><br>

            </div>

        </div>

        <div class="row">

            <div class="col-md-4">

                <div class="form-group">

                    <label for="exampleInputEmail1">Address</label>

                    <textarea name="address" id="" class="form-control" rows="4"></textarea>

                </div>

            </div>

            <div class="col-md-4">

                <div class="form-group">

                    <label for="exampleInputEmail1">Password</label>

                    <input type="password" name="password" required class="form-control" id="exampleInputEmail1" placeholder="Password">

                </div><br>

            </div>

            <div class="col-md-4">

                <div class="form-group">

                    <label for="exampleInputEmail1">Date of birth</label>

                    <input type="date" name="dob" required class="form-control" id="exampleInputEmail1" placeholder="date">

                </div><br>

            </div>

        </div>

        <div class="form-group form-check">

            <input type="checkbox" name="status" class="form-check-input" checked id="exampleCheck1">

            <label class="form-check-label" for="exampleCheck1">Status</label>

        </div><br>

        <button type="submit" class="btn btn-primary">Submit</button> <a href="{{url('user_list')}}" class="btn btn-danger">Cancel</a>

        </form>

    </div>

</div>

@endsection

@section('scripts') @parent

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

@endsection