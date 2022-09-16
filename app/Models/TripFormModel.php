<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TripFormModel extends Model
{
    use HasFactory;

    protected $table = 'trip_form';

    public function trips(){
        return $this->hasOne(Trip::class, 'id', 'trip_id');
    }

    public function create_bys(){
        return $this->hasOne(RegisterUser::class, 'id', 'user_id');
    }

    public function user_only(){
        return $this->hasOne(TripPeople::class, 'id', 'user_id');
    }

}