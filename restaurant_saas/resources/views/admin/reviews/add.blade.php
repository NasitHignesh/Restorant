@extends('admin.theme.default')
@section('content')
<div class="d-flex justify-content-between align-items-center">
    <h5 class="text-uppercase">{{ trans('labels.add_new') }}</h5>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb m-0">
            <li class="breadcrumb-item"><a href="{{ URL::to('admin/reviews') }}">{{ trans('labels.reviews') }}</a></li>
            <li class="breadcrumb-item active {{session()->get('direction') == 2 ? 'breadcrumb-rtl' : ''}}" aria-current="page">{{ trans('labels.add') }}</li>
        </ol>
    </nav>
</div>
<div class="row mt-3">
    <div class="col-12">
        <div class="card border-0 box-shadow">
            <div class="card-body">
                <form action="{{URL::to('/admin/reviews/save')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="form-label">{{trans('labels.ratting')}}<span class="text-danger"> * </span></label>
                            <select name="rating" class="form-select">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label class="form-label">{{trans('labels.review')}}<span class="text-danger"> * </span></label>
                            <input type="text" class="form-control" name="review"  placeholder="{{trans('labels.review')}}" required>
                            @error('review')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="form-group text-end">
                        <a href="{{ URL::to('admin/reviews') }}" class="btn btn-outline-danger">{{ trans('labels.cancel') }}</a>
                        <button @if (env('Environment')=='sendbox' ) type="button" onclick="myFunction()" @else type="submit" @endif class="btn btn-secondary ">{{ trans('labels.save') }}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
@section('script')
<script src="{{url(env('ASSETSPATHURL').'admin-assets/assets/js/custom/reviews.js') }}"></script>
@endsection