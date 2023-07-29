@extends('component.master')

@section('styles') @parent

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet" type="text/css"/>

<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>

@endsection

@section('title','Edit Group')

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

    <form data-parsley-validate method="post" enctype="multipart/form-data" action="{{url('admin_update_group/'.base64_encode($group_data->id))}}">

        @csrf

        <div class="row">

            <div class="col-md-6">

                <div class="form-group">

                    <label for="exampleInputEmail1">Name</label>

                    <input type="text" value="{{$group_data->name}}" name="name" required class="form-control" id="exampleInputEmail1" placeholder="Name">

                </div><br>

            </div>

            <div class="col-md-6">

                <div class="form-group">

                    <label for="exampleInputEmail1">Partner</label>

                    <select name="partner_id" id="partner_change" class="form-control p-2" required>
                        
                        <option value="">Select Partner</option>

                        @foreach($agent as $agent_data)

                            <option @if($group_data->partner_id == $agent_data->id) selected @endif value="{{$agent_data->id}}">{{$agent_data->name}} ({{$agent_data->email}})</option>

                        @endforeach

                    </select>

                </div><br>

            </div>

            <div class="col-md-6">

                <div class="form-group">

                    <label for="exampleInputEmail1">Agent</label>

                    <select name="agent_id" id="exampleInputEmail1" class="form-control p-2 agent_id" required>
                        <option value="">Select Agent</option>
                        @foreach($agent_datas as $agent_datas_data)
                            <option @if($group_data->agent_id == $agent_datas_data->id) selected @endif value="{{$agent_datas_data->id}}">{{$agent_datas_data->name}} ({{$agent_datas_data->email}})</option>
                        @endforeach
                    </select>

                </div><br>

            </div>
        </div>

        <div class="form-group form-check">

            <input type="checkbox" name="status" class="form-check-input" @if($group_data->status == 1) checked @endif id="exampleCheck1">

            <label class="form-check-label" for="exampleCheck1">Active</label>

        </div><br>

        <button type="submit" class="btn btn-primary">Submit</button> 
        
        <a href="{{url('admin_group')}}" class="btn btn-danger">Cancel</a>

        </form>

    </div>

</div>

@endsection

@section('scripts') @parent

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

<script>
    $(document).on("change","#partner_change",function() {
        
        var id = $(this).val();

        $.ajax({

            url:"{{url('get_partner_wise_agent')}}",//the page containing php script

            type: "POST",//request type,

            dataType: 'json',

            data: {"_token": "{{ csrf_token() }}","id": id},

            success:function(response){

                if(response.status == true){
                    $('.agent_id').html('');
                    var data = response.data;
                    $('.agent_id').append('<option value="">Select Agent</option>');
                    for (let index = 0; index < data.length; index++) {
                        const element = data[index];
                        $('.agent_id').append('<option value="'+element.id+'">'+element.name+' ('+element.email+')</option>');
                    }
                }
            }
        });
    });
</script>

@endsection