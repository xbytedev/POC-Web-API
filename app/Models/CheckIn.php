<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CheckIn extends Model
{
    use HasFactory;

    protected $table = 'check_in';

    public function people_details(){
        return $this->hasOne(TripPeople::class, 'id', 'people_id');
    }

    public function places_data(){
        return $this->hasOne(Places::class, 'id', 'place_id');
    }

}
