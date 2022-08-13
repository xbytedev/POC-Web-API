<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserLogs extends Model
{
    use HasFactory;
    protected $table = 'user_logs';

    public function register_user(){
        return $this->hasOne(RegisterUser::class, 'id', 'user_id');
    }
}