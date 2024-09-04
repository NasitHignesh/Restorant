@extends('admin.theme.default')
@section('content')
<div class="row justify-content-between align-items-center mb-3">
    <div class="col-12">
        <h5 class="pages-title fs-2">{{ trans('labels.edit') }}</h5>
    </div>
</div>
<div class="row mb-7">
    <div class="col-12">
        <div class="card border-0 box-shadow">
            <div class="card-body">
                <form action="{{ URL::to('admin/plan/update_plan-' . $editplan->id) }}" method="POST">
                    @csrf
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <label class="form-label">{{ trans('labels.name') }}<span class="text-danger"> *
                                </span></label>
                            <input type="text" class="form-control" name="plan_name" value="{{ $editplan->name }}" placeholder="{{ trans('labels.name') }}" required>
                            @error('plan_name')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="col-sm-6 form-group">
                            <label class="form-label">{{ trans('labels.amount') }}<span class="text-danger"> *
                                </span></label>
                            <input type="text" class="form-control numbers_only" name="plan_price" value="{{ $editplan->price }}" placeholder="{{ trans('labels.amount') }}" required>
                            @error('plan_price')
                            <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group col-sm-6">
                            <div class="form-group">
                                <label class="form-label">{{ trans('labels.duration_type') }}</label>
                                <select class="form-select type" name="type">
                                    <option value="1" {{ $editplan->plan_type == '1' ? 'selected' : '' }}>
                                        {{ trans('labels.fixed') }}
                                    </option>
                                    <option value="2" {{ $editplan->plan_type == '2' ? 'selected' : '' }}>
                                        {{ trans('labels.custom') }}
                                    </option>
                                </select>
                                @error('type')
                                <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group 1 selecttype">
                                <label class="form-label">{{ trans('labels.duration') }}<span class="text-danger"> *
                                    </span></label>
                                <select class="form-select" name="plan_duration">
                                    <option value="1" {{ $editplan->duration == 1 ? 'selected' : '' }}>
                                        {{ trans('labels.one_month') }}
                                    </option>
                                    <option value="2" {{ $editplan->duration == 2 ? 'selected' : '' }}>
                                        {{ trans('labels.three_month') }}
                                    </option>
                                    <option value="3" {{ $editplan->duration == 3 ? 'selected' : '' }}>
                                        {{ trans('labels.six_month') }}
                                    </option>
                                    <option value="4" {{ $editplan->duration == 4 ? 'selected' : '' }}>
                                        {{ trans('labels.one_year') }}
                                    </option>
                                    <option value="5" {{ $editplan->duration == 5 ? 'selected' : '' }}>
                                        {{ trans('labels.lifetime') }}
                                    </option>
                                </select>
                                @error('plan_duration')
                                <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group 2 selecttype">
                                <label class="form-label">{{ trans('labels.days') }}<span class="text-danger">
                                        *
                                    </span></label>
                                <input type="text" class="form-control numbers_only" name="plan_days" value="{{ $editplan->days }}">
                                @error('plan_days')
                                <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label class="form-label">{{ trans('labels.service_limit') }}</label>
                                <select class="form-select service_limit_type" name="service_limit_type">
                                    <option value="1" {{ $editplan->order_limit != '-1' ? 'selected' : '' }}>
                                        {{ trans('labels.limited') }}
                                    </option>
                                    <option value="2" {{ $editplan->order_limit == '-1' ? 'selected' : '' }}>
                                        {{ trans('labels.unlimited') }}
                                    </option>
                                </select>
                                @error('service_limit_type')
                                <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group 1 service-limit">
                                <label class="form-label">{{ trans('labels.max_business') }}<span class="text-danger">
                                        *
                                    </span></label>
                                <input type="number" class="form-control numbers_only" name="plan_max_business" value="{{ $editplan->order_limit == -1 ? '' : $editplan->order_limit }}" placeholder="{{ trans('labels.max_business') }}">
                                @error('plan_max_business')
                                <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label class="form-label mt-2">{{ trans('labels.booking_limit') }}</label>
                                <select class="form-select booking_limit_type" name="booking_limit_type">
                                    <option value="1" {{ $editplan->appointment_limit != '-1' ? 'selected' : '' }}>
                                        {{ trans('labels.limited') }}
                                    </option>
                                    <option value="2" {{ $editplan->appointment_limit == '-1' ? 'selected' : '' }}>
                                        {{ trans('labels.unlimited') }}
                                    </option>
                                </select>
                                @error('booking_limit_type')
                                <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group 1 booking-limit">
                                <label class="form-label">{{ trans('labels.orders_limit') }}<span class="text-danger">
                                        *
                                    </span></label>
                                <input type="number" class="form-control numbers_only" name="plan_appoinment_limit" value="{{ $editplan->appointment_limit == -1 ? '' : $editplan->appointment_limit }}" placeholder="{{ trans('labels.orders_limit') }}">
                                @error('plan_appoinment_limit')
                                <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group col-sm-6">
                            <div class="form-group">
                                <label class="form-label">{{ trans('labels.description') }}<span class="text-danger"> *
                                    </span></label>
                                <textarea class="form-control" rows="3" name="plan_description" placeholder="{{ trans('labels.description') }}" required>{{ $editplan->description }}</textarea>
                                @error('plan_description')
                                <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label class="form-label">{{ trans('labels.features') }}<span class="text-danger">
                                        * </span></label>
                                <div id="repeater">
                                    @php
                                    $new_array = [];
                                    if ($editplan->features != ' ') {
                                    $new_array = explode('|', $editplan->features);
                                    }
                                    @endphp
                                    @foreach ($new_array as $key => $features)
                                    <div class="d-flex mb-3" id="deletediv{{ $key }}">
                                        <input type="text" class="form-control mb-0" name="plan_features[]" value="{{ $features }}" placeholder="{{ trans('labels.features') }}" required>
                                        @if ($key == 0)
                                        <button type="button" class="btn btn-danger mx-2 btn-sm rounded-5" id="addfeature">
                                            <i class="fa-regular fa-plus"></i>
                                        </button>
                                        @else
                                        <button type="button" class="btn btn-danger mx-2 btn-sm rounded-5" onclick="deletefeature({{ $key }})">
                                            <i class="fa-regular fa-trash"></i>
                                        </button>
                                        @endif
                                    </div>
                                    @endforeach
                                    @error('plan_features')
                                    <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            @if (App\Models\SystemAddons::where('unique_identifier', 'custom_domain')->first() != null &&
                            App\Models\SystemAddons::where('unique_identifier', 'custom_domain')->first()->activated == 1)
                            <div class="form-group">
                                <input class="form-check-input" type="checkbox" name="custom_domain" id="custom_domain" @if ($editplan->custom_domain == '1') checked @endif>
                                <label class="form-check-label" for="custom_domain">{{ trans('labels.custom_domain_available') }}</label>@if (env('Environment') == 'sendbox')<span class="badge badge bg-danger ms-2">{{ trans('labels.addon') }}</span>@endif
                                @error('custom_domain')
                                <span class="text-danger" id="custom_domain">{{ $message }}</span>
                                @enderror
                            </div>
                            @endif
                            @if (App\Models\SystemAddons::where('unique_identifier', 'vendor_app')->first() != null && App\Models\SystemAddons::where('unique_identifier', 'vendor_app')->first()->activated == 1)
                            <div class="form-group">
                                <input class="form-check-input" type="checkbox" name="vendor_app" id="vendor_app" @if ($editplan->vendor_app == '1') checked @endif>
                                <label class="form-check-label" for="vendor_app">{{ trans('labels.vendor_app_available') }}</label>@if (env('Environment') == 'sendbox')<span class="badge badge bg-danger ms-2">{{ trans('labels.addon') }}</span>@endif
                                @error('vendor_app')
                                <span class="text-danger" id="vendor_app">{{ $message }}</span>
                                @enderror
                            </div>
                            @endif
                            @if (App\Models\SystemAddons::where('unique_identifier', 'google_analytics')->first() != null &&
                            App\Models\SystemAddons::where('unique_identifier', 'google_analytics')->first()->activated == 1)
                            <div class="form-group">
                                <input class="form-check-input" type="checkbox" name="google_analytics" id="google_analytics" @if ($editplan->google_analytics == '1') checked @endif>
                                <label class="form-check-label" for="google_analytics">{{ trans('labels.google_analytics_available') }}</label>@if (env('Environment') == 'sendbox')<span class="badge badge bg-danger ms-2">{{ trans('labels.addon') }}</span>@endif
                                @error('google_analytics')
                                <span class="text-danger" id="google_analytics">{{ $message }}</span>
                                @enderror
                            </div>
                            @endif
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="form-label mb-0">{{ trans('labels.themes') }}
                                    <span class="text-danger"> * </span> </label>@if (env('Environment') == 'sendbox')<span class="badge badge bg-danger ms-2">{{ trans('labels.addon') }}</span>@endif
                                @php $themes = explode(',', $editplan->themes_id); @endphp

                                <ul class="theme-selection">
                                    <li>
                                        <input type="checkbox" name="themecheckbox[]" id="template1" value="1" {{ in_array(1, $themes)  ? 'checked' : '' }}>
                                        <label for="template1">
                                            <img src="{{ Helper::image_path('theme-1.png') }}">
                                        </label>
                                    </li>
                                    @if (App\Models\SystemAddons::where('unique_identifier', 'template')->first() != null &&
                                    App\Models\SystemAddons::where('unique_identifier', 'template')->first()->activated == 1)
                                    <li>
                                        <input type="checkbox" name="themecheckbox[]" id="template2" value="2" {{ in_array(2, $themes) ? 'checked' : '' }}>
                                        <label for="template2">
                                            <img src="{{ Helper::image_path('theme-2.png') }}">
                                        </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="themecheckbox[]" id="template3" value="3" {{ in_array(3, $themes) ? 'checked' : '' }}>
                                        <label for="template3">
                                            <img src="{{ Helper::image_path('theme-3.png') }}">
                                        </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="themecheckbox[]" id="template4" value="4" {{ in_array(4, $themes)  ? 'checked' : '' }}>
                                        <label for="template4">
                                            <img src="{{ Helper::image_path('theme-4.png') }}">
                                        </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" name="themecheckbox[]" id="template5" value="5" {{ in_array(5, $themes) ? 'checked' : '' }}>
                                        <label for="template5">
                                            <img src="{{ Helper::image_path('theme-5.png') }}">
                                        </label>
                                    </li>
                                    @endif
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-12 selectimg">
                            <div class="form-group">
                                <div class="row mb-3">
                                    <div class="col-12 col-md-4 col-lg-4 col-xl-3 pt-0 mt-0">
                                        <label for="template1" class="radio-card position-relative">
                                            <input type="checkbox" name="themecheckbox[]" id="template1" value="1" {{ in_array(1, $themes) ? 'checked' : '' }}>
                                            <div class="card-content-wrapper border rounded-2">
                                                <span class="check-icon position-absolute"></span>
                                                <div class="selecimg">
                                                    <img src="{{ Helper::image_path('theme-1.png') }}">
                                                </div>
                                            </div>
                                        </label>
                                    </div>

                                    @if (App\Models\SystemAddons::where('unique_identifier', 'template')->first() != null && App\Models\SystemAddons::where('unique_identifier', 'template')->first()->activated == 1)

                                    <div class="col-12 col-md-4 col-lg-4 col-xl-3 pt-0 mt-0">
                                        <label for="template2" class="radio-card position-relative">
                                            <input type="checkbox" name="themecheckbox[]" id="template2" value="2" {{ in_array(2, $themes) ? 'checked' : '' }}>
                                            <div class="card-content-wrapper border rounded-2">
                                                <span class="check-icon position-absolute"></span>
                                                <div class="selecimg">
                                                    <img src="{{ Helper::image_path('theme-2.png') }}">
                                                </div>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col-12 col-md-4 col-lg-4 col-xl-3 pt-0 mt-0">
                                        <label for="template3" class="radio-card position-relative">
                                            <input type="checkbox" name="themecheckbox[]" id="template3" value="3" {{ in_array(3, $themes) ? 'checked' : '' }}>
                                            <div class="card-content-wrapper border rounded-2">
                                                <span class="check-icon position-absolute"></span>
                                                <div class="selecimg">
                                                    <img src="{{ Helper::image_path('theme-3.png') }}">
                                                </div>
                                            </div>
                                        </label>
                                    </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12 selectimg">
                        <div class="form-group">
                            <div class="row">
                                @foreach ($themes as $key => $item)
                                <div class="col-12 col-md-4 col-lg-4 col-xl-3">
                                    <label for="template{{ $item }}" class="radio-card position-relative">
                                        <input type="radio" name="themecheckbox[]" id="template{{ $item }}" value="{{ $item }}" {{ $key == 0 ? 'checked' : '' }}>
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
                        <a href="{{ URL::to('admin/plan') }}" class="btn btn-danger btn-cancel m-1">{{ trans('labels.cancel') }}</a>
                        <button class="btn btn-success btn-succes m-1" @if (env('Environment')=='sendbox' ) type="button" onclick="myFunction()" @else type="submit" @endif>{{ trans('labels.save') }}</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
@endsection
@section('scripts')
<script src="{{ url(env('ASSETSPATHURL') . '/admin-assets/assets/js/custom/plan.js') }}"></script>
@endsection