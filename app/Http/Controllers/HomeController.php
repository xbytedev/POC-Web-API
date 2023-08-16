<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\RegisterUser;

use App\Models\User;

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
        $scanner = User::where('role','border_scanner')->count();
        $accommodation = User::where('business_type','accommodation')->where('role','partner')->count();
        $operator = User::where('business_type','operator')->where('role','partner')->count();
        $hospitality = User::where('business_type','hospitality')->where('role','partner')->count();
        $attraction = User::where('business_type','attraction')->where('role','partner')->count();
        $partner = User::where('role','partner')->count();
        $payment = Payment::all()->sum('amount');
        return view('admin.dashbord',compact('operator','user_count','partner','scanner','payment','accommodation','attraction','hospitality'));
    }
}