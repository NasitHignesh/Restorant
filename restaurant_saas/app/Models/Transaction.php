<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    protected $table='subscription_transactions';
    protected $fillable=['vendor_id','order_id','order_number','wallet','payment_id','order_type'];


    public function vendor_info(){
        return $this->hasOne('App\Models\User','id','vendor_id')->select('id','name','email','mobile');
    }
    public function plan_info()
    {
        return $this->hasOne('App\Models\PricingPlan','id','plan_id');
    }

}

