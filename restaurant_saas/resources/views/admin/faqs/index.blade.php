@extends('admin.theme.default')
@section('content')
<div class="d-flex justify-content-between align-items-center">
    <h5 class="text-uppercase">{{ trans('labels.faqs') }}</h5>
    <a href="{{ URL::to('admin/faqs/add') }}" class="btn btn-secondary px-2 d-flex">
        <i class="fa-regular fa-plus mx-1"></i>{{ trans('labels.add') }}
    </a>
</div>
<div class="row mt-3">
    <div class="col-12">
        <div class="card border-0 mb-3">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered py-3 zero-configuration w-100 dataTable no-footer">
                        <thead>
                            <tr class="text-uppercase fw-500">
                                <td>{{ trans('labels.srno') }}</td>
                                <td>{{ trans('labels.question') }}</td>
                                <td>{{ trans('labels.answer') }}</td>
                                <td>{{ trans('labels.action') }}</td>
                            </tr>
                        </thead>
                        <tbody>
                            @php

                            $i = 1;

                            @endphp
                            @foreach ($faqs as $faq)
                            <tr class="fs-7">
                                <td>@php

                                    echo $i++;

                                    @endphp</td>
                                <td>{{ $faq->question }}</td>
                                <td>{{ $faq->answer }}</td>
                                <td>
                                    <a href="{{ URL::to('/admin/faqs/edit-' . $faq->id) }}" class="btn btn-outline-info btn-sm mx-1"> <i class="fa-regular fa-pen-to-square"></i></a>
                                    <a href="javascript:void(0)" @if (env('Environment')=='sendbox' ) onclick="myFunction()" @else onclick="Delete('{{$faq->id}}','{{ URL::to('admin/faqs/delete') }}')" @endif class="btn btn-outline-danger btn-sm">
                                        <i class="fa-regular fa-trash"></i></a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('script')
<script src="{{url(env('ASSETSPATHURL').'admin-assets/assets/js/custom/faqs.js')}}"></script>
@endsection