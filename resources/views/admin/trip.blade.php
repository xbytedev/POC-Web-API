@extends('component.master')

@section('styles') @parent

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css"/>

@endsection

@section('title','Trips')

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
        <form action="" class="mb-3" method="get">
            <div class="row">
                <div class="col-md-3">
                    <label for="">From Date</label>
                    <input @if(isset($_GET['from_date'])) value="{{$_GET['from_date']}}" @endif type="date" name="from_date" class="form-control">
                </div>
                <div class="col-md-3">
                    <label for="">To Date</label>
                    <input @if(isset($_GET['to_date'])) value="{{$_GET['to_date']}}" @endif type="date" name="to_date" class="form-control">
                </div>
                <div class="col-md-1">
                    <label for="">Search</label><br>
                    <button type="submit" class="btn btn-sm btn-primary">Search</button>
                </div>
                <div class="col-md-2">
                    <label for="">Clear</label><br>
                    <a href="{{url('trip')}}" class="btn btn-sm btn-warning">Clear</a>
                </div>
            </div>
        </form>

        <table id="example" class="table table-striped text-left border" style="width:100%">

            <thead class="border">

                <tr>

                    <th><b>SR.</b></th>

                    <th><b>Trip Name</b></th>

                    <th><b>Trip Number</b></th>

                    <th><b>Created By</b></th>

                    <th><b>Start Date</b></th>

                    <th><b>End Date</b></th>

                    <th><b>status</b></th>

                    <th><b>View Trip</b></th>

                </tr>

            </thead>

            <tbody class="border">

                @foreach($trip as $key=> $trip_data)

                    <tr>

                        <td>{{$key+1}}</td>

                        <td>{{$trip_data->trip_name}}</td>

                        <td>{{$trip_data->trip_number}}</td>

                        <td>@if(isset($trip_data->created_by_data->name)) {{$trip_data->created_by_data->name}} @endif</td>

                        <td>{{$trip_data->trip_start_date}}</td>

                        <td>{{$trip_data->trip_end_date}}</td>
                        
                        <td> <p @if($trip_data->trip_status == 'draft') style="color:black" @elseif($trip_data->trip_status == 'active') style="color:green;" @else style="color:red;" @endif> {{$trip_data->trip_status}} </p></td>

                        <td><a href="{{url('view_trip_peopel/'.$trip_data->id)}}" class="btn btn-sm btn-primary"><i class="fa fa-eye"></i></a></td>

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

        $('#example').DataTable({

            dom: 'Bfrtip',

            buttons: [
                
                'excel'

            ]

        });

    });

    $(document).on("click","#delete_category",function() {

        Swal.fire({

        title: 'Are you sure?',

        text: "You won't to delete this customer!",

        icon: 'warning',

        showCancelButton: true,

        confirmButtonColor: '#3085d6',

        cancelButtonColor: '#d33',

        confirmButtonText: 'Yes, delete it!'

        }).then((result) => {

            if(result.isConfirmed) {

                var id = $(this).data('id');

                $.ajax({

                    url:"{{url('customer_delete')}}",//the page containing php script

                    type: "POST",//request type,

                    dataType: 'json',

                    data: {"_token": "{{ csrf_token() }}","id": id},

                    success:function(response){

                        Swal.fire(

                            'Deleted!',

                            'Your item has been deleted.',

                            'success'

                        )

                        location.reload();

                    }

                });

            }

        })

    });
</script>



@endsection