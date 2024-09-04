@extends('admin.theme.default')
@section('content')
@include('admin.breadcrumb')
<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-lg-12">
            <div class="card border-0">
                <div class="card-body">
                    <div class="form-validation">
                        <form action="{{ URL::to('admin/users/update-' . $getvendordata->id) }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group ">
                                        <label class="col-form-label" for="">{{ trans('labels.name') }} <span class="text-danger">*</span> </label>
                                        <input type="text" class="form-control" name="name" id="name" placeholder="{{ trans('labels.name') }}" value="{{ $getvendordata->name }}">
                                        @error('name')
                                        <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group ">
                                        <label class="col-form-label" for="">{{ trans('labels.email') }} <span class="text-danger">*</span> </label>
                                        <input type="text" class="form-control" name="email" id="email" placeholder="{{ trans('labels.email') }}" value="{{ $getvendordata->email }}">
                                        @error('email')
                                        <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group ">
                                        <label class="col-form-label" for="">{{ trans('labels.mobile') }} <span class="text-danger">*</span> </label>
                                        <input type="text" class="form-control" name="mobile" id="mobile" placeholder="{{ trans('labels.mobile') }}" value="{{ $getvendordata->mobile }}">
                                        @error('mobile')
                                        <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group ">
                                        <label class="col-form-label" for="">{{ trans('labels.identity_image') }} (420 x 525) <span class="text-danger">*</span> </label>
                                        <input type="file" class="form-control" name="image" id="image">
                                        @error('image')
                                        <span class="text-danger">{{ $message }}</span><br>
                                        @enderror
                                        <img src="{{Helper::image_path($getvendordata->profile_image)}}" alt="" class="img-fluid rounded hw-50 mt-1">
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="country" class="form-label">{{ trans('labels.country') }}<span class="text-danger"> * </span></label>
                                    <select name="country" class="form-select" id="country" required>
                                        <option value="">{{trans('labels.select')}}</option>
                                        @foreach ($countries as $country)
                                        <option value="{{ $country->id }}" {{ $country->id == $getvendordata->country ? 'selected' : '' }}>
                                            {{ $country->name }}
                                        </option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="city" class="form-label">{{ trans('labels.city') }}<span class="text-danger">
                                            * </span></label>
                                    <select name="city" class="form-select" id="city" required>
                                        @foreach ($city as $citys)
                                        <option value="{{@$citys->id}}" {{$citys->id == $getvendordata->city ? 'selected' : ''}}>{{@$citys->city}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="form-group text-end">
                                <a href="{{ URL::to('admin/vendor') }}" class="btn btn-outline-danger">{{ trans('labels.cancel') }}</a>
                                <button class="btn btn-primary" @if (env('Environment')=='sendbox' ) type="button" onclick="myFunction()" @else type="submit" @endif>{{ trans('labels.save') }}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
<input type="hidden" id="cityurl" value="{{URL::to('admin/getcity')}}">
@section('script')
<script type="text/javascript">
    var cityurl = "{{URL::to('admin/getcity')}}";
    var select = "{{trans('labels.select')}}";
    var cityid = '0';
</script>
<script src="{{ url(env('ASSETSPATHURL') . '/admin-assets/assets/js/custom/users.js') }}"></script>
@endsection