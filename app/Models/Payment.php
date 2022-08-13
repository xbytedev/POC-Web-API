<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    use HasFactory;
    protected $table = 'payment';

    public function end_user(){
        return $this->hasOne(RegisterUser::class, 'id', 'enduser_id');
    }

    public function partner(){
        return $this->hasOne(BorderScannerPartner::class,'id','partner_id');
    }

    public function trip(){
        return $this->hasOne(Trip::class,'id','trip_id');
    }   

}