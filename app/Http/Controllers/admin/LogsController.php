<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Payment;
use App\Models\UserLogs;
use App\Models\ScanLogs;
use App\Models\PartnerScannerLogs;

class LogsController extends Controller
{
    public function user_logs(Request $request){
        $user_logs = UserLogs::with('register_user')->orderBy('id', 'DESC')->get();
        return view('admin.user_logs',compact('user_logs'));
    }

    public function border_patner_logs(Request $request){
        $partner_scanner_logs = PartnerScannerLogs::with('partnerscanner_data')->orderBy('id', 'DESC')->get();
        return view('admin.border_scanner_partner_logs',compact('partner_scanner_logs'));
    }

    public function scan_logs(){
        $scan_logs = ScanLogs::with('trip_people','border_scanner_partner','trips')->orderBy('id', 'DESC')->get();
        return view('admin.scan_logs',compact('scan_logs'));
    }
}
?>