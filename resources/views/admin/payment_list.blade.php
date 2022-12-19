@extends('component.master')

@section('styles') @parent

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css"/>

@endsection

@section('title','Payment')

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
                    <a href="{{url('payment_list')}}" class="btn btn-sm btn-warning">Clear</a>
                </div>
            </div>
        </form>

        <table id="example" class="table table-striped text-left border" style="width:100%">
            <thead class="border">
                <tr>
                    <th><b>Sr.No</b></th>
                    <th><b>Date</b></th>
                    <th><b>Trip Name</b></th>
                    <th><b>Trip Number</b></th>
                    <th><b>Partner Name</b></th>
                    <th><b>Partner Id</b></th>
                    <th><b>Business Type</b></th>
                    <th><b>Amount Received</b></th>
                    <th><b>Payment</b></th>
                    <th><b>Mode Of Payment</b></th>
                </tr>
            </thead>

            <tbody class="border">
                @foreach($payment as $key=> $payment_data)
                    <tr>
                        <td>{{$key+1}}</td>
                        <td>{{$payment_data->created_at}}</td>
                        @if(isset($payment_data->trip->trip_name))
                            <td>{{$payment_data->trip->trip_name}}</td>
                        @else
                            <td></td>
                        @endif

                        <td>@if(isset($payment_data->trip->trip_number)) {{$payment_data->trip->trip_number}} @endif</td>

                        <td>@if(isset($payment_data->partner->name)) {{$payment_data->partner->name}} @endif</td>
                        
                        <td>{{$payment_data->partner->id}}</td>
                        
                        @if(!empty($payment_data->partner->business_type))
                            <td>{{$payment_data->partner->business_type}}</td>
                        @else
                            <td></td>
                        @endif

                        <td>{{$payment_data->amount}}</td>

                        @if($payment_data->card_paymant == 0)
                            <td>Card Paymant</td>
                        @else
                            <td>Regular Payment</td>
                        @endif
                        
                        <td>Cash</td>
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