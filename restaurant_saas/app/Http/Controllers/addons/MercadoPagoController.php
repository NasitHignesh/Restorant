<?php

namespace App\Http\Controllers\addons;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Payment;
use Exception;
use Session;
use Auth;

class MercadoPagoController extends Controller
{


    public function index(Request $request)
    {
        try {

            $name = Auth::user()->name;
            $email = Auth::user()->email;
            session()->put('amount', $request->amount);
            session()->put('plan_id', $request->plan_id);
            session()->put('payment_type', 9);
            $amount = $request->amount;
            $successurl = "https://www.google.com/";
            $failurl = "https://www.facebook.com/";

            $gettoken = Payment::where('payment_name', 'MercadoPago')->first();
            $curl = curl_init();
            curl_setopt_array(
                $curl,
                array(
                    CURLOPT_URL => 'https://api.mercadopago.com/checkout/preferences',
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => '',
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => 'POST',
                    CURLOPT_POSTFIELDS => '{
            "items": [
                { 
                    "title": "Online Order",
                    "quantity": 1,
                    "unit_price": ' . $amount . ',
                }
            ],
            "payer": {
                "name": "' . $name . '",
                "email": "' . $email . '",
            },
            "payment_methods": {
                "installments": 1
            },
            "back_urls": {
                "success": "' . $successurl . '",
                "failure": "' . $failurl . '",
                "pending": "' . $failurl . '",
            },
            "auto_return" : "approved",
        }',
                    CURLOPT_HTTPHEADER => array(
                        'Authorization: Bearer ' . $gettoken->secret_key . '',
                        'Content-Type: application/json'
                    ),
                )
            );
            $response = curl_exec($curl);  
            curl_close($curl);
            $responseurl = json_decode($response);

            if ($gettoken->environment == 1) {
                $redirecturl = $responseurl->sandbox_init_point;
            }
            if ($gettoken->environment == 2) {
                $redirecturl = $responseurl->init_point;
            }
            return response()->json(['status' => 1, 'message' => trans('messages.success'), 'redirecturl' => $redirecturl], 200);
        } catch (Exception $e) {
            return response()->json(['status' => 0, 'message' => $e], 200);
        }
    }

    public function MercadoPago_index(Request $request)
    {
        try {
            $userdata = [
                "name" => $request->name,
                "email" => $request->email,
                "mobile" => $request->mobile,
                "address_type" => $request->address_type,
                "order_type" => $request->order_type,
                "delivery_charge" => $request->delivery_charge,
                "grand_total" => $request->grand_total,
                "tax_amount" => $request->tax_amount,
                "address" => $request->address,
                "house_no" => $request->house_no,
                "lat" => $request->lat,
                "lang" => $request->lang,
                "order_notes" => $request->order_notes,
                "transaction_type" => $request->transaction_type,
            ];

            Session::put('userdata', $userdata);

            $name = $request->name;
            $email = $request->email;
            $mobile = $request->mobile;
            $grandtotal = $request->grand_total;
            $successurl = $request->successurl;
            $failurl = $request->failurl;


            $gettoken = Payment::where('payment_name', 'MercadoPago')->first();
            $curl = curl_init();
            curl_setopt_array(
                $curl,
                array(
                    CURLOPT_URL => 'https://api.mercadopago.com/checkout/preferences',
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => '',
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => 'POST',
                    CURLOPT_POSTFIELDS => '{
            "items": [
                { 
                    "title": "Online Order",
                    "quantity": 1,
                    "unit_price": ' . $grandtotal . ',
                }
            ],
            "payer": {
                "name": "' . $name . '",
                "email": "' . $email . '",
            },
            "payment_methods": {
                "installments": 1
            },
            "back_urls": {
                "success": "' . $successurl . '",
                "failure": "' . $failurl . '",
                "pending": "' . $failurl . '",
            },
            "auto_return" : "approved",
        }',
                    CURLOPT_HTTPHEADER => array(
                        'Authorization: Bearer ' . $gettoken->secret_key . '',
                        'Content-Type: application/json'
                    ),
                )
            );
            $response = curl_exec($curl);
            curl_close($curl);
            $responseurl = json_decode($response);

            if ($gettoken->environment == 1) {
                $redirecturl = $responseurl->sandbox_init_point;
            }
            if ($gettoken->environment == 2) {
                $redirecturl = $responseurl->init_point;
            }


            return response()->json(['status' => 1, 'message' => trans('messages.success'), 'redirecturl' => $redirecturl], 200);
        } catch (Exception $e) {
            return response()->json(['status' => 0, 'message' => $e], 200);
        }
    }
}
