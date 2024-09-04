<table class="table table-striped table-bordered zero-configuration">
    <thead>
        <tr>
            <th>#</th>
            <th>{{ trans('labels.image') }}</th>
            <th>{{ trans('labels.name') }}</th>
            <th>{{ trans('labels.email') }}</th>
            <th>{{ trans('labels.mobile') }}</th>
            <th>{{ trans('labels.status') }}</th>
            <th>{{ trans('labels.action') }}</th>
        </tr>
    </thead>
    <tbody>
        @php $i = 1; @endphp
        @foreach ($getusers as $users)
        <tr>
            <td>@php echo $i++; @endphp</td>
            <td><img src="{{url(env('ASSETSPATHURL').'admin-assets/images/profile/'.$users->profile_image)}}" alt="" height="50px"></td>
            <td> {{$users->name}} </td>
            <td> {{$users->email}} </td>
            <td> {{$users->mobile}} </td>
            <td>
                @if ($users->is_available == 1)
                <a class="btn btn-sm btn-outline-success" @if(env('Environment')=='sendbox' ) onclick="myFunction()" @else onclick="StatusUpdate('{{$users->id}}','2','{{URL::to('admin/users/status')}}')" @endif> <i class="fa-sharp fa-solid fa-check"></i></a>
                @else
                <a class="btn btn-sm btn-outline-danger" @if(env('Environment')=='sendbox' ) onclick="myFunction()" @else onclick="StatusUpdate('{{$users->id}}','1','{{URL::to('admin/users/status')}}')" @endif> <i class="fa-sharp fa-solid fa-xmark"></i></a>
                @endif
            </td>
            <td>
                <a class="btn btn-sm btn-outline-info" href="{{URL::to('admin/users/edit-'.$users->id)}}"><i class="fa-solid fa-edit"></i></a>
                <a class="btn btn-sm btn-outline-dark" href="{{ URL::to('admin/users/login-' . $users->id) }}"> <i class="fa-regular fa-arrow-right-to-bracket"></i> </a>
                <a class="btn btn-sm btn-outline-danger" href="{{URL::to('/'.$users->id)}}" target="_blank"><i class="fa-solid fa-eye"></i></a>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>


