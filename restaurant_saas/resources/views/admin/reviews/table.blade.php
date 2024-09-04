<table class="table table-striped table-bordered zero-configuration">
    <thead>
        <tr>
            <th>#</th>
            <th>{{ trans('labels.rating') }}</th>
            <th>{{ trans('labels.review') }}</th>
            <th>{{ trans('labels.action') }}</th>
        </tr>
    </thead>
    <tbody>
        @php $i = 1; @endphp
        @foreach ($getreview as $reviews)
        <tr>
            <td>@php echo $i++; $j = 0; @endphp</td>
            <td>
                @for($j = 0; $j<$reviews->rating; $j++)
                    <i class="fa fa-star text-warning"></i>
                    @endfor
                    ({{$reviews->rating}})
            </td>
            <td><small>{{$reviews->review}}</small></td>
            <td>
                <a href="{{URL::to('admin/reviews/edit-'.$reviews->id)}}" class="btn btn-outline-info btn-sm "> <i class="fa-regular fa-pen-to-square"></i></a>
                <a class="btn btn-sm btn-outline-danger" @if(env('Environment')=='sendbox' ) onclick="myFunction()" @else onclick="DeleteData('{{$reviews->id}}','{{URL::to('admin/reviews/destroy')}}')" @endif><i class="fa fa-trash"></i></a>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>