@extends('admin.theme.default')
@section('content')
<div class="d-flex justify-content-between align-items-center">

    <h5 class="text-uppercase">{{ trans('labels.add_new') }}</h5>

    <nav aria-label="breadcrumb">

        <ol class="breadcrumb m-0">

            <li class="breadcrumb-item"><a href="{{ URL::to('admin/promotionalbanners') }}">{{ trans('labels.promotional banners') }}</a></li>

            <li class="breadcrumb-item active {{session()->get('direction') == 2 ? 'breadcrumb-rtl' : ''}}" aria-current="page">{{ trans('labels.add') }}</li>

        </ol>

    </nav>

</div>
<div class="row mt-3">
    <div class="col-12">
        <div class="card border-0 box-shadow">
            <div class="card-body">
                <form action="{{ URL::to('/admin/promotionalbanners/save') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="form-label">{{ trans('labels.vendor_title') }}<span class="text-danger"> *
                                </span></label>
                            <select name="vendor" class="form-select" required>
                                <option value="">{{trans('labels.select')}}</option>
                                @foreach($vendors as $vendor)
                                <option value="{{ $vendor->id}}">{{ $vendor->name}}</option>
                                @endforeach
                            </select>
                            @error('vendor')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label class="form-label">{{ trans('labels.image') }} (1920 x 450)<span class="text-danger"> *
                                </span> </label>
                            <input type="file" name="image" class="form-control" required>
                            @error('image')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>
                    <div class="form-group text-end">
                        <a href="{{ URL::to('admin/promotionalbanners') }}" class="btn btn-outline-danger">{{ trans('labels.cancel') }}</a>
                        <button @if (env('Environment')=='sendbox' ) type="button" onclick="myFunction()" @else type="submit" @endif class="btn btn-secondary ">{{ trans('labels.save') }}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

@endsection
@section('script')
    <script src="{{url(env('ASSETSPATHURL').'admin-assets/assets/js/custom/banner.js') }}"></script>
@endsection