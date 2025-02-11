@extends('admin.theme.default')
@section('content')
    <div class="row justify-content-between align-items-center mb-3">
        <div class="col-12">
            <h5 class="pages-title fs-2">{{ trans('labels.add_new') }}</h5>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="card border-0 box-shadow">
                <div class="card-body">
                    <form action="{{ URL::to('admin/plan/save_plan') }}" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label class="form-label">{{ trans('labels.name') }}<span class="text-danger">
                                        *</span></label>
                                <input type="text" class="form-control" name="plan_name" value="{{ old('plan_name') }}"
                                    placeholder="{{ trans('labels.name') }}" required>
                                @error('plan_name')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="col-sm-6 form-group">
                                <label class="form-label">{{ trans('labels.amount') }}<span class="text-danger">
                                        *</span></label>
                                <input type="text" class="form-control numbers_only" name="plan_price"
                                    value="{{ old('plan_price') }}" placeholder="{{ trans('labels.amount') }}" required>
                                @error('plan_price')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="form-label">{{ trans('labels.duration_type') }}</label>
                                    <select class="form-select type" name="type">
                                        <option value="1" {{ old('type') == '1' ? 'selected' : '' }}>
                                            {{ trans('labels.fixed') }}</option>
                                        <option value="2" {{ old('type') == '2' ? 'selected' : '' }}>
                                            {{ trans('labels.custom') }}</option>
                                    </select>
                                    @error('type')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group 1 selecttype">
                                    <label class="form-label">{{ trans('labels.duration') }}<span class="text-danger"> *
                                        </span></label>
                                    <select class="form-select" name="plan_duration">
                                        <option value="1">{{ trans('labels.one_month') }}</option>
                                        <option value="2">{{ trans('labels.three_month') }}</option>
                                        <option value="3">{{ trans('labels.six_month') }}</option>
                                        <option value="4">{{ trans('labels.one_year') }}</option>
                                        <option value="5">{{ trans('labels.lifetime') }}</option>
                                    </select>
                                    @error('plan_duration')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group 2 selecttype">
                                    <label class="form-label">{{ trans('labels.days') }}<span class="text-danger"> *
                                        </span></label>
                                    <input type="text" class="form-control numbers_only" name="plan_days" value="" placeholder="{{ trans('labels.days') }}">
                                    @error('plan_days')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label class="form-label">{{ trans('labels.service_limit') }}</label>
                                    <select class="form-select service_limit_type" name="service_limit_type">
                                        <option value="1" {{ old('service_limit_type') == '1' ? 'selected' : '' }}>
                                            {{ trans('labels.limited') }}</option>
                                        <option value="2" {{ old('service_limit_type') == '2' ? 'selected' : '' }}>
                                            {{ trans('labels.unlimited') }}</option>
                                    </select>
                                    @error('service_limit_type')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group 1 service-limit">
                                    <label class="form-label">{{ trans('labels.max_business') }}<span class="text-danger">
                                            *</span></label>
                                    <input type="text" class="form-control numbers_only" name="plan_max_business"
                                        value="{{ old('plan_max_business') }}"
                                        placeholder="{{ trans('labels.max_business') }}">
                                    @error('plan_max_business')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label class="form-label mt-2">{{ trans('labels.booking_limit') }}</label>
                                    <select class="form-select booking_limit_type" name="booking_limit_type">
                                        <option value="1" {{ old('booking_limit_type') == '1' ? 'selected' : '' }}>
                                            {{ trans('labels.limited') }}</option>
                                        <option value="2" {{ old('booking_limit_type') == '2' ? 'selected' : '' }}>
                                            {{ trans('labels.unlimited') }}</option>
                                    </select>
                                    @error('booking_limit_type')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group 1 booking-limit">
                                    <label class="form-label">{{ trans('labels.orders_limit') }}<span class="text-danger">
                                            *
                                        </span></label>
                                    <input type="text" class="form-control numbers_only" name="plan_appoinment_limit"
                                        value="{{ old('plan_appoinment_limit') }}"
                                        placeholder="{{ trans('labels.orders_limit') }}">
                                    @error('plan_appoinment_limit')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="form-label">{{ trans('labels.description') }}<span
                                            class="text-danger"> *</span></label>
                                    <textarea class="form-control" rows="3" name="plan_description" placeholder="{{ trans('labels.description') }}"
                                        required>{{ old('plan_description') }}</textarea>
                                    @error('plan_description')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label class="form-label">{{ trans('labels.features') }}<span class="text-danger"> *
                                        </span></label>
                                    <div id="repeater">
                                        <div class="d-flex mb-2">
                                            <input type="text" class="form-control" name="plan_features[]"
                                                value="{{ old('plan_features[]') }}"
                                                placeholder="{{ trans('labels.features') }}" required>
                                            <button type="button" class="btn btn-success mx-2 btn-sm rounded-5"
                                                id="addfeature">
                                                <i class="fa-regular fa-plus clickadd"></i>
                                            </button>
                                        </div>
                                        @error('plan_features')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                @if (App\Models\SystemAddons::where('unique_identifier', 'custom_domain')->first() != null &&
                                        App\Models\SystemAddons::where('unique_identifier', 'custom_domain')->first()->activated == 1)
                                    <div class="form-group">
                                        <input class="form-check-input" type="checkbox" name="custom_domain"
                                            id="custom_domain">
                                        <label class="form-check-label"
                                            for="custom_domain">{{ trans('labels.custom_domain_available') }}</label>@if (env('Environment') == 'sendbox')<span class="badge badge bg-danger ms-2">{{ trans('labels.addon') }}</span>@endif
                                        @error('custom_domain')
                                            <span class="text-danger" id="custom_domain">{{ $message }}</span>
                                        @enderror
                                    </div>
                                @endif
                                @if (App\Models\SystemAddons::where('unique_identifier', 'vendor_app')->first() != null &&
                                        App\Models\SystemAddons::where('unique_identifier', 'vendor_app')->first()->activated == 1)
                                    <div class="form-group">
                                        <input class="form-check-input" type="checkbox" name="vendor_app"
                                            id="vendor_app">
                                        <label class="form-check-label"
                                            for="vendor_app">{{ trans('labels.vendor_app_available') }}</label>@if (env('Environment') == 'sendbox')<span class="badge badge bg-danger ms-2">{{ trans('labels.addon') }}</span>@endif
                                        @error('vendor_app')
                                            <span class="text-danger" id="vendor_app">{{ $message }}</span>
                                        @enderror
                                    </div>
                                @endif
                                @if (App\Models\SystemAddons::where('unique_identifier', 'google_analytics')->first() != null &&
                                        App\Models\SystemAddons::where('unique_identifier', 'google_analytics')->first()->activated == 1)
                                    <div class="form-group">
                                        <input class="form-check-input" type="checkbox" name="google_analytics"
                                            id="google_analytics">
                                        <label class="form-check-label"
                                            for="google_analytics">{{ trans('labels.google_analytics_available') }}</label>@if (env('Environment') == 'sendbox')<span class="badge badge bg-danger ms-2">{{ trans('labels.addon') }}</span>@endif
                                        @error('google_analytics')
                                            <span class="text-danger" id="google_analytics">{{ $message }}</span>
                                        @enderror
                                    </div>
                                @endif
                            </div>
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="form-label mt-2 mb-0">{{ trans('labels.themes') }}
                                        <span class="text-danger"> * </span> </label>@if (env('Environment') == 'sendbox')<span class="badge badge bg-danger ms-2">{{ trans('labels.addon') }}</span>@endif
                                    @php
                                    if (App\Models\SystemAddons::where('unique_identifier', 'template')->first() != null &&
                                    App\Models\SystemAddons::where('unique_identifier', 'template')->first()->activated == 1){
                                        $themes = [1, 2, 3];
                                    } else {
                                        $themes = [1];
                                    }
                                    @endphp
                                    <ul class="theme-selection">
                                        @foreach ($themes as $key => $item)
                                        <li>
                                            <input type="checkbox" name="themecheckbox[]" id="template{{ $item }}" value="{{ $item }}" {{ $key == 0 ? 'checked' : '' }}>
                                            <label for="template{{ $item }}">
                                                <img src="{{ Helper::image_path('theme-' . $item . '.png') }}">
                                            </label>
                                        </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                            
                                <div class="col-md-12 selectimg">
                                    <div class="form-group">
                                        <div class="row">
                                        @foreach ($themes as $key => $item)
                                            <div class="col-12 col-md-4 col-lg-4 col-xl-3">
                                                <label for="template{{ $item }}" class="radio-card position-relative">
                                                    <input type="checkbox" name="themecheckbox[]" id="template{{ $item }}" value="{{ $item }}" {{ $key == 0 ? 'checked' : '' }} >
                                                    <div class="card-content-wrapper border rounded-2">
                                                        <span class="check-icon position-absolute"></span>
                                                        <div class="selecimg">
                                                            <img src="{{ Helper::image_path('theme-' . $item . '.png') }}">
                                                        </div>
                                                    </div>
                                                </label>
                                            </div>
                                        @endforeach
                                        </div>
                                    </div>
                                </div>

                            
                            <div class="form-group text-end">
                                <a href="{{ URL::to('admin/plan') }}"
                                    class="btn btn-danger btn-cancel m-1">{{ trans('labels.cancel') }}</a>
                                <button class="btn btn-success btn-succes m-1"
                                    @if (env('Environment') == 'sendbox') type="button" onclick="myFunction()" @else type="submit" @endif>{{ trans('labels.save') }}</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('script')
    <script src="{{ url(env('ASSETSPATHURL') . '/admin-assets/assets/js/custom/plan.js') }}"></script>
@endsection

