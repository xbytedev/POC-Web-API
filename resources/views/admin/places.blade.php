@extends('component.master')

@section('styles') @parent

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css"/>

@endsection

@section('title','Places')

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
    <div class="card-body">
        <div class="row">
            <div class="col-md-8">
                <form action="{{url('importCsv')}}" method="post" enctype='multipart/form-data' class="p-11">
                    @csrf
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label for="csv_files">Places CSV</label>
                                <input type="file" name="file" required class="form-control" id="csv_files">
                            </div><br>
                        </div>
                        <div class="col-md-4">
                            <br>
                            <button class="btn btn-primary">Submit</button>
                        </div>
                        
                    </div>
                </form>
            </div>
            <div class="col-md-4 text-end mt-10">
                <br>
                <a href="{{url('demo.csv')}}" class="btn btn-info" download>Download Format</a>
            </div><hr>
        </div>
        <div class="card-header border-0 pt-6">
            <div class="col-md-12">
                <div class="text-end">
                    <a href="{{url('add_places')}}" class="btn btn-sm btn-primary">Add Places</a>
                </div>
            </div>
        </div>
        <table id="example" class="table table-striped text-left border" style="width:100%">
            <thead class="border">
                <tr>
                    <th><b>SR.</b></th>
                    <th><b>Name</b></th>
                    <th><b>Category</b></th>
                    <th><b>Region</b></th>
                    <th><b>City</b></th>
                    <th><b>Latitude</b></th>
                    <th><b>Longitude</b></th>
                    <th><b>Action</b></th>
                </tr>
            </thead>
            <tbody class="border">

                @foreach($places as $key=> $places_data)
                    <tr> 
                        <td>{{$key+1}}</td>
                        <td>{{$places_data->Name}}</td>
                        <td>{{$places_data->Category}}</td>
                        <td>{{$places_data->Region}}</td>
                        <td>{{$places_data->City}}</td>
                        <td>{{$places_data->Latitude}}</td>
                        <td>{{$places_data->Longitude}}</td>
                        <td><a href="{{url('edit_places/'.base64_encode($places_data->id))}}" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i></a> <a data-id="{{$places_data->id}}" class="btn btn-sm btn-danger delete_place"><i class="fa fa-trash"></i></a></td>
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
            lengthMenu: [ 10, 25, 50, 75, 100 ],
            // "pageLength": 50,
            dom: 'Bfrtip'
        });

    });

    $(document).on("click",".delete_place",function() {

        Swal.fire({

        title: 'Are you sure?',

        text: "You won't to delete this!",

        icon: 'warning',

        showCancelButton: true,

        confirmButtonColor: '#3085d6',

        cancelButtonColor: '#d33',

        confirmButtonText: 'Yes, delete it!'

        }).then((result) => {

            if(result.isConfirmed) {

                var id = $(this).data('id');
                
                $.ajax({

                    url:"{{url('delete_place')}}",//the page containing php script

                    type: "POST",//request type,

                    dataType: 'json',

                    data: {"_token": "{{ csrf_token() }}","id": id},

                    success:function(response){

                        if(response.status == true){

                            Swal.fire(

                                'Deleted!',

                                response.message,

                                'success'

                            )
                        }else{
                            Swal.fire(

                                'Oops!',

                                response.message,

                                'warning'

                            )
                        }
                        

                        location.reload();

                    }

                });

            }

        })

    });
</script>



@endsection