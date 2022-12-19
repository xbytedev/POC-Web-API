<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ScanLogs extends Model
{
    use HasFactory;
    
    protected $table = 'scan_logs';

    public function trip_people(){
        return $this->hasOne(TripPeople::class, 'id', 'user_id');
    }

    public function trips(){
        return $this->hasOne(Trip::class, 'id', 'trip_id');
    }

    public function border_scanner_partner(){
        return $this->hasOne(BorderScannerPartner::class, 'id', 'p_b_id');
    }

}