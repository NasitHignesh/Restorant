<?php

namespace App\Http\Controllers\addons;
use App\Http\Controllers\Controller;
   
use Illuminate\Http\Request;
use Omnipay\Omnipay;
use App\Models\Payment;
use Exception;
use Session;
use Auth;
   
class PaypalController extends Controller
{
    private $gateway;

    public function __construct()
    {
        $gettoken = Payment::where('payment_name','paypal')->first();  
        if($gettoken->environment == 1)
        {
            $test_mode = true;
        }
        else
        {
            $test_mode = false;
        }
        $this->gateway = Omnipay::create('PayPal_Rest');
        $this->gateway->setClientId($gettoken->public_key);
        $this->gateway->setSecret($gettoken->secret_key);
        $this->gateway->setTestMode($test_mode); //set it to 'false' when go live
    }


    public function index(Request $request)
    {

        if ($request->return == "1") 
        {
            session()->put('amount', $request->amount);
            session()->put('plan_id', $request->plan_id);
            session()->put('payment_type', 9);
            session()->put('successurl', $request->successurl);
            session()->put('failurl', $request->failureurl);

            $amount = $request->amount;
            $successurl = "https://www.google.com/";
            $failurl = "https://www.facebook.com/";


            return response()->json(['status' => 1, 'message' => trans('messages.success')], 200);
        }
        if ($request->return == "2") {
                $getpaypal = Payment::where('payment_name','paypal')->first();  
               
                if ($getpaypal->environment == 1) {
                    $mode = true;
                } else {
                    $mode = false;
                }
                $this->gateway = Omnipay::create('PayPal_Rest');
                $this->gateway->setClientId($getpaypal->public_key);
                $this->gateway->setSecret($getpaypal->secret_key);
                $this->gateway->setTestMode($mode); //set it to 'false' when go live
                try {
                    $response = $this->gateway->purchase(array(
                        'amount' =>  session()->get('amount'),
                        'currency' => $getpaypal->currency,
                        'returnUrl' => session()->get('successurl'),
                        'cancelUrl' => session()->get('failurl'),
                    ))->send();
                    if ($response->isRedirect()) {
                        $response->redirect(); // this will automatically forward the customer
                    } else {
                        // not successful
                        return $response->getMessage();
                    }
                } catch (Exception $e) {
                    return $e->getMessage();
                }
            
        }
    }


    public function paypalrequest(Request $request)
    {
        $getpaypal = Payment::where('payment_name','paypal')->first();  
                if ($getpaypal->environment == 1) {
                    $paypal_url = "https://api.sandbox.paypal.com/v1/oauth2/token";
                } else {
                    $paypal_url = "https://api.paypal.com/v1/oauth2/token";
                }
                $ch = curl_init();
                $clientId = $getpaypal->public_key;
                $secret = $getpaypal->secret_key;
                curl_setopt($ch, CURLOPT_URL, $paypal_url);
                curl_setopt($ch, CURLOPT_HEADER, false);
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                curl_setopt($ch, CURLOPT_POST, true);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); 
                curl_setopt($ch, CURLOPT_USERPWD, $clientId.":".$secret);
                curl_setopt($ch, CURLOPT_POSTFIELDS, "grant_type=client_credentials");
                $result = curl_exec($ch);
                if(empty($result))die("Error: No response.");
                else
                {
                    $json = json_decode($result);
                    $paypal_token = $json->access_token;
                    $successurl = "https://www.google.com/";
                    $failureurl = "https://www.facebook.com/";
                    return response()->json(['status'=>1,'message'=>trans('messages.success'),'paypal_token'=>$paypal_token,'successurl'=>$successurl,'failureurl'=>$failureurl],200);
                }
                curl_close($ch);
    }

    
    public function paypal_index(Request $request)
    {
        if ($request->return == "1") 
        {

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
                "successurl" => $request->successurl,
                "failurl" => $request->failurl,
            ];

            Session::put('userdata', $userdata);
            return response()->json(['status' => 1, 'message' => trans('messages.success')], 200);
        }


        if ($request->return == "2") {

                $getpaypal = Payment::where('payment_name','paypal')->first();  
                $session = Session::get('userdata');

                if ($getpaypal->environment == 1) {
                    $mode = true;
                } else {
                    $mode = false;
                }
                $this->gateway = Omnipay::create('PayPal_Rest');
                $this->gateway->setClientId($getpaypal->public_key);
                $this->gateway->setSecret($getpaypal->secret_key);
                $this->gateway->setTestMode($mode); //set it to 'false' when go live
                try {
                    $response = $this->gateway->purchase(array(
                        'amount' => $session['grand_total'],
                        'currency' => $getpaypal->currency,
                        'returnUrl' => $session['successurl'],
                        'cancelUrl' => $session['failurl'],
                    ))->send();
                    if ($response->isRedirect()) {
                        $response->redirect(); // this will automatically forward the customer
                    } else {
                        // not successful
                        return $response->getMessage();
                    }
                } catch (Exception $e) {
                    return $e->getMessage();
                }
            
        }
    }

}

?>