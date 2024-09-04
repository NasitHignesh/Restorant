@extends('admin.theme.default')
@section('content')
@include('admin.breadcrumb')
<div class="d-flex justify-content-between align-items-center">
    <h5 class="text-uppercase">{{ trans('labels.countries') }}</h5>
    <a href="{{ URL::to('admin/countries/add') }}" class="btn btn-secondary px-2 d-flex">
        <i class="fa-regular fa-plus mx-1"></i>{{ trans('labels.add') }}
    </a>
</div>
<div class="row">
    <div class="col-12">
        <div class="card border-0 my-3">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered py-3 zero-configuration w-100">
                        <thead>
                            <tr class="text-uppercase fw-500">
                                <td>{{trans('labels.srno')}}</td>
                                <td>{{trans('labels.country')}}</td>
                                <td>{{ trans('labels.status') }}</td>
                                <td>{{trans('labels.action')}}</td>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                            $i=1;
                            @endphp
                            @foreach ($allcontries as $country)
                            <tr class="fs-7">
                                <td>@php
                                    echo $i++
                                    @endphp</td>
                                <td>{{$country->name}}</td>
                                <td>
                                    @if ($country->is_available == '1')
                                    <a @if (env('Environment')=='sendbox' ) onclick="myFunction()" @else onclick="StatusUpdate('{{$country->id}}','2','{{ URL::to('admin/countries/change_status-' . $country->id) }}')" @endif class="btn btn-sm btn-outline-success"><i class="fas fa-check"></i></a>
                                    @else
                                    <a @if (env('Environment')=='sendbox' ) onclick="myFunction()" @else onclick="StatusUpdate('{{$country->id}}','1','{{ URL::to('admin/countries/change_status-' . $country->id) }}')" @endif class="btn btn-sm btn-outline-danger"><i class="fas fa-close"></i></a>
                                    @endif
                                </td>
                                <td>
                                    <a href="{{URL::to('admin/countries/edit-'.$country->id)}}" class="btn btn-outline-info btn-sm "> <i class="fa-regular fa-pen-to-square"></i></a>
                                    <a @if (env('Environment')=='sendbox' ) onclick="myFunction()" @else onclick="Delete('{{$country->id}}','','{{URL::to('admin/countries/delete-'.$country->id)}}')" @endif class="btn btn-outline-danger btn-sm "> <i class="fa-regular fa-trash"></i></a>
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
<script src="{{url(env('ASSETSPATHURL').'admin-assets/assets/js/custom/employee.js')}}"></script>
@endsection
