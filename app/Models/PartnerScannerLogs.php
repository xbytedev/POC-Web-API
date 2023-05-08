<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PartnerScannerLogs extends Model
{
    use HasFactory;
    protected $table = 'partner_scanner_logs';

    public function partnerscanner_data(){
        return $this->hasOne(User::class, 'id', 'partner_scanner_id');
    }

}