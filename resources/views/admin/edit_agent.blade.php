@extends('component.master')

@section('styles') @parent

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet" type="text/css"/>

<link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>

@endsection

@section('title','Edit Agent')

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

    <form data-parsley-validate method="post" enctype="multipart/form-data" action="{{url('update_agent/'.$edit_agent->id)}}">

        @csrf

        <div class="row">

            <div class="col-md-4">

                <div class="form-group">

                    <label for="exampleInputEmail1">Name</label>

                    <input type="text" name="name" value="{{$edit_agent->name}}" required class="form-control" id="exampleInputEmail1" placeholder="Name">

                </div><br>

            </div>

            <div class="col-md-4">

                <div class="form-group">

                    <label for="exampleInputEmail1">Email</label>

                    <input type="email" name="email" value="{{$edit_agent->email}}" required class="form-control" id="exampleInputEmail1" placeholder="Email">

                </div><br>

            </div>

            <div class="col-md-4">

                <div class="form-group">

                    <label for="exampleInputEmail1">Contact No.</label>

                    <input type="number" name="number" value="{{$edit_agent->number}}" required class="form-control" id="exampleInputEmail1" placeholder="Contact No.">

                </div><br>

            </div>

        </div>

        <div class="row">

            <div class="col-md-4">
                <div class="form-group">
                    <label for="exampleInputEmail1">Location</label>
                    <input type="text" name="location" value="{{$edit_agent->location}}" required class="form-control p-2" id="exampleInputEmail1" placeholder="location">
                </div><br>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <label for="exampleInputEmail1">Document name</label>
                    <input type="text" value="{{$edit_agent->document_name}}" class="form-control" name="document_name" placeholder="Document name">
                </div><br>
            </div>
        </div>

        <div class="row">

            <div class="col-md-4">

                <div class="form-group">

                    <img style="height: 135px;width: 50%;" src="{{asset('profile_image/'.$edit_agent->image)}}" alt="">

                    <label for="exampleInputEmail1">Profile Image</label>

                    <input type="file" name="image" class="form-control p-2" id="exampleInputEmail1">

                </div><br>
                
            </div>

            <div class="col-md-4">

                <div class="form-group">

                    <img style="height: 135px;width: 50%;" src="{{asset('document_image/'.$edit_agent->document_image)}}" alt="">

                    <label for="exampleInputEmail1">Document Image</label>

                    <input type="file" name="document_image" class="form-control p-2" id="exampleInputEmail1">

                </div><br>

            </div>


        </div>

        <div class="row appen_csc">
            <div class="col-md-4">
                <div class="form-group">
                    <label for="exampleInputEmail1">Country</label>
                    <select class="form-control p-2" name="country" id="">
                            <option value="">Select Country</option>
                        @foreach($country as $country_data) 
                            <option @if($edit_agent->country == $country_data->name) selected @endif value="{{$country_data->name}}">{{$country_data->name}}</option>
                        @endforeach
                    </select>
                </div><br>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <label for="exampleInputEmail1">State</label>
                    <input type="text" name="state" value="{{$edit_agent->state}}" required class="form-control" id="exampleInputEmail1" placeholder="State">
                </div><br>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <label for="exampleInputEmail1">City</label>
                    <input type="text" name="city" value="{{$edit_agent->city}}" required class="form-control" id="exampleInputEmail1" placeholder="City">
                </div><br>
            </div>

        </div>

        @if($edit_agent->role == 'partner')
        <div class="clear_div">
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Business Name</label>
                        <input type="text" name="business_name" value="{{$edit_agent->business_name}}" required class="form-control p-2" id="exampleInputEmail1" placeholder="Business Name">
                    </div><br>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="">Business Type</label>
                        <select class="form-control p-2" name="business_type" required id="">
                            <option value="">Business Type</option>
                            <option @if($edit_agent->business_type == 'accommodation') selected @endif value="accommodation">Accommodation</option>
                            <option @if($edit_agent->business_type == 'hospitality') selected @endif value="hospitality">Hospitality</option>
                            <option @if($edit_agent->business_type == 'attraction') selected @endif value="attraction">Attraction</option>
                        </select>
                    </div><br>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <img style="height: 135px;width: 50%;" src="{{asset('business_logo/'.$edit_agent->business_logo)}}" alt="">
                        <label for="exampleInputEmail1">Business Logo</label>
                        <input type="file" name="business_logo" class="form-control p-2" id="exampleInputEmail1">
                    </div><br>
                </div>
            </div>
        </div>
        @endif
        
        <div class="row appen_csc_for_patner">

        </div>

        <div class="form-group form-check">

            <input type="checkbox" name="status" @if($edit_agent->status == 1) checked @endif class="form-check-input" id="exampleCheck1">

            <label class="form-check-label" for="exampleCheck1">Active</label>

        </div><br>

        <button type="submit" class="btn btn-primary">Submit</button> <a href="{{url('agent')}}" class="btn btn-danger">Cancel</a>

        </form>

    </div>

