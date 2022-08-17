<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>POC</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="shortcut icon" href="{{asset('front/img/favicon.png')}}"/>
        <script src="{{asset('front/js/layout.js')}}"></script>
        <link href="{{asset('front/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css"/>
        <link href="{{asset('front/css/icons.min.css')}}" rel="stylesheet" type="text/css"/>
        <link href="{{asset('front/css/app.min.css')}}" rel="stylesheet" type="text/css"/>
        <link href="{{asset('front/css/custom.min.css')}}" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="auth-page-wrapper pt-5">
            <div class="auth-one-bg-position auth-one-bg" id="auth-particles">
                <div class="bg-overlay"></div>
                <div class="shape">
                    <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1440 120">
                        <path d="M 0,36 C 144,53.6 432,123.2 720,124 C 1008,124.8 1296,56.8 1440,40L1440 140L0 140z"></path>
                    </svg>
                </div>
            </div>
            <div class="auth-page-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center mt-sm-5 mb-4 text-white-50">
                                <div>
                                    <a class="d-inline-block auth-logo">
                                        <img src="{{asset('front/img/logo.png')}}" alt="Logo"  />
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>                    
                    <div class="row justify-content-center">
                        <div class="col-md-8 col-lg-6 col-xl-5">
                            @if(Session::has('success'))

                            <div class="alert alert-primary" role="alert">
                                <strong>{{Session::get('success')}}</strong>
                            </div>
                            @endif

                            @if(Session::has('error'))

                            <div class="alert alert-danger" role="alert">

                                <strong>{{ Session::get('error') }}</strong>
                            </div>
                            @endif
                            <div class="card mt-4">
                                <div class="card-body p-4">
                                    <div class="text-center mt-2">
                                        <h5 class="text-primary">Update Password</h5>
                                    </div>
                                    <div class="p-2 mt-4">
                                        <form action="{{url('update_pass')}}" method="post">
                                            @csrf
                                            <div class="mb-3">
                                                <label class="form-label" for="password-input">Password</label>
                                                <div class="position-relative auth-pass-inputgroup mb-3">
                                                    <input type="password" name="password" class="form-control pe-5" placeholder="Enter password" id="password-input"/>
                                                </button>
                                                </div>
                                            </div>
                                            <input type="hidden" name="user_id" value="{{request()->segment(count(request()->segments()))}}">
                                            <div class="mb-3">
                                                <label class="form-label" for="password-input">Confirm Password</label>
                                                <div class="position-relative auth-pass-inputgroup mb-3">
                                                    <input type="password" name="confirm_password" class="form-control pe-5" placeholder="Enter Confirm password" id="password-input"/>
                                                </button>
                                                </div>
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
            </div>
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
        </div>
        <script src="{{asset('front/libs/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
        <script src="{{asset('front/libs/simplebar/simplebar.min.js')}}"></script>
        <script src="{{asset('front/libs/node-waves/waves.min.js')}}"></script>
        <script src="{{asset('front/libs/feather-icons/feather.min.js')}}"></script>
        <script src="{{asset('front/js/pages/plugins/lord-icon-2.1.0.js')}}"></script>
        <script src="{{asset('front/js/plugins.js')}}"></script>
        <script src="{{asset('front/libs/particles.js/particles.js')}}"></script>
        <script src="{{asset('front/js/pages/particles.app.js')}}"></script>
        <script src="{{asset('front/js/pages/password-addon.init.js')}}"></script>
    </body>
</html>