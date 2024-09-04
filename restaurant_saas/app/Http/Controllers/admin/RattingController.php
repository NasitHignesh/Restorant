<?php
namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Ratting;
use Illuminate\Support\Facades\Auth;
class RattingController extends Controller
{
    public function index(Request $request)
    { 
     $getreview = Ratting::where('vendor_id',Auth::user()->id)->orderByDesc('id')->get();
       return view('admin.reviews.reviews',compact('getreview'));
    }

    public function add(Request $request)
    { 
       return view('admin.reviews.add');
    }

    public function save(Request $request)
   {
       $request->validate([
           'rating'=>'required',
           'review'=>'required',
       ], [
           'rating.required' => trans('messages.rating_required'),
           'review.required' => trans('messages.review_required'),
       ]);

       $reviews= new Ratting();
       $reviews->vendor_id = Auth::user()->id;
       $reviews->rating = $request->rating;
       $reviews->review = $request->review;
    //    dd($reviews);
       $reviews->save();
       return redirect('admin/reviews')->with('success', trans('messages.success'));
   }


   public function edit(Request $request)
   { 
      $editreviews = Ratting::where('id',$request->id)->first();
      return view('admin.reviews.edit',compact('editreviews'));
   }

   public function update(Request $request)
   {
    $request->validate([
        'rating'=>'required',
        'review'=>'required',
    ], [
        'rating.required' => trans('messages.rating_required'),
           'review.required' => trans('messages.review_required'),
    ]);
       $editreviews = Ratting::where('id', $request->id)->first();
       $editreviews->vendor_id = Auth::user()->id;
       $editreviews->rating = $request->rating;
       $editreviews->review = $request->review;
       $editreviews->update();
       return redirect('admin/reviews')->with('success', trans('messages.success'));
   }


    public function destroy(Request $request){
        $review = Ratting::where('id', $request->id)->delete();
        if ($review) {
            return 1;
        } else {
            return 0;
        }
    }
}
