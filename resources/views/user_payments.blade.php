@extends('frontcomponent.master')
@section('content')
<style>
    .rounded-circle {
        border-radius: 33%!important;
    }
</style>
<div class="container">
    <div class="row">
        @if(!empty($payment))
            @foreach($payment as $payment_data)
                <div class="col-xl-4 col-md-4">
                    <div class="card card-animate">
                        <div class="card-body">
                            <div class="d-flex justify-content-between  align-items-center">
                                <div class="w-100">
                                    <div class="flex-grow-1">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <b class="">Amount : {{$payment_data->amount}}</b><br>
                                            </div>
                                            <div class="col-md-6 text-end">
                                                @if($payment_data->status == 'paid')
                                                    <button class="btn btn-sm btn-success rounded-circle">Paid</button>
                                                @else
                                                    <button class="btn btn-sm btn-danger rounded-circle">Pending</button>
                                                @endif
                                            </div>
                                        </div>
                                        <b class="">{{$payment_data->trip->trip_name}} @if($payment_data->card_paymant == 0) (Card Payment) @endif</b>
                                    </div>

                                    <div class="d-flex align-items-center my-3">
                                        <div class="flex-grow-1 pr-3 w-50">
                                            <p class="m-0">Partner name</p>
                                            <b class="">{{$payment_data->partner->name}}</b>
                                        </div>
                                        
                                        <div class="flex-grow-1 w-50">
                                            <p class="m-0">Time</p>
                                            <b class="">{{$payment_data->created_at->toTimeString()}}</b>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center mt-3">
                                        <div class="flex-grow-1 w-50">
                                            <p class="m-0">Mode of payment</p>
                                            <b class="">Cash</b>
                                        </div>
                                        <div class="flex-grow-1 w-50">
                                            <p class="m-0">Date</p>
                                            <b class="">{{$payment_data->created_at->toDateString()}}</b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        @else
            <div class="text-center">
                <h3 style="color: red;">Payment list not found</h3>
            </div>
        @endif
    </div>
</div>
@endsection