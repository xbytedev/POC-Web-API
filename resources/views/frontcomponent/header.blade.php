<header id="page-topbar">

    <div class="layout-width">

        <div class="navbar-header">

            <div class="d-flex">

                <!-- LOGO -->

                <div class="navbar-brand-box horizontal-logo">

                    <a href="{{url('homes')}}" class="logo logo-dark">

                        <span class="logo-sm">

                            <img src="{{asset('front/img/logo-sm.png')}}" alt=""/>

                        </span>

                        <span class="logo-lg">

                            <img src="{{asset('front/img/logo-sm.png')}}" alt=""/>

                        </span>

                    </a>

                    <a href="{{url('homes')}}" class="logo logo-light">

                        <span class="logo-sm">

                            <img src="{{asset('front/img/logo-sm.png')}}" alt="" />

                        </span>

                        <span class="logo-lg">

                            <img src="{{asset('front/img/logo-sm.png')}}" alt="" />

                        </span>

                    </a>

                </div>

            </div>

            <div class="app-menu navbar-menu">

                <div id="scrollbar">

                    <div class="container-fluid">

                        <ul class="navbar-nav" id="navbar-nav">

                            <li class="nav-item">

                                <a class="nav-link menu-link" href="{{url('homes')}}">

                                    <img src="{{asset('front/img/airplane.png')}}">

                                    <span data-key="t-dashboards">Trip</span>

                                </a>

                            </li>

                            <li class="nav-item">

                                <a class="nav-link menu-link" href="{{url('user_payment_list')}}">

                                    <img src="{{asset('front/img/payment.png')}}">

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
                            @if(isset($_SESSION['user']->image) && !empty($_SESSION['user']->image))
                                <img class="rounded-circle header-profile-user" src="{{asset('profile_image/'.$_SESSION['user']->image)}}" alt="Header Avatar"/>
                            @endif

                            <span class="text-start ms-xl-2">

                                @if(isset($_SESSION['user']))

                                    <span class="d-none d-xl-inline-block ms-1 fw-medium user-name-text">{{$_SESSION['user']->name}}</span>

                                @endif

                            </span>

                        </span>

                    </button>

                    <div class="dropdown-menu dropdown-menu-end">

                        <!-- item-->

                        <h6 class="dropdown-header">Welcome User!</h6>

                        <a class="dropdown-item" href="{{url('profile')}}"><i class="mdi mdi-account-circle text-muted fs-16 align-middle me-1"></i> <span class="align-middle">Profile</span></a>

                        <a class="dropdown-item" href="{{url('user_logout')}}"><i class="mdi mdi-logout text-muted fs-16 align-middle me-1"></i> <span class="align-middle" data-key="t-logout">Logout</span></a>

                    </div>

                </div>

            </div>

        </div>

    </div>

</header>