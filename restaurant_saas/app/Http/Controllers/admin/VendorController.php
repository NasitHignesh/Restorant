<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Helpers\helper;
use App\Models\Settings;
use App\Models\Transaction;
use App\Models\PricingPlan;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;


class VendorController extends Controller
{
    public function index()
    {
        $getusers = User::where('type', '=', '5')->orderBydesc('id')->get();
        return view('admin.vendor.users', compact('getusers'));
    }

    public function add(Request $request)
    {
        $countries = Country::where('is_deleted', 2)->where('is_available', 1)->get();
        return view('admin.vendor.add', compact('countries'));
    }

    public function store(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'name' => 'required',
                'email' => 'required|unique:users',
                'mobile' => 'required|unique:users',
                'password' => 'required|unique:users',
            ],
            [
                "name.required" => trans('messages.name_required'),
                "email.required" => trans('messages.email_required'),
                "email.unique" => trans('messages.email_exist'),
                "mobile.required" => trans('messages.mobile_required'),
                "mobile.unique" => trans('messages.mobile_exist'),
                "password.required" => trans('messages.password_required'),

            ]
        );
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {

            $users = new User;
            $users->name = $request->name;
            $users->email = $request->email;
            $users->mobile = $request->mobile;
            $users->country = $request->country;
            $users->city = $request->city;
            $users->profile_image = 'unknown.png';
            $users->login_type = 'email';
            $users->password = Hash::make($request->password);
            $users->type = "5";
            $users->save();
            return redirect('admin/vendor')->with('success', trans('messages.success'));
        }
    }
  
    public function edit($id)
    {
        $getvendordata = User::where('id', $id)->first();
        $countries = Country::where('is_deleted', 2)->where('is_available', 1)->get();

        return view('admin.user.edit', compact('getvendordata','countries','city'));
    }

    public function show($id)
    {
        $getvendordata = User::find($id);
        $countries = Country::where('is_deleted', 2)->where('is_available', 1)->get();
        $city = City::where('country_id', $getvendordata->country)->get();
        return view('admin.vendor.edit', compact('getvendordata','countries','city'));
    }

    public function vendor_login(Request $request)
    {
        $user = User::where('id', $request->id)->first();
        session()->put('vendor_login', 1);
        Auth::login($user);
        return redirect('admin/home');
    }
    
    public function admin_back(Request $request)
    {
        $getuser = User::where('type', '1')->first();
        Auth::login($getuser);
        session()->forget('vendor_login');
        return redirect('admin/vendor');
    }

    public function status(Request $request)
    {
        User::where('id', $request->id)->update(['is_available' => $request->status]);
        return redirect('admin/users')->with('success', trans('messages.success'));
    }
    
    public function getcity(Request $request)
    {
        try {
            $data['city'] = City::select("id", "city")->where('country_id', $request->country)->where('is_available', 1)->where('is_deleted', 2)->get();
            return response()->json($data);
        } catch (\Throwable $th) {
            return response()->json(['status' => 0, 'message' => trans('messages.wrong')], 200);
        }
    }
    
    // public function update(Request $request)
    // {
    //     $validator = Validator::make($request->all(), [
    //         'name' => 'required',
    //         'email' => 'required|unique:users,email,' . $request->id,
    //         'mobile' => 'required|unique:users,mobile,' . $request->id,
    //     ], [
    //         "name.required" => trans('messages.name_required'),
    //         "email.required" => trans('messages.email_required'),
    //         "email.unique" => trans('messages.email_exist'),
    //         "mobile.required" => trans('messages.mobile_required'),
    //         "mobile.unique" => trans('messages.mobile_exist'),
    //     ]);
        
    //     if ($validator->fails()) {
    //         return redirect()->back()->withErrors($validator)->withInput();
    //     } else {
    //         $users = User::find($request->id);
    //         if ($request->file('image') != "") {
    //             $validator = Validator::make(
    //                 $request->all(),
    //                 ['image' => 'required|image|mimes:jpeg,png,jpg',],
    //                 [
    //                     "image.required" => trans('messages.image_required'),
    //                     "image.image" => trans('messages.enter_image_file'),
    //                     "image.mimes" => trans('messages.valid_image'),
    //                 ]
    //             );
    //             if ($validator->fails()) {
    //                 return redirect()->back()->withErrors($validator)->withInput();
    //             } else {
    //                 if (file_exists(env('ASSETSPATHURL') . 'admin-assets/images/profile/' . $users->profile_image)) {
    //                     unlink(env('ASSETSPATHURL') . 'admin-assets/images/profile/' . $users->profile_image);
    //                 }
    //                 $image = 'profile-' . uniqid() . '.' . $request->image->getClientOriginalExtension();
    //                 $request->image->move(env('ASSETSPATHURL') . 'admin-assets/images/profile', $image);
    //                 $users->profile_image = $image;
    //                 $users->update();
    //             }
    //         }
            
    //         $users->name = $request->name;
    //         $users->email = $request->email;
    //         $users->mobile = $request->mobile;
    //         $users->country = $request->country;
    //         $users->city = $request->city;
    //         $users->save();
    //         return redirect('admin/vendor')->with('success', trans('messages.success'));
    //     }
    // }
     

    public function update(Request $request)
    {
        $edituser = User::where('slug', $request->slug)->first();
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email,' . $edituser->id,
            'mobile' => 'required|numeric|unique:users,mobile,' . $edituser->id,
        ], [
            'name.required' => trans('messages.name_required'),
            'email.required' => trans('messages.unique_email_required'),
            'mobile.required' => trans('messages.unique_mobile_required'),
            'email.email' => trans('messages.invalid_email'),
            'email.unique' => trans('messages.unique_email_required'),
            'mobile.unique' => trans('messages.unique_mobile'),
        ]);
        $edituser->name = $request->name;
        $edituser->email = $request->email;
        $edituser->mobile = $request->mobile;
        $edituser->country_id = $request->country;
        $edituser->city_id = $request->city;
        if ($request->has('profile')) {
           
            if (Auth::user()->image != "default.png" && file_exists(storage_path('app/public/admin-assets/images/profile/' . Auth::user()->image))) {
                unlink(storage_path('app/public/admin-assets/images/profile/' . Auth::user()->image));
            }
            $edit_image = $request->file('profile');
            $profileImage = 'profile-' . uniqid() . "." . $edit_image->getClientOriginalExtension();
            $edit_image->move(storage_path('app/public/admin-assets/images/profile/'), $profileImage);
            $edituser->image = $profileImage;
        }
        if (!isset($request->allow_store_subscription)) {
            if ($request->plan != null && !empty($request->plan)) {
                $plan = PricingPlan::where('id', $request->plan)->first();
                $edituser->plan_id = $plan->id;
                $edituser->purchase_amount = $plan->price;
                $edituser->purchase_date = date("Y-m-d h:i:sa");
                $transaction = new transaction();
                $transaction->vendor_id = $edituser->id;
                $transaction->plan_id = $plan->id;
                $transaction->plan_name = $plan->name;
                $transaction->payment_type = "offline";
                $transaction->payment_id = "";
                $transaction->amount = $plan->price;
                $transaction->service_limit = $plan->order_limit;
                $transaction->appoinment_limit = $plan->appointment_limit;
                $transaction->status = 2;
                $transaction->purchase_date = date("Y-m-d h:i:sa");
                $transaction->expire_date = helper::get_plan_exp_date($plan->duration, $plan->days);
                $transaction->duration = $plan->duration;
                $transaction->days = $plan->days;
                $transaction->custom_domain = $plan->custom_domain;
                $transaction->themes_id = $plan->themes_id;
                $transaction->save();
                // $edituser->update();
                if ($plan->custom_domain == "2") {
                    Settings::where('vendor_id', Auth::user()->id)->update(['custom_domain' => "-"]);
                }
                if ($plan->custom_domain == "1") {
                    $checkdomain = CustomDomain::where('vendor_id', Auth::user()->id)->first();
                    if (@$checkdomain->status == 2) {
                        Settings::where('vendor_id', Auth::user()->id)->update(['custom_domain' => $checkdomain->current_domain]);
                    }
                }
            }
        }
        if (Str::contains(request()->url(), 'user')) {
            if (isset($request->allow_store_subscription)) {
                $edituser->plan_id = "";
                $edituser->purchase_amount = "";
                $edituser->purchase_date = "";
            }
            $edituser->allow_without_subscription = isset($request->allow_store_subscription) ? 1 : 2;
            $edituser->available_on_landing = isset($request->show_landing_page) ? 1 : 2;
            // $edituser->update();
        }
        $edituser->update();
        if ($request->has('updateprofile') && $request->updateprofile == 1) {
            return redirect('admin/settings')->with('success', trans('messages.success'));
        } else {
            return redirect('admin/users')->with('success', trans('messages.success'));
        }
    }


}





