<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Tile extends Model
{
    use SoftDeletes;

    protected $guarded = [];

    public function foreCasts()
    {
        $now = Carbon::now();

        return $this->hasMany('App\Models\Forecast')->where('time', '>', $now)->take(5);
    }
    
}
