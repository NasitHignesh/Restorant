<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Illuminate\Support\Facades\DB;

class Ratting extends Model

{

    protected $table='ratting';

    protected $fillable=['vendor_id','ratting','review'];



    public function user_info(){

        return $this->hasOne('App\Models\User','id','user_id')->select('id','name','email','mobile','token',DB::raw("CONCAT('".url(env('ASSETSPATHURL').'admin-assets/images/profile/')."/', users.profile_image) AS profile_image"));

    }

}