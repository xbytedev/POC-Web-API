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
        <link href="{{asset('front/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="{{asset('front/css/icons.min.css')}}" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="{{asset('front/css/app.min.css')}}" rel="stylesheet" type="text/css" />
        <!-- custom Css-->
        <link href="{{asset('front/css/custom.min.css')}}" rel="stylesheet" type="text/css" />
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
                                <div>
                                    <a href="index.html" class="d-inline-block auth-logo">
                                        <img src="front/img/logo.png" alt="Logo"  />
                                    </a>
                                </div>
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
                                        <h5 class="text-primary">Welcome Back !</h5>
                                        <p class="text-muted">Sign in to continue to POC.</p>
                                    </div>
                                    <div class="p-2 mt-4">
                                        <form action="{{url('check_user_login')}}" method="post">
                                            @csrf
                                            <div class="mb-3">
                                                <label for="username" class="form-label">Username</label>
                                                <input type="text" name="email" class="form-control" id="username" placeholder="Enter username"/>
                                            </div>

                                            <div class="mb-3">
                                                <div class="float-end">
                                                    <a href="#" class="text-muted">Forgot password?</a>
                                                </div>
                                                <label class="form-label" for="password-input">Password</label>
                                                <div class="position-relative auth-pass-inputgroup mb-3">
                                                    <input type="password" name="password" class="form-control pe-5" placeholder="Enter password" id="password-input" />
                                                    <button class="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted" type="button" id="password-addon">
                                                        <!-- <i class="ri-eye-fill align-middle"></i> -->
                                                </button>
                                                </div>
                                            </div>

                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" value="" id="auth-remember-check" />
                                                <label class="form-check-label" for="auth-remember-check">Remember me</label>
                                            </div>

                                            <div class="mt-4">
                                                <button class="btn theme-btn w-100 text-white" type="submit">Sign In</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- end card body -->
                            </div>
                            <!-- end card -->

                            <div class="mt-4 text-center">
                                <p class="mb-0">Don't have an account ? <a href="{{url('register_user')}}" class="fw-semibold text-primary text-decoration-underline"> Signup </a></p>
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
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- end Footer -->
        </div>
        <!-- end auth-page-wrapper -->

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