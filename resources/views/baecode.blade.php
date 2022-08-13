<!DOCTYPE html>
<html lang="en" data-layout="horizontal" >
    <head>
        <meta charset="utf-8" />
        <title>POC</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/img/favicon.png" />

        <!-- jsvectormap css -->
        <link href="assets/libs/jsvectormap/css/jsvectormap.min.css" rel="stylesheet" type="text/css" />

        <!--Swiper slider css-->
        <link href="assets/libs/swiper/swiper-bundle.min.css" rel="stylesheet" type="text/css" />

        <!-- Layout config Js -->
        <script src="assets/js/layout.js"></script>
        <!-- Bootstrap Css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" />
        <!-- custom Css-->
        <link href="assets/css/custom.min.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <!-- Begin page -->
        <div id="layout-wrapper">
            <header id="page-topbar">
                <div class="layout-width">
                    <div class="navbar-header">
                        <div class="d-flex">
                            <!-- LOGO -->
                            <div class="navbar-brand-box horizontal-logo">
                                <a href="index.html" class="logo logo-dark">
                                    <span class="logo-sm">
                                        <img src="assets/img/logo-sm.png" alt="" />
                                    </span>
                                    <span class="logo-lg">
                                        <img src="assets/img/logo-sm.png" alt="" />
                                    </span>
                                </a>

                                <a href="index.html" class="logo logo-light">
                                    <span class="logo-sm">
                                        <img src="assets/img/logo-sm.png" alt="" />
                                    </span>
                                    <span class="logo-lg">
                                        <img src="assets/img/logo-sm.png" alt="" />
                                    </span>
                                </a>
                            </div>
                        </div>

                        <div class="app-menu navbar-menu">
                            <div id="scrollbar">
                                <div class="container-fluid">
                                    <ul class="navbar-nav" id="navbar-nav">
                                        <li class="nav-item">
                                            <a class="nav-link menu-link" href="">
                                                <img src="assets/img/airplane.png">
                                                <span data-key="t-dashboards">Trip</span>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link menu-link" href="">
                                                <img src="assets/img/payment.png">
                                                <span data-key="t-dashboards">Payment</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- Sidebar -->
                            </div>
                        </div>

                        <div class="d-flex align-items-center">
                            <div class="dropdown ms-sm-3 header-item topbar-user">
                                <button type="button" class="btn" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="d-flex align-items-center">
                                        <img class="rounded-circle header-profile-user" src="assets/images/users/avatar-1.jpg" alt="Header Avatar" />
                                        <span class="text-start ms-xl-2">
                                            <span class="d-none d-xl-inline-block ms-1 fw-medium user-name-text">Anna Adame</span>
                                        </span>
                                    </span>
                                </button>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <!-- item-->
                                    <h6 class="dropdown-header">Welcome User!</h6>
                                    <a class="dropdown-item" href="pages-profile.html"><i class="mdi mdi-account-circle text-muted fs-16 align-middle me-1"></i> <span class="align-middle">Profile</span></a>
                                    <a class="dropdown-item" href="auth-logout-basic.html"><i class="mdi mdi-logout text-muted fs-16 align-middle me-1"></i> <span class="align-middle" data-key="t-logout">Logout</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- ========== App Menu ========== -->

            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col">
                                <div class="h-100">
                                    <div class="row mb-3 pb-1">
                                        <div class="col-12">
                                            <div class="row mb-0 align-items-center">
                                                <div class="col-md-5">
                                                    <a href="" class="btn theme-btn text-white"> 
                                                        <i class="ri-printer-line align-middle me-1"></i> Print All eTourist Cards </a>
                                                </div>
                                                <div class="col-md-7">
                                                    <h4 class="card-title mb-0 flex-grow-1">All eTourist cards will be also sent to your email the account</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <!--end col-->
                                    </div>
                                    <!--end row-->

                                    <div class="row">
                                        <div class="col-xl-3 col-md-6">
                                            <div class="card card-animate">
                                                <div class="card-body">
                                                    <div class="d-flex justify-content-between  align-items-center">
                                                        <div class="w-100">
                                                            <div class="flex-grow-1">
                                                                <b class="">Name</b> 
                                                                <p class="text-muted mb-2">Nikhil</p>
                                                            </div>
                                                            <div class="d-flex align-items-center my-3">
                                                                <div class="flex-grow-1 pr-3 w-50">
                                                                    <b class="">DOB</b> 
                                                                    <p class="text-muted mb-2">2022-07-31</p>
                                                                </div>
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Gender</b> 
                                                                    <p class="text-muted mb-2">Male</p>
                                                                </div>
                                                            </div>
                                                            <div class="d-flex align-items-center mt-3">
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Address</b> 
                                                                    <p class="text-muted mb-0">Male</p>
                                                                </div>
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Valid Until</b> 
                                                                    <p class="text-muted mb-0">2022-07-31</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="barcode-img">
                                                                <img src="assets/img/barcode.jpg" class="img-fluid">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                         <div class="col-xl-3 col-md-6">
                                            <div class="card card-animate">
                                                <div class="card-body">
                                                    <div class="d-flex justify-content-between  align-items-center">
                                                        <div class="w-100">
                                                            <div class="flex-grow-1">
                                                                <b class="">Name</b> 
                                                                <p class="text-muted mb-2">Nikhil</p>
                                                            </div>
                                                            <div class="d-flex align-items-center my-3">
                                                                <div class="flex-grow-1 pr-3 w-50">
                                                                    <b class="">DOB</b> 
                                                                    <p class="text-muted mb-2">2022-07-31</p>
                                                                </div>
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Gender</b> 
                                                                    <p class="text-muted mb-2">Male</p>
                                                                </div>
                                                            </div>
                                                            <div class="d-flex align-items-center mt-3">
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Address</b> 
                                                                    <p class="text-muted mb-0">Male</p>
                                                                </div>
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Valid Until</b> 
                                                                    <p class="text-muted mb-0">2022-07-31</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="barcode-img">
                                                                <img src="assets/img/barcode.jpg" class="img-fluid">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                         <div class="col-xl-3 col-md-6">
                                            <div class="card card-animate">
                                                <div class="card-body">
                                                    <div class="d-flex justify-content-between  align-items-center">
                                                        <div class="w-100">
                                                            <div class="flex-grow-1">
                                                                <b class="">Name</b> 
                                                                <p class="text-muted mb-2">Nikhil</p>
                                                            </div>
                                                            <div class="d-flex align-items-center my-3">
                                                                <div class="flex-grow-1 pr-3 w-50">
                                                                    <b class="">DOB</b> 
                                                                    <p class="text-muted mb-2">2022-07-31</p>
                                                                </div>
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Gender</b> 
                                                                    <p class="text-muted mb-2">Male</p>
                                                                </div>
                                                            </div>
                                                            <div class="d-flex align-items-center mt-3">
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Address</b> 
                                                                    <p class="text-muted mb-0">Male</p>
                                                                </div>
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Valid Until</b> 
                                                                    <p class="text-muted mb-0">2022-07-31</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="barcode-img">
                                                                <img src="assets/img/barcode.jpg" class="img-fluid">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                         <div class="col-xl-3 col-md-6">
                                            <div class="card card-animate">
                                                <div class="card-body">
                                                    <div class="d-flex justify-content-between  align-items-center">
                                                        <div class="w-100">
                                                            <div class="flex-grow-1">
                                                                <b class="">Name</b> 
                                                                <p class="text-muted mb-2">Nikhil</p>
                                                            </div>
                                                            <div class="d-flex align-items-center my-3">
                                                                <div class="flex-grow-1 pr-3 w-50">
                                                                    <b class="">DOB</b> 
                                                                    <p class="text-muted mb-2">2022-07-31</p>
                                                                </div>
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Gender</b> 
                                                                    <p class="text-muted mb-2">Male</p>
                                                                </div>
                                                            </div>
                                                            <div class="d-flex align-items-center mt-3">
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Address</b> 
                                                                    <p class="text-muted mb-0">Male</p>
                                                                </div>
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Valid Until</b> 
                                                                    <p class="text-muted mb-0">2022-07-31</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="barcode-img">
                                                                <img src="assets/img/barcode.jpg" class="img-fluid">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                         <div class="col-xl-3 col-md-6">
                                            <div class="card card-animate">
                                                <div class="card-body">
                                                    <div class="d-flex justify-content-between  align-items-center">
                                                        <div class="w-100">
                                                            <div class="flex-grow-1">
                                                                <b class="">Name</b> 
                                                                <p class="text-muted mb-2">Nikhil</p>
                                                            </div>
                                                            <div class="d-flex align-items-center my-3">
                                                                <div class="flex-grow-1 pr-3 w-50">
                                                                    <b class="">DOB</b> 
                                                                    <p class="text-muted mb-2">2022-07-31</p>
                                                                </div>
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Gender</b> 
                                                                    <p class="text-muted mb-2">Male</p>
                                                                </div>
                                                            </div>
                                                            <div class="d-flex align-items-center mt-3">
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Address</b> 
                                                                    <p class="text-muted mb-0">Male</p>
                                                                </div>
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Valid Until</b> 
                                                                    <p class="text-muted mb-0">2022-07-31</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="barcode-img">
                                                                <img src="assets/img/barcode.jpg" class="img-fluid">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                         <div class="col-xl-3 col-md-6">
                                            <div class="card card-animate">
                                                <div class="card-body">
                                                    <div class="d-flex justify-content-between  align-items-center">
                                                        <div class="w-100">
                                                            <div class="flex-grow-1">
                                                                <b class="">Name</b> 
                                                                <p class="text-muted mb-2">Nikhil</p>
                                                            </div>
                                                            <div class="d-flex align-items-center my-3">
                                                                <div class="flex-grow-1 pr-3 w-50">
                                                                    <b class="">DOB</b> 
                                                                    <p class="text-muted mb-2">2022-07-31</p>
                                                                </div>
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Gender</b> 
                                                                    <p class="text-muted mb-2">Male</p>
                                                                </div>
                                                            </div>
                                                            <div class="d-flex align-items-center mt-3">
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Address</b> 
                                                                    <p class="text-muted mb-0">Male</p>
                                                                </div>
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Valid Until</b> 
                                                                    <p class="text-muted mb-0">2022-07-31</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="barcode-img">
                                                                <img src="assets/img/barcode.jpg" class="img-fluid">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                         <div class="col-xl-3 col-md-6">
                                            <div class="card card-animate">
                                                <div class="card-body">
                                                    <div class="d-flex justify-content-between  align-items-center">
                                                        <div class="w-100">
                                                            <div class="flex-grow-1">
                                                                <b class="">Name</b> 
                                                                <p class="text-muted mb-2">Nikhil</p>
                                                            </div>
                                                            <div class="d-flex align-items-center my-3">
                                                                <div class="flex-grow-1 pr-3 w-50">
                                                                    <b class="">DOB</b> 
                                                                    <p class="text-muted mb-2">2022-07-31</p>
                                                                </div>
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Gender</b> 
                                                                    <p class="text-muted mb-2">Male</p>
                                                                </div>
                                                            </div>
                                                            <div class="d-flex align-items-center mt-3">
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Address</b> 
                                                                    <p class="text-muted mb-0">Male</p>
                                                                </div>
                                                                <div class="flex-grow-1 w-50">
                                                                    <b class="">Valid Until</b> 
                                                                    <p class="text-muted mb-0">2022-07-31</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <div class="barcode-img">
                                                                <img src="assets/img/barcode.jpg" class="img-fluid">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <script>
                                    document.write(new Date().getFullYear());
                                </script>
                                Copyright &copy; POC
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">Design by <a href="https://www.gteches.com/">Gtech</a></div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
            <!-- end main content-->
        </div>
        <!-- END layout-wrapper -->

        <!--start back-to-top-->
        <button onclick="topFunction()" class="btn btn-danger btn-icon" id="back-to-top">
            <i class="ri-arrow-up-line"></i>
        </button>
        <!--end back-to-top-->

        <!-- JAVASCRIPT -->
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/simplebar/simplebar.min.js"></script>
        <script src="assets/libs/node-waves/waves.min.js"></script>
        <script src="assets/libs/feather-icons/feather.min.js"></script>
        <script src="assets/js/pages/plugins/lord-icon-2.1.0.js"></script>
        <script src="assets/js/plugins.js"></script>

        <!-- apexcharts -->
        <script src="assets/libs/apexcharts/apexcharts.min.js"></script>

        <!-- Vector map-->
        <script src="assets/libs/jsvectormap/js/jsvectormap.min.js"></script>
        <script src="assets/libs/jsvectormap/maps/world-merc.js"></script>

        <!--Swiper slider js-->
        <script src="assets/libs/swiper/swiper-bundle.min.js"></script>

        <!-- Dashboard init -->
        <script src="assets/js/pages/dashboard-ecommerce.init.js"></script>

        <!-- App js -->
        <script src="assets/js/app.js"></script>
    </body>
</html>