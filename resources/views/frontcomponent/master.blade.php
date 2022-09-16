<!DOCTYPE html>

<html lang="en" data-layout="horizontal">

<head>

    <meta charset="utf-8" />

    <title>POC</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    @yield('styles')

    <!-- App favicon -->

    <link rel="shortcut icon" href="{{ asset('front/img/favicon.png') }}" />

    <!-- jsvectormap css -->

    <link href="{{ asset('front/libs/jsvectormap/css/jsvectormap.min.css') }}" rel="stylesheet" type="text/css" />

    <!--Swiper slider css-->

    <link href="{{ asset('front/libs/swiper/swiper-bundle.min.css') }}" rel="stylesheet" type="text/css" />

    <!-- Layout config Js -->

    <script src="{{ asset('front/js/layout.js') }}"></script>

    <!-- Bootstrap Css -->

    <link href="{{ asset('front/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" />

    <!-- Icons Css -->

    <link href="{{ asset('front/css/icons.min.css') }}" rel="stylesheet" type="text/css" />

    <!-- App Css-->

    <link href="{{ asset('front/css/app.min.css') }}" rel="stylesheet" type="text/css" />

    <!-- custom Css-->

    <link href="{{ asset('front/css/custom.min.css') }}" rel="stylesheet" type="text/css" />

    <style>
        .parsley-required {
            color: red;
        }
    </style>

@show

</head>

<body>

<!-- Begin page -->

<div id="layout-wrapper">

    @include('frontcomponent.header')

    <!-- ========== App Menu ========== -->

    <!-- Left Sidebar End -->

    <!-- ============================================================== -->

    <!-- Start right Content here -->

    <!-- ============================================================== -->

    <div class="main-content">

        <div class="page-content">

            @yield('content')

        </div>

        @include('frontcomponent.footer')

    </div>

    <!-- end main content-->

</div>

<!-- END layout-wrapper -->

<!--start back-to-top-->

<button onclick="topFunction()" class="btn btn-danger btn-icon" id="back-to-top">

    <i class="ri-arrow-up-line"></i>

</button>
<!--end back-to-top-->
@yield('scripts')
<!-- JAVASCRIPT -->
<script src="{{ asset('front/libs/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

<script src="{{ asset('front/libs/simplebar/simplebar.min.js') }}"></script>

<script src="{{ asset('front/libs/node-waves/waves.min.js') }}"></script>

<script src="{{ asset('front/libs/feather-icons/feather.min.js') }}"></script>

<script src="{{ asset('front/js/pages/plugins/lord-icon-2.1.0.js') }}"></script>

<script src="{{ asset('front/js/plugins.js') }}"></script>

<!-- apexcharts -->

<script src="{{ asset('front/libs/apexcharts/apexcharts.min.js') }}"></script>

<!-- Vector map-->

<script src="{{ asset('front/libs/jsvectormap/js/jsvectormap.min.js') }}"></script>

<script src="{{ asset('front/libs/jsvectormap/maps/world-merc.js') }}"></script>

<!--Swiper slider js-->

<script src="{{ asset('front/libs/swiper/swiper-bundle.min.js') }}"></script>

<!-- Dashboard init -->

<script src="{{ asset('front/js/pages/dashboard-ecommerce.init.js') }}"></script>

<!-- parsley validation -->

<script src="{{ asset('assets/js/parsley.js') }}"></script>

<script src="{{ asset('assets/js/parsley.min.js') }}"></script>

<!-- App js -->

<script src="{{ asset('front/js/app.js') }}"></script>

<!-- prismjs plugin -->
<script src="{{ asset('front/libs/prismjs/prism.js') }}"></script>

<script src="{{ asset('front/js/pages/form-validation.init.js') }}"></script>

@show

</body>

</html>
