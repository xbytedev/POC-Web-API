<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\RegisterUser;

use App\Models\BorderScannerPartner;

use App\Models\Payment;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $user_count = RegisterUser::all()->count();
        $scanner = BorderScannerPartner::where('role','border_scanner')->count();
        $accommodation = BorderScannerPartner::where('business_type','accommodation')->where('role','partner')->count();
        $hospitality = BorderScannerPartner::where('business_type','hospitality')->where('role','partner')->count();
        $attraction = BorderScannerPartner::where('business_type','attraction')->where('role','partner')->count();
        $partner = BorderScannerPartner::where('role','partner')->count();
        $payment = Payment::all()->sum('amount');
        return view('admin.dashbord',compact('user_count','partner','scanner','payment','accommodation','attraction','hospitality'));
    }
}