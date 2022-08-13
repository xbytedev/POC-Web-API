@extends('frontcomponent.master')
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="card mt-4 col-md-5">
            <div class="card-body p-4">
                @if(Session::has('success'))

                    <div class="alert alert-success alert-dismissible fade show" role="alert">

                        {{Session::get('success')}}

                    </div>

                @endif

                @if(Session::has('error'))

                    <div class="alert alert-danger alert-dismissible fade show" role="alert">

                        <strong>{{ Session::get('error') }}</strong>
                    </div>
                @endif
                <div class="mt-2">
                    <div class="p-2 mt-4">
                        <form class="needs-validation" enctype="multipart/form-data" method="post" action="{{url('update_user_data')}}" data-parsley-validate>
                            @csrf
                            <div class="mb-3">
                                <label class="form-label">Profile Picture</label><br>
                                @if(!empty($_SESSION['user']->image))
                                    <img style="height: 144px;width: 25%;" src="{{asset('profile_image/'.$_SESSION['user']->image)}}" alt="" class="mb-2"><br>
                                @endif
                                <input type="file" name="image" class="form-control">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Name<span class="text-danger">*</span></label>
                                <input type="text" value="{{$_SESSION['user']->name}}" name="name" class="form-control" placeholder="Enter Name" autocomplete="name" autofocus="" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Date Of Birth<span class="text-danger">*</span></label>
                                <input type="Date" name="dob" value="{{$_SESSION['user']->dob}}" class="form-control" required>
                                <!-- <div class="invalid-feedback">
                                    Please enter email
                                </div> -->
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Gender<span class="text-danger">*</span></label>
                                <select name="gender" id="" class="form-control">
                                    <option value="">Select Gender</option>
                                    <option @if($_SESSION['user']->gender == 'Male') selected @endif value="Male">Male</option>
                                    <option @if($_SESSION['user']->gender == 'Female') selected @endif value="Female">Female</option>
                                    <option @if($_SESSION['user']->gender == 'Other') selected @endif value="Other">Other</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="useremail" class="form-label">Email <span class="text-danger">*</span></label>
                                <input type="email" class="form-control" value="{{$_SESSION['user']->email}}" name="email" id="useremail" placeholder="Enter email address" readonly>
                                <!-- <div class="invalid-feedback">
                                    Please enter email
                                </div> -->
                            </div>
                            
                            <div class="mb-3">
                                <label for="useremail" class="form-label">Phone Number <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" value="{{$_SESSION['user']->number}}" name="number" id="useremail" placeholder="Enter Phone Number" readonly>
                            </div>

                            <div class="mb-3">
                                <label for="useremail" class="form-label">Address<span class="text-danger">*</span></label>
                                <textarea name="address" id="" class="form-control">{{$_SESSION['user']->address}}</textarea>
                            </div>
                            <div class="mt-4">
                                <button class="btn theme-btn w-100 text-white" type="submit">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection