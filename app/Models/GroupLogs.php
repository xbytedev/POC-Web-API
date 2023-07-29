<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GroupLogs extends Model
{
    use HasFactory;

    protected $table = 'group_logs';

    public function group_data(){
        return $this->hasOne(Group::class, 'id', 'group_id');
    }

    public function user_data(){
        return $this->hasOne(User::class, 'id', 'agent_id');
    }
}