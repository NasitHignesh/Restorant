@extends('admin.theme.default')
@section('content')
@include('admin.breadcrumb')
<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-lg-12">
            <div class="card border-0">
                <div class="card-body">
                    <div class="form-validation">
                        <form action="{{URL::to('admin/vendor/store')}}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="col-form-label" for="">{{trans('labels.name')}} <span class="text-danger">*</span> </label>
                                        <input type="text" class="form-control" name="name" value="{{old('name')}}" id="name" placeholder="{{trans('labels.name')}}">
                                        @error('name') <span class="text-danger">{{$message}}</span> @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="col-form-label" for="">{{trans('labels.email')}} <span class="text-danger">*</span> </label>
                                        <input type="text" class="form-control" name="email" value="{{old('email')}}" id="email" placeholder="{{trans('labels.email')}}">
                                        @error('email') <span class="text-danger">{{$message}}</span> @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="col-form-label" for="">{{trans('labels.mobile')}} <span class="text-danger">*</span> </label>
                                        <input type="text" class="form-control" name="mobile" value="{{old('mobile')}}" id="mobile" placeholder="{{trans('labels.mobile')}}">
                                        @error('mobile') <span class="text-danger">{{$message}}</span> @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="col-form-label" for="">{{trans('labels.password')}} <span class="text-danger">*</span> </label>
                                        <input type="password" class="form-control" name="password" value="{{old('password')}}" id="password" placeholder="{{trans('labels.password')}}">
                                        @error('password') <span class="text-danger">{{$message}}</span> @enderror
                                    </div>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="country" class="form-label">{{ trans('labels.country') }}<span class="text-danger"> * </span></label>
                                    <select name="country" class="form-select" id="country" required>
                                        <option value="">{{trans('labels.--select--')}}</option>
                                        @foreach ($countries as $country)
                                        <option value="{{$country->id}}">{{$country->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="city" class="form-label">{{ trans('labels.city') }}<span class="text-danger"> * </span></label>
                                    <select name="city" class="form-select" id="city" required>
                                        <option value="">{{trans('labels.--select--')}}</option>
                                    </select>
                                </div>

                            </div>
                            <div class="form-group text-end">
                                <a href="{{URL::to('admin/vendor')}}" class="btn btn-outline-danger">{{trans('labels.cancel')}}</a>
                                <button class="btn btn-primary" @if (env('Environment')=='sendbox' ) type="button" onclick="myFunction()" @else type="submit" @endif>{{trans('labels.save')}}</button>
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
    var cityid ='0';
</script>
<script src="{{ url(env('ASSETSPATHURL') . '/admin-assets/assets/js/custom/users.js') }}"></script>
@endsection


