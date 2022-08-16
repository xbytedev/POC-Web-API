<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>POC</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="{{asset('front/img/favicon.png')}}" />
        <!-- Layout config Js -->
        <script src="{{asset('front/js/layout.js')}}"></script>
        <!-- Bootstrap Css -->
        <link href="{{asset('front/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css"/>
        <!-- Icons Css -->
        <link href="{{asset('front/css/icons.min.css')}}" rel="stylesheet" type="text/css"/>
        <!-- App Css-->
        <link href="{{asset('front/css/app.min.css')}}" rel="stylesheet" type="text/css"/>
        <!-- custom Css-->
        <link href="{{asset('front/css/custom.min.css')}}" rel="stylesheet" type="text/css"/>

        <style>
            
            .parsley-required{

                color:red;

            }
        </style>

    </head>

<body>

    <div class="auth-page-wrapper pt-5">
        <!-- auth page bg -->
        <div class="auth-one-bg-position auth-one-bg" id="auth-particles">
            <div class="bg-overlay"></div>

            <div class="shape">
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1440 120">
                    <path d="M 0,36 C 144,53.6 432,123.2 720,124 C 1008,124.8 1296,56.8 1440,40L1440 140L0 140z"></path>
                </svg>
            </div>
        </div>

        <!-- auth page content -->
        <div class="auth-page-content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center mt-sm-5 mb-4 text-white-50">
                           <a href="index.html" class="d-inline-block auth-logo">
                                <img src="front/img/logo.png" alt="Logo"  />
                            </a>
                        </div>
                    </div>
                </div>
                <!-- end row -->

                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-5">
                        @if(Session::has('success'))

                            <div class="alert">

                                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>

                                {{Session::get('success')}}

                            </div>

                        @endif

                        @if(Session::has('error'))

                            <div class="alert alert-danger alert-dismissible fade show" role="alert">

                                <strong>{{ Session::get('error') }}</strong>
                            </div>
                        @endif
                        <div class="card mt-4">

                            <div class="card-body p-4">
                                <div class="text-center mt-2">
                                    <h5 class="text-primary">Create New Account</h5>
                                    <p class="text-muted">Get your POC account now</p>
                                </div>
                                <div class="p-2 mt-4">
                                    <form class="needs-validation" enctype="multipart/form-data" method="post" action="{{url('insert_user_data')}}" data-parsley-validate>
                                        
                                        @csrf

                                        <div class="mb-3">
                                            <label class="form-label">Profile Picture</label>
                                            <input type="file" name="image" class="form-control">
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label">Name<span class="text-danger">*</span></label>
                                            <input type="text" value="{{old('name')}}" name="name" class="form-control" placeholder="Enter Name" autocomplete="name" autofocus="" required>
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label">Date Of Birth<span class="text-danger">*</span></label>
                                            <input type="Date" name="dob" class="form-control" required>
                                            <!-- <div class="invalid-feedback">
                                                Please enter email
                                            </div> -->
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label">Gender<span class="text-danger">*</span></label>
                                            <select name="gender" id="" class="form-control">
                                                <option value="">Select Gender</option>
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                            </select>
                                        </div>

                                        <div class="mb-3">
                                            <label for="useremail" class="form-label">Email <span class="text-danger">*</span></label>
                                            <input type="email" class="form-control" name="email" id="useremail" placeholder="Enter email address" required>
                                            <!-- <div class="invalid-feedback">
                                                Please enter email
                                            </div> -->
                                        </div>
                                        
                                        <div class="mb-3">
                                            <label for="useremail" class="form-label">Phone Number <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="number" id="useremail" placeholder="Enter Phone Number" required>
                                        </div>

                                        <div class="mb-3">
                                            <label for="useremail" class="form-label">Address<span class="text-danger">*</span></label>
                                            <textarea name="address" id="" class="form-control"></textarea>
                                        </div>

                                        <div class="mb-3">
                                            <label class="form-label" for="password-input">Password <span class="text-danger">*</span></label>
                                            <div class="position-relative auth-pass-inputgroup">
                                                <input type="password" class="form-control pe-5 password-input" placeholder="Enter password" id="password-input" name="password" required>
                                                <button class="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted password-addon" type="button" id="password-addon"></button>
                                                <!-- <div class="invalid-feedback">
                                                    Please enter password
                                                </div> -->
                                            </div>
                                        </div>

                                       <!--  <div class="mb-4">
                                            <p class="mb-0 fs-12 text-muted fst-italic">By registering you agree to the Velzon <a href="#" class="text-primary text-decoration-underline fst-normal fw-medium">Terms of Use</a></p>
                                        </div> -->

                                        <div id="password-contain" class="p-3 bg-light mb-2 rounded">
                                            <h5 class="fs-13">Password must contain:</h5>
                                            <p id="pass-length" class="invalid fs-12 mb-2">Minimum <b>8 characters</b></p>
                                            <p id="pass-lower" class="invalid fs-12 mb-2">At <b>lowercase</b> letter (a-z)</p>
                                            <p id="pass-upper" class="invalid fs-12 mb-2">At least <b>uppercase</b> letter (A-Z)</p>
                                            <p id="pass-number" class="invalid fs-12 mb-0">A least <b>number</b> (0-9)</p>
                                        </div>

                                        <div class="mt-4">
                                            <button class="btn theme-btn w-100 text-white" type="submit">Sign Up</button>
                                        </div>
                                    </form>

                                </div>
                            </div>
                            <!-- end card body -->
                        </div>
                        <!-- end card -->

                        <div class="mt-4 text-center">
                            <p class="mb-0">Already have an account ? <a href="{{url('user_login')}}" class="fw-semibold text-primary text-decoration-underline"> Signin </a> </p>
                        </div>

                    </div>
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end auth page content -->

      <!-- footer -->
            <footer class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center">
                                <p class="mb-0 text-muted">
                                    Copyright &copy;                                    
                                    <script>
                                        document.write(new Date().getFullYear());
                                    </script>
                                    <!-- POC. Design by <a href="https://www.gteches.com/">Gtech</a> -->
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- end Footer -->
        </div>
        <!-- end auth-page-wrapper -->

        <!-- parsley validation -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.9.2/parsley.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.9.2/parsley.js"></script>
        <!-- JAVASCRIPT -->
        <script src="{{asset('front/libs/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
        <script src="{{asset('front/libs/simplebar/simplebar.min.js')}}"></script>
        <script src="{{asset('front/libs/node-waves/waves.min.js')}}"></script>
        <script src="{{asset('front/libs/feather-icons/feather.min.js')}}"></script>
        <script src="{{asset('front/js/pages/plugins/lord-icon-2.1.0.js')}}"></script>
        <script src="{{asset('front/js/plugins.js')}}"></script>

        <!-- particles js -->
        <script src="{{asset('front/libs/particles.js/particles.js')}}"></script>
        <!-- particles app js -->
        <script src="{{asset('front/js/pages/particles.app.js')}}"></script>
        <!-- password-addon init -->
        <script src="{{asset('front/js/pages/password-addon.init.js')}}"></script>
    </body>
</html>