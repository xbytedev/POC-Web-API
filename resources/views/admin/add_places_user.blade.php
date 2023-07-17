@extends('component.master')

@section('styles') @parent

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet" type="text/css"/>

<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>

@endsection

@section('title','Assign Places')

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
        <form data-parsley-validate method="post" enctype="multipart/form-data" action="{{url('insert_people_in_place')}}">
            @csrf
            <div class="row">
                <div class="col-md-12">
                    <h2 class="text-center">{{$places->Name}} <i class="fas fa-map-marker-alt" style='font-size:30px;color:black'></i></h2>
                </div>
                <input type="hidden" name="place_id" value="{{$places->id}}">
                @foreach($user_details as $user_details_data)
                    <div class="col-md-6 mt-5">
                        <table id="example" class="table table-striped text-left border dataTable no-footer" style="width: 100%;" aria-describedby="example_info">
                            <tbody>
                                <tr class="border">
                                    <td style="width: 412px;" class="border"><b class="ml-3" style="font-size: 16px;">{{$user_details_data->email}}</b></td>
                                    <td class="border"><input @if(in_array($user_details_data->id,$user_place)) checked @endif style="height:25px;width:25px;" type="checkbox" value="{{$user_details_data->id}}" name="user[]"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                @endforeach
            </div>
            <div class="mt-5">
                <button type="submit" class="btn btn-primary">Submit</button> 
                <a href="{{url('places')}}" class="btn btn-danger">Cancel</a>
            </div>
        </form>
    </div>
</div>

@endsection

@section('scripts') @parent

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

@endsection