<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RegisterUser;
use App\Models\Trip;
use App\Models\TripPeople;

class QrCodeController extends Controller
{
    public function index($id)
    {
      $trip_people = TripPeople::with('end_user','trip')->where('trip_id',$id)->get();
      return view('qrCode',compact('trip_people'));
    }
}
