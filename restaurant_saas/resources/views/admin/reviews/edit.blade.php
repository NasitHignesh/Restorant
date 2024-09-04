@extends('admin.theme.default')
@section('content')
<div class="d-flex justify-content-between align-items-center">
    <h5 class="text-uppercase">{{ trans('labels.edit') }}</h5>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb m-0">
            <li class="breadcrumb-item"><a href="{{ URL::to('admin/reviews') }}">{{ trans('labels.reviews') }}</a></li>
            <li class="breadcrumb-item active {{session()->get('direction') == 2 ? 'breadcrumb-rtl' : ''}}" aria-current="page">{{ trans('labels.edit') }}</li>
        </ol>
    </nav>
</div>

<div class="row mt-3">
    <div class="col-12">
        <div class="card border-0 box-shadow">
            <div class="card-body">
                <form action="{{ URL::to('/admin/reviews/update-' . $editreviews->id) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="form-label">{{ trans('labels.ratting') }}<span class="text-danger"> *
                                </span></label>
                            <select name="rating" class="form-select">
                                <option value="1" {{ $editreviews->star == 1 ? 'selected' : '' }}>1</option>
                                <option value="2" {{ $editreviews->star == 2 ? 'selected' : '' }}>2</option>
                                <option value="3" {{ $editreviews->star == 3 ? 'selected' : '' }}>3</option>
                                <option value="4" {{ $editreviews->star == 4 ? 'selected' : '' }}>4</option>
                                <option value="5" {{ $editreviews->star == 5 ? 'selected' : '' }}>5</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label class="form-label">{{ trans('labels.review') }}<span class="text-danger"> *
                                </span></label>
                            <input type="text" class="form-control" name="review" value="{{ $editreviews->review }}" placeholder="{{ trans('labels.review') }}" required>
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
<script src="{{url(env('ASSETSPATHURL').'admin-assets/assets/js/custom/employee.js')}}"></script>
@endsection