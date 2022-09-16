<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TripPeople extends Model
{
    use HasFactory;

    protected $table = 'trip_people';

    public function mean_of_transports(){
        return $this->hasOne(MeanOfTransport::class, 'id', 'mean_of_transport');
    }

    public function document_countrys(){
        return $this->hasOne(Country::class, 'id', 'document_country');
    }

    public function residence_countrys(){
        return $this->hasOne(Country::class, 'id', 'residence_country');
    }
    
    public function orginating_form_countrys(){
        return $this->hasOne(Country::class, 'id', 'orginating_form_country');
    }

    public function document_types(){
        return $this->hasOne(DocumentType::class, 'id', 'document_type');
    }

    public function motivation_of_trips(){
        return $this->hasOne(MotivationOfTrip::class, 'id', 'motivation_of_trip');
    }

    public function visa_motives(){
        return $this->hasOne(MotivationOfTrip::class, 'id', 'visa_motive');
    }
    
    public function end_user(){
        return $this->hasOne(RegisterUser::class, 'id', 'user_id');
    }

    public function trip(){
        return $this->hasOne(Trip::class, 'id', 'trip_id');
    }

    public function arrival_crossing(){
        return $this->hasOne(ArrivalCrossingPoint::class, 'id', 'arrival_crossing_point_border_crossing_point');
    }

    public function departure_crossing(){
        return $this->hasOne(ArrivalCrossingPoint::class, 'id', 'departure_crossing_point_border_crossing_point');
    }
}