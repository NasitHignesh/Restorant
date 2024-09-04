<?php
namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\Payment;

class PaymentController extends Controller
{
    public function index()
    {
        if (Auth::user()->type == 5) {
            $getpayment = Payment::where('payment_name', '!=', 'wallet')->where('vendor_id', Auth::user()->id)->where('is_activate', '1')->get();
        } else {
            $getpayment = Payment::where('payment_name', '!=', 'wallet')->where('vendor_id', '1')->where('is_activate', 1)->get();
        }
        return view('admin.payment.payment', compact('getpayment'));
    }
    public function update(Request $request)
    {
        $transaction_type = $request->transaction_type;
        $is_available = $request->is_available;
        $currency = $request->currency;
        $environment = $request->environment;
        $public_key = $request->public_key;
        $secret_key = $request->secret_key;
        foreach ($transaction_type as $key => $no) {
            if(Auth::user()->type == 1){
                $data = Payment::where('payment_name',$no)->first();
            }else{
                $data = Payment::where('vendor_id',Auth::user()->id)->where('payment_name',$no)->first();
            }
            if (!empty($is_available)) {
                if (isset($is_available[$no])) {
                    $data->is_available = $is_available[$no];
                } else {
                    $data->is_available = 5;
                }
            } else {
                $data->is_available = 5;
            }
            if (in_array($no, ['wallet','razorpay','stripe','flutterwave','Paystack','mercadopago','myfatoorah','paypal','toyyibpay'])) {
                $data->environment = $environment[$no];
                if ($transaction_type != 7 || $transaction_type != 8) {
                    $data->public_key = $public_key[$no];
                }
                $data->secret_key = $secret_key[$no];
                $data->currency = $currency[$no];
            }
            if ($transaction_type == 5) {
                $data->encryption_key = $request->encryption_key;
            }
            $data->save();
        }
        if (Auth::user()->type == 1) {
            $pay_data = Payment::where('payment_name', 'banktransfer');
            $pay_data->bank_name = $request->bank_name;
            $pay_data->account_holder_name = $request->account_holder_name;
            $pay_data->bank_transfer = $request->bank_transfer;
            $pay_data->account_number = $request->account_number;
            $pay_data->bank_ifsc_code = $request->bank_ifsc_code;
            $pay_data->save();
        }
        if ($request->hasFile('cod_image')) {
            if (Auth::user()->type == 5) {
                $pay_data = Payment::where('payment_name', 'cod')->where('vendor_id', Auth::user()->id)->first();
            } else {
                $pay_data = Payment::where('payment_name', 'cod')->where('vendor_id', 1)->first();
            }
            if ($pay_data->image != "cod.png" && file_exists(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image)) {
                unlink(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image);
            }
            $image = 'payment-' . uniqid() . '.' . $request->file('cod_image')->getClientOriginalExtension();
            $request->file('cod_image')->move(env('ASSETSPATHURL') . 'admin-assets/images/about/', $image);
            $pay_data->image = $image;
            $pay_data->save();
        }
        if ($request->hasFile('wallet_image')) {
            if (Auth::user()->type == 5) {
                $pay_data = Payment::where('payment_name', 'wallet')->where('vendor_id', Auth::user()->id)->first();
            } else {
                $pay_data = Payment::where('payment_name', 'wallet')->where('vendor_id', 1)->first();
            }
            if ($pay_data->image != "wallet.png" && file_exists(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image)) {
                unlink(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image);
            }
            $image = 'payment-' . uniqid() . '.' . $request->file('wallet_image')->getClientOriginalExtension();
            $request->file('wallet_image')->move(env('ASSETSPATHURL') . 'admin-assets/images/about/', $image);
            $pay_data->image = $image;
            $pay_data->save();
        }
        if ($request->hasFile('razorpay_image')) {
            if (Auth::user()->type == 5) {
                $pay_data = Payment::where('payment_name', 'razorpay')->where('vendor_id', Auth::user()->id)->first();
            } else {
                $pay_data = Payment::where('payment_name', 'razorpay')->where('vendor_id', 1)->first();
            }
            if ($pay_data->image != "razorpay.png" && file_exists(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image)) {
                unlink(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image);
            }
            $image = 'payment-' . uniqid() . '.' . $request->file('razorpay_image')->getClientOriginalExtension();
            $request->file('razorpay_image')->move(env('ASSETSPATHURL') . 'admin-assets/images/about/', $image);
            $pay_data->image = $image;
            $pay_data->save();
        }
        if ($request->hasFile('stripe_image')) {
            if (Auth::user()->type == 5) {
                $pay_data = Payment::where('payment_name', 'stripe')->where('vendor_id', Auth::user()->id)->first();
            } else {
                $pay_data = Payment::where('payment_name', 'stripe')->where('vendor_id', 1)->first();
            }
            if ($pay_data->image != "stripe.png" && file_exists(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image)) {
                unlink(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image);
            }
            $image = 'payment-' . uniqid() . '.' . $request->file('stripe_image')->getClientOriginalExtension();
            $request->file('stripe_image')->move(env('ASSETSPATHURL') . 'admin-assets/images/about/', $image);
            $pay_data->image = $image;
            $pay_data->save();
        }
        if ($request->hasFile('flutterwave_image')) {
            if (Auth::user()->type == 5) {
                $pay_data = Payment::where('payment_name', 'flutterwave')->where('vendor_id', Auth::user()->id)->first();
            } else {
                $pay_data = Payment::where('payment_name', 'flutterwave')->where('vendor_id', 1)->first();
            }
            if ($pay_data->image != "flutterwave.png" && file_exists(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image)) {
                unlink(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image);
            }
            $image = 'payment-' . uniqid() . '.' . $request->file('flutterwave_image')->getClientOriginalExtension();
            $request->file('flutterwave_image')->move(env('ASSETSPATHURL') . 'admin-assets/images/about/', $image);
            $pay_data->image = $image;
            $pay_data->save();
        }
        if ($request->hasFile('paystack_image')) {
            if (Auth::user()->type == 5) {
                $pay_data = Payment::where('payment_name', 'paystack')->where('vendor_id', Auth::user()->id)->first();
            } else {
                $pay_data = Payment::where('payment_name', 'paystack')->where('vendor_id', 1)->first();
            }
            if ($pay_data->image != "paystck.png" && file_exists(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image)) {
                unlink(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image);
            }
            $image = 'payment-' . uniqid() . '.' . $request->file('paystack_image')->getClientOriginalExtension();
            $request->file('paystack_image')->move(env('ASSETSPATHURL') . 'admin-assets/images/about/', $image);
            $pay_data->image = $image;
            $pay_data->save();
        }
        if($request->hasFile('bank_image')){
            if (Auth::user()->type == 5) {
                $pay_data = Payment::where('payment_name', 'banktransfer')->where('vendor_id',Auth::user()->id)->first();
            } else {
                $pay_data = Payment::where('payment_name', 'banktransfer')->where('vendor_id',1)->first();
            }
            if($pay_data->image != "bank.png" && file_exists(env('ASSETPATHURL') . 'admin-assets/images/about/payment/'.$pay_data->image)){
                unlink(env('ASSETPATHURL') . 'admin-assets/images/about/payment/'.$pay_data->image);
            }
            $image = 'payment-' . uniqid() . '.' . $request->file('bank_image')->getClientOriginalExtension();
            $request->file('bank_image')->move(env('ASSETPATHURL') . 'admin-assets/images/about/payment/', $image);
            $pay_data->image = $image;
            $pay_data->save();
        }
        if ($request->hasFile('mercadopago_image')) {
            if (Auth::user()->type == 5) {
                $pay_data = Payment::where('payment_name', 'mercadopago')->where('vendor_id', Auth::user()->id)->first();
            } else {
                $pay_data = Payment::where('payment_name', 'mercadopago')->where('vendor_id', 1)->first();
            }
            if ($pay_data->image != "mercadopago.png" && file_exists(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image)) {
                unlink(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image);
            }
            $image = 'payment-' . uniqid() . '.' . $request->file('mercadopago_image')->getClientOriginalExtension();
            $request->file('mercadopago_image')->move(env('ASSETSPATHURL') . 'admin-assets/images/about/', $image);
            $pay_data->image = $image;
            $pay_data->save();
        }
        if ($request->hasFile('myfatoorah_image')) {
            if (Auth::user()->type == 5) {
                $pay_data = Payment::where('payment_name', 'myfatoorah')->where('vendor_id', Auth::user()->id)->first();
            } else {
                $pay_data = Payment::where('payment_name', 'myfatoorah')->where('vendor_id', 1)->first();
            }
            if ($pay_data->image != "myfatoorah.png" && file_exists(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image)) {
                unlink(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image);
            }
            $image = 'payment-' . uniqid() . '.' . $request->file('myfatoorah_image')->getClientOriginalExtension();
            $request->file('myfatoorah_image')->move(env('ASSETSPATHURL') . 'admin-assets/images/about/', $image);
            $pay_data->image = $image;
            $pay_data->save();
        }
        if ($request->hasFile('paypal_image')) {
            if (Auth::user()->type == 5) {
                $pay_data = Payment::where('payment_name', 'paypal')->where('vendor_id', Auth::user()->id)->first();
            } else {
                $pay_data = Payment::where('payment_name', 'paypal')->where('vendor_id', 1)->first();
            }
            if ($pay_data->image != "paypal.png" && file_exists(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image)) {
                unlink(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image);
            }
            $image = 'payment-' . uniqid() . '.' . $request->file('paypal_image')->getClientOriginalExtension();
            $request->file('paypal_image')->move(env('ASSETSPATHURL') . 'admin-assets/images/about/', $image);
            $pay_data->image = $image;
            $pay_data->save();
        }
        if ($request->hasFile('toyyibpay_image')) {
            if (Auth::user()->type == 5) {
                $pay_data = Payment::where('payment_name', 'toyyibpay')->where('vendor_id',Auth::user()->id)->first();
            }else{
                $pay_data = Payment::where('payment_name', 'toyyibpay')->where('vendor_id',1)->first();
            }
            if ($pay_data->image != "toyyibpay.png" && file_exists(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image)) {
                unlink(env('ASSETSPATHURL') . 'admin-assets/images/about/' . $pay_data->image);
            }
            $image = 'payment-' . uniqid() . '.' . $request->file('toyyibpay_image')->getClientOriginalExtension();
            $request->file('toyyibpay_image')->move(env('ASSETSPATHURL') . 'admin-assets/images/about/', $image);
            $pay_data->image = $image;
            $pay_data->save();
        }
        return redirect()->back()->with('success', trans('messages.success'));
    }
}

