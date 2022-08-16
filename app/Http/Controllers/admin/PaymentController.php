<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Payment;

class PaymentController extends Controller
{
    public function payment_list(){
        if(!empty($_REQUEST['to_date']) && !empty($_REQUEST['from_date'])){
            $from_date = $_REQUEST['from_date'];
            $to_date = $_REQUEST['to_date'];
            $payment = Payment::whereBetween('created_at', [$from_date, $to_date])->get();
        }else{
            $payment = Payment::with('end_user','partner','trip')->get();
        }
        return view('admin.payment_list',compact('payment'));
    }

    public function get_payment_list_frontside()
    {
        if(!isset($_SESSION['user'])){
            session_start();
        }
        $payment = Payment::where('enduser_id',$_SESSION['user']->id)->with('end_user','partner','trip')->get();
        return view('user_payments',compact('payment'));
    }

}