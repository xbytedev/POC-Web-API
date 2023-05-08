@extends('component.master')

@section('styles') @parent

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css"/>

@endsection

@section('title','Agent')

@section('content')

@if(Session::has('success'))

<div class="alert alert-primary">

  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>

  <strong>{{Session::get('success')}}</strong>

</div>

@endif

@if(Session::has('error'))

    <div class="alert alert-danger alert-dismissible fade show" role="alert">

        
        <strong>{{ Session::get('error') }}</strong>
        
        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>

        </button>

    </div>

@endif

<div class="card">
    <div class="card-header border-0 pt-6">
        <div class="col-md-12">
            <div class="text-end">
                <a href="{{url('add_agent')}}" class="btn btn-sm btn-primary">Add Agent</a>
            </div>
        </div>
    </div>

    <div class="card-body">

        
        <table id="example" class="table table-striped text-left border" style="width:100%">

            <thead class="border">

                <tr>

                    <th><b>SR.</b></th>

                    <th><b>Username</b></th>

                    <th><b>Name</b></th>

                    <th><b>Created By</b></th>

                    <th><b>Date</b></th>

                    <th><b>status</b></th>

                    <th><b>Action</b></th>

                </tr>

            </thead>

            <tbody class="border">

                @foreach($agent as $key=> $agent_data)
                    <tr>
                        <td>{{$key+1}}</td>
                        <td>{{$agent_data->email}}</td>
                        <td>{{$agent_data->name}}</td>
                        <td>{{$agent_data->created_by_name->name}}</td>
                        <td>{{date('d-m-Y', strtotime($agent_data->created_at))}}</td>
                        <td>@if($agent_data->status == 1) <p style="color:green">Active</p> @else <p style="color:red">Deactive<p> @endif</td>
                        <th><b> <a href="{{url('edit_agent/'.$agent_data->id)}}" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i></a></b></th>
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

            "order": [[ 5, "asc" ]],

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