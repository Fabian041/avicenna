<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class avi_locations extends Model
{
     protected $fillable = [
        'code',
        'name',
    ];
    protected $table='avi_location';
}