</div>

@endsection

@section('scripts') @parent

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

<script>
    $('.role').change(function(){
        var role_val = $(this).val();
        if(role_val == 'border_scanner'){
            $('.append_data').html('');
            $('.appen_csc').html('');
            $('.clear_div').html('');
            $('.appen_csc_for_patner').html('');
            $('.appen_csc').append('<div class="col-md-4"><div class="form-group"><label for="exampleInputEmail1">Country</label><select class="form-control p-2" name="country" id=""><option value="">Select Country</option>@foreach($country as $country_data) <option value="{{$country_data->name}}">{{$country_data->name}}</option>@endforeach</select></div><br></div><div class="col-md-4"><div class="form-group"><label for="exampleInputEmail1">State</label><input type="text" name="state" required class="form-control" id="exampleInputEmail1" placeholder="State"></div><br></div><div class="col-md-4"><div class="form-group"><label for="exampleInputEmail1">City</label><input type="text" name="city" required class="form-control" id="exampleInputEmail1" placeholder="City"></div><br></div>');

            $('.append_data').append('<div class="col-md-4"><div class="form-group"><label for="exampleInputEmail1">Address</label><textarea name="address" id="" class="form-control" rows="4"></textarea></div></div>');
        }else if(role_val == 'partner'){
            $('.appen_csc_for_patner').html('');
            $('.append_data').html('');
            $('.appen_csc').html('');
            $('.clear_div').html('');

            $('.appen_csc_for_patner').append('<div class="col-md-4"><div class="form-group"><label for="exampleInputEmail1">Country</label><select class="form-control p-2" name="country" id=""><option value="">Select Country</option>@foreach($country as $country_data) <option value="{{$country_data->name}}">{{$country_data->name}}</option>@endforeach</select></div><br></div><div class="col-md-4"><div class="form-group"><label for="exampleInputEmail1">State</label><input type="text" name="state" required class="form-control" id="exampleInputEmail1" placeholder="State"></div><br></div><div class="col-md-4"><div class="form-group"><label for="exampleInputEmail1">City</label><input type="text" name="city" required class="form-control" id="exampleInputEmail1" placeholder="City"></div><br></div><div class="col-md-4"><div class="form-group"><label for="exampleInputEmail1">Business Address</label><textarea name="address" id="" class="form-control" rows="4"></textarea></div></div>');

            $('.append_data').append('<div class="col-md-4"><div class="form-group"><label for="exampleInputEmail1">Business Name</label><input type="text" name="business_name" required class="form-control p-2" id="exampleInputEmail1" placeholder="Business Name"></div><br></div><div class="col-md-4"><div class="form-group"><label for="">Business Type</label><select class="form-control p-2" name="business_type" required id=""><option value="">Business Type</option><option value="hotel">Hotel</option><option value="restaurant">Restaurant</option><option value="shop">Shop</option><option value="sight_seeing">Sight Seeing</option></select></div><br></div><div class="col-md-4"><div class="form-group"><label for="exampleInputEmail1">Business Logo</label><input type="file" name="business_logo" required class="form-control p-2" id="exampleInputEmail1"></div><br></div>');
        }
    });
</script>
@endsection