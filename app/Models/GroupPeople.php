<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GroupPeople extends Model
{
    use HasFactory;       
    protected $table = 'group_people';

    public function group_people_details(){
        return $this->hasOne(TripPeople::class, 'id', 'people_id');
    }
    
    public function group_details(){
        return $this->hasOne(Group::class, 'id', 'group_id');
    }
}