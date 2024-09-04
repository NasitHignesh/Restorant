<?php

namespace App\Http\Controllers\addons;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Payment;
use MyFatoorah\Library\PaymentMyfatoorahApiV2;
use Session;
use Auth;
use Exception;
use Illuminate\Support\Facades\Auth as FacadesAuth;

class MyFatoorahController extends Controller
{
    public $mfObj;
    //-----------------------------------------------------------------------------------------------------------------------------------------
    /**
     * create MyFatoorah object

     */
    public function __construct()
    {
        $gettoken = Payment::where('payment_name', 'myFatoorah')->first();
        if ($gettoken->environment == 1) {
            $test_mode = true;
        } else {
            $test_mode = false;
        }
        $this->mfObj = new PaymentMyfatoorahApiV2($gettoken->secret_key, $gettoken->currency, $test_mode);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    /**
     * Create MyFatoorah invoice
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $gettoken = Payment::where('payment_name', 'myFatoorah')->first();
        try {
            session()->put('amount', $request->amount);
            session()->put('plan_id', $request->plan_id);
            session()->put('payment_type', 9);
            $amount = $request->amount;
            $successurl = $request->successurl;
            $failurl = $request->failurl;
            $paymentMethodId = 0; // 0 for MyFatoorah invoice or 1 for Knet in test mode
            $customer_ref = uniqid();

            $curlData = [
                'CustomerName'       => Auth::user()->name,
                'InvoiceValue'       => $amount,
                'DisplayCurrencyIso' => $gettoken->currency,
                'CustomerEmail'      => Auth::user()->email,
                'CallBackUrl'        => $successurl,
                'ErrorUrl'           => $failurl,
                'MobileCountryCode'  => '+91',
                'CustomerMobile'     => '12345678',
                'Language'           => 'en',
                'CustomerReference'  => $customer_ref,
                'SourceInfo'         => 'Laravel ' . app()::VERSION . ' - MyFatoorah Package ' . MYFATOORAH_LARAVEL_PACKAGE_VERSION

            ];
            $data     = $this->mfObj->getInvoiceURL($curlData, $paymentMethodId);
            $nexturl = $data['invoiceURL'];
            // dd($nexturl);

            $response = ['status' => 1, 'message' => 'Invoice created successfully.', 'nexturl' => $nexturl];
        } catch (Exception $e) {
            // dd($e);
            $response = ['status' => 0, 'message' => $e];
        }
        return response()->json($response);
    }

    public function myFatoorah_index(Request $request)
    {
        $gettoken = Payment::where('payment_name', 'myFatoorah')->first();
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
            $mobile = str_replace('+91', '', $request->mobile);
            $grandtotal = $request->grand_total;
            $successurl = $request->successurl;
            $failurl = $request->failurl;
            $paymentMethodId = 0; // 0 for MyFatoorah invoice or 1 for Knet in test mode
            $customer_ref = uniqid();

            $curlData = [
                'CustomerName'       => $name,
                'InvoiceValue'       => $grandtotal,
                'DisplayCurrencyIso' => $gettoken->currency,
                'CustomerEmail'      => $email,
                'CallBackUrl'        => $successurl,
                'ErrorUrl'           => $failurl,
                'MobileCountryCode'  => '+91',
                'CustomerMobile'     => $mobile,
                'Language'           => 'en',
                'CustomerReference'  => $customer_ref,
                'SourceInfo'         => 'Laravel ' . app()::VERSION . ' - MyFatoorah Package ' . MYFATOORAH_LARAVEL_PACKAGE_VERSION

            ];
            $data     = $this->mfObj->getInvoiceURL($curlData, $paymentMethodId);
            $nexturl = $data['invoiceURL'];
            $response = ['status' => 1, 'message' => 'Invoice created successfully.', 'nexturl' => $nexturl];
        } catch (\Exception $e) {
            dd($e);
            $response = ['status' => 0, 'message' => trans('messages.wrong'), 200];
        }
        return response()->json($response);
    }
}
