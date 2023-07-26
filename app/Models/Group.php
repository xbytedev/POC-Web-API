<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    use HasFactory;

    protected $table = 'trip_group';

    public function group_people_details(){
        return $this->hasOne(TripPeople::class, 'id', 'people_id');
    }

    public function group_details(){
        return $this->hasOne(Group::class, 'id', 'group_id');
    }

    public function group_people_data(){
        return $this->hasMany(GroupPeople::class ,'group_id','id');
    }
}