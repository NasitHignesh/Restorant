<?php
namespace App\Http\Controllers\admin;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\Item;
use App\Models\Category;
use App\Models\User;
use App\Models\Promotionalbanner;
use Illuminate\Support\Facades\Validator;
class BannerController extends Controller
{
    public function index(){
        $getbanner = Banner::orderByDesc('id')->get();
        return view('admin.banner.banner',compact('getbanner'));
    }
    public function add(){
        $getitem = Item::where('item_status','1')->where('is_deleted','2')->orderByDesc('id')->get();
        $getcategory = Category::where('is_available','1')->where('is_deleted','2')->orderByDesc('id')->get();
        return view('admin.banner.add',compact('getitem','getcategory'));
    }
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'image' => 'required|image|mimes:jpeg,png,jpg',
            'cat_id'=> 'required_if:type,==,1',
            'item_id'=> 'required_if:type,==,2',
        ],[
            "image.required"=>trans('messages.image_required'),
            "image.image"=>trans('messages.enter_image_file'),
            "image.mimes"=>trans('messages.valid_image'),
            "cat_id.required_if"=>trans('messages.category_required'),
            "item_id.required_if"=>trans('messages.item_required'),
        ]);
        if ($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput();
        }else{
            $image = 'banner-' . uniqid() . '.' . $request->image->getClientOriginalExtension();
            $request->image->move(env('ASSETSPATHURL').'admin-assets/images/banner', $image);
            $banner = new Banner;
            $banner->image = $image;
            $banner->section = $request->section;
            if ($request->type == "1") {
                $banner->type = $request->type;
                $banner->item_id = "";
                $banner->cat_id = $request->cat_id;
            } else if ($request->type == "2") {
                $banner->type = $request->type;
                $banner->cat_id = "";
                $banner->item_id = $request->item_id;
            }else{
                $banner->cat_id = "";
                $banner->item_id = "";
                $banner->type = "";
            }
            $banner->save();
            return redirect('admin/bannersection-'.$request->section)->with('success', trans('messages.success'));
        }
    }
    public function show(Request $request)
    {
        $getbanner = Banner::find($request->id);
        $getitem = Item::where('item_status','1')->where('is_deleted','2')->orderByDesc('id')->get();
        $getcategory = Category::where('is_available','1')->where('is_deleted','2')->orderByDesc('id')->get();
        return view('admin.banner.edit',compact('getbanner','getitem','getcategory'));
    }
    public function update(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'image' => 'image|mimes:jpeg,png,jpg',
            'cat_id'=> 'required_if:type,==,1',
            'item_id'=> 'required_if:type,==,2',
        ],[
            "image.image"=>trans('messages.enter_image_file'),
            "image.mimes"=>trans('messages.valid_image'),
            "cat_id.required_if"=>trans('messages.category_required'),
            "item_id.required_if"=>trans('messages.item_required'),
        ]);
        if ($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput();
        }else{
            $banner = Banner::find($request->id);
            if ($request->type == "1") {
                $banner->type = $request->type;
                $banner->item_id = "";
                $banner->cat_id = $request->cat_id;
            } else if ($request->type == "2") {
                $banner->type = $request->type;
                $banner->cat_id = "";
                $banner->item_id = $request->item_id;
            }else{
                $banner->cat_id = "";
                $banner->item_id = "";
                $banner->type = "";
            }
            if(isset($request->image)){
                if($request->hasFile('image')){
                    if(file_exists(env('ASSETSPATHURL').'admin-assets/images/banner/'.$banner->image)){
                        unlink(env('ASSETSPATHURL').'admin-assets/images/banner/'.$banner->image);
                    }
                    $image = $request->file('image');
                    $image = 'banner-' . uniqid() . '.' . $request->image->getClientOriginalExtension();
                    $request->image->move(env('ASSETSPATHURL').'admin-assets/images/banner', $image);
                    $banner->image=$image;
                    $banner->save();
                } 
            }
            $banner->save();
            return redirect('admin/bannersection-'.$request->section)->with('success', trans('messages.success'));
        }
    }
    public function status(Request $request){
        $checksbanner = Banner::where('id', $request->id)->update(['is_available'=>$request->status]);
        if ($checksbanner) {
            return 1;
        } else {
            return 0;
        }
    }
    public function destroy(Request $request)
    {
        $banner=Banner::where('id', $request->id)->first();
        $updatebanner=Banner::where('id', $request->id)->delete();
        if ($updatebanner) {
            if(file_exists(env('ASSETSPATHURL').'admin-assets/images/banner/'.$banner->image)){
                unlink(env('ASSETSPATHURL').'admin-assets/images/banner/'.$banner->image);
            }
            return 1;
        } else {
            return 0;
        }
    }

    // promotional_banner
    public function promotional_banner()
    {
        $getbannerlist = Promotionalbanner::with('vendor_info')->get();
        return view('admin.promotionalbanners.index',compact('getbannerlist'));
    }
    public function promotional_banneradd()
    {
        $vendors = User::where('is_available',1)->where('type',2)->get();
        return view('admin.promotionalbanners.add',compact('vendors'));
    }
    public function promotional_bannersave_banner(Request $request)
    {
        $request->validate([
            'image' => 'required|image',
        ], [
            'image.required' => trans('messages.image_required'),
        ]);
        $banner = new Promotionalbanner();
        if ($request->has('image')) {
            $image = 'promotion-' . uniqid() . "." . $request->file('image')->getClientOriginalExtension();
            $request->file('image')->move(storage_path('app/public/admin-assets/images/banners/'), $image);
            $banner->image = $image;
        }
        $banner->vendor_id = $request->vendor;
        $banner->save();
        return redirect('admin/promotionalbanners')->with('success', trans('messages.success'));
    }
    public function promotional_banneredit(Request $request)
    {
        $vendors = User::where('is_available',1)->where('type',2)->get();
        $banner = Promotionalbanner::where('id',$request->id)->first();
        return view('admin.promotionalbanners.edit',compact('vendors','banner'));
    }
    public function promotional_bannerupdate(Request $request)
    {
        $banner = Promotionalbanner::where('id',$request->id)->first();
        if ($request->has('image')) {
            if (file_exists(storage_path('app/public/admin-assets/images/Promotionalbanner/' .$banner->image))) {
                unlink(storage_path('app/public/admin-assets/images/Promotionalbanner/' . $banner->image));
            }
            $image = 'promotion-' . uniqid() . "." . $request->file('image')->getClientOriginalExtension();
            $request->file('image')->move(storage_path('app/public/admin-assets/images/Promotionalbanner/'), $image);
            $banner->image = $image;
        }
        $banner->vendor_id = $request->vendor;
        $banner->update();
        return redirect('admin/promotionalbanners')->with('success', trans('messages.success'));
    }

    public function promotional_bannerdelete(Request $request)
    {
        $feature = Promotionalbanner::where('id', $request->id)->delete();
        return 1;
    }


}
