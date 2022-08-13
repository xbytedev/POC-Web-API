@extends('component.master')
@section('title','Dashboard')
@section('styles') @parent
<style>
    .card_height{
        height: 130px;
    }
</style>
@endsection
@section('content')
<div class="row">
    <div class="col-md-3 mt-3">
        <a href="{{url('border_scanner_partner')}}">
            <div class="card card_height">
                <div class="card_body">
                    <div class="container mt-4">
                        <h2 style="color: gray;">Accommodation</h2>
                        <h3 style="font-family: cursive;">{{$accommodation}}</h3>
                    </div>
                </div>
            </div>
        </a>
    </div>
    <div class="col-md-3 mt-3">
        <a href="{{url('border_scanner_partner')}}">
            <div class="card card_height">
                <div class="card_body">
                    <div class="container mt-4">
                        <h2 style="color: gray;">Hospitality</h2>
                        <h3 style="font-family: cursive;">{{$hospitality}}</h3>
                    </div>
                </div>
            </div>
        </a>
    </div>
    <div class="col-md-3 mt-3">
        <a href="{{url('border_scanner_partner')}}">
            <div class="card card_height">
                <div class="card_body">
                    <div class="container mt-4">
                        <h2 style="color: gray;">Attraction</h2>
                        <h3 style="font-family: cursive;">{{$attraction}}</h3>
                    </div>
                </div>
            </div>
        </a>
    </div>
    <!-- <div class="col-md-3 mt-3">
        <a href="{{url('border_scanner_partner')}}">
            <div class="card card_height">
                <div class="card_body">
                    <div class="container mt-4">
                        <h2 style="color: gray;">Total Partners <i style="color:gray;" class="fa fa-user"></i></h2>
                        <h3 style="font-family: cursive;">{{$partner}}</h3>
                    </div>
                </div>
            </div>
        </a>
    </div> -->
    <div class="col-md-3 mt-3">
        <a href="{{url('user_list')}}">
            <div class="card card_height">
                <div class="card_body">
                    <div class="container mt-4">
                        <h2 style="color: gray;">Total Users <i style="color:gray;" class="fa fa-user"></i></h2>
                        <h3 style="font-family: cursive;">{{$user_count}}</h3>
                    </div>
                </div>
            </div>
        </a>
    </div>
    <div class="col-md-3 mt-3">
        <a href="{{url('border_scanner_partner')}}">
            <div class="card card_height">
                <div class="card_body">
                    <div class="container mt-4">
                        <h2 style="color: gray;">Total Scanner <i style="color:gray;" class="fa fa-user"></i></h2>
                        <h3 style="font-family: cursive;">{{$scanner}}</h3>
                    </div>
                </div>
            </div>
        </a>
    </div>
    <div class="col-md-3 mt-3">
        <a href="{{url('payment_list')}}">
            <div class="card card_height">
                <div class="card_body">
                    <div class="container mt-4">
                        <h2 style="color: gray;">Total Revenue </h2>
                        <h3 style="font-family: cursive;">{{$payment}}/-</h3>
                    </div>
                </div>
            </div>
        </a>
    </div>
</div>
@endsection