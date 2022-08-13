<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trip extends Model
{
    use HasFactory;
    protected $table = 'trip';

    public function created_by_data(){
        return $this->hasOne(RegisterUser::class, 'id', 'created_by');
    }
}