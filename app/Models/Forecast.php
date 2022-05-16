<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Forecast extends Model
{
    use SoftDeletes;

    protected $guarded = [];

    public function getTimeFormatAttribute(){
        $time = Carbon::parse($this->time)->format('Y-m-d H:i');
        
        return $time;
    }
}