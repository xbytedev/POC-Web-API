@extends('component.master')

@section('styles') @parent

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css"/>

@endsection

@section('title','Feedback')

@section('content')

@if(Session::has('success'))

<div class="alert alert-primary">

  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>

  <strong>{{Session::get('success')}}</strong>

</div>

@endif

@if(Session::has('error'))

<div class="alert alert-danger alert-dismissible fade show" role="alert">

    <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>

    <strong>{{ Session::get('error') }}</strong>

</button>
</div>
@endif
<div class="card">
    
    <div class="card-body">

        <table id="example" class="table table-striped text-left border" style="width:100%">

            <thead class="border">

                <tr>

                    <th><b>SR.</b></th>
                    
                    <th><b>Trip</b></th>

                    <th><b>Trip start date</b></th>
                    
                    <th><b>Trip end date</b></th>

                    <th><b>User Name</b></th>
                    
                    <th><b>Action</b></th>

                </tr>

            </thead>

            <tbody class="border">

                @foreach($feedback as $key=> $feedback_data)
                    <tr>
                        <td>{{$key+1}}</td>
                        <td>@if(isset($feedback_data->trips->trip_name)) {{$feedback_data->trips->trip_name}} @endif</td>
                        <td>@if(isset($feedback_data->trips->trip_start_date)) {{$feedback_data->trips->trip_start_date}} @endif</td>
                        <td>@if(isset($feedback_data->trips->trip_end_date)) {{$feedback_data->trips->trip_end_date}} @endif</td>
                        <td>
                            @if($feedback_data->user_type == 'created_By')
                                @if(isset($feedback_data->create_bys->name)) {{$feedback_data->create_bys->name}} @endif
                            @else
                                @if(isset($feedback_data->user_only->name)) {{$feedback_data->user_only->name}} @endif
                            @endif
                        </td>
                        <td><a href="{{url('view_feedback_details_data/'.$feedback_data->id)}}" class="btn btn-sm btn-primary"><i class="fa fa-eye"></i></a></td>
                    </tr>
                @endforeach

            </tbody>

        </table>

    </div>

</div>

@endsection

@section('scripts') @parent

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>

<script>

    $(document).ready(function() {

        $('#example').DataTable();

    });

</script>
@endsection