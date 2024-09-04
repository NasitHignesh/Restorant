<div class="col card-specing">
    <div class="card border-0 bg-transparent h-100 d-flex align-items-center justify-content-between card-row">
        <div class="card-image">
            <a href="{{ URL::to('item-' . $itemdata->slug) }}">
                <img src="{{ $itemdata['item_image']->image_url }}" class="card-img-top border-0 rounded-circle" alt="dishes">
            </a>
        </div>
        <div class="card-body">
            <div class="d-flex align-items-center justify-content-between">
                <p class="pb-2 m-0 cat-name">{{ $itemdata['category_info']->category_name }}</p>
                <!---------------------- wishlist ---------------------->
                <div class="set-fav-{{ $itemdata->id }}">
                @if (Auth::user() && Auth::user()->type == 2)

                @if ($itemdata->is_favorite == 1)
                    <a class="heart-icon btn btn-sm text-dark"
                            href="javascript:void(0)" onclick="managefavorite('{{ $itemdata->id }}',0,'{{ URL::to('/managefavorite') }}','{{request()->url()}}')" title="{{ trans('labels.remove_wishlist') }}">
                        <i class="fa-solid fa-bookmark fs-6"></i> </a>

                @else
                    <a class="heart-icon btn btn-sm text-dark"
                        href="javascript:void(0)" onclick="managefavorite('{{ $itemdata->id }}',1,'{{ URL::to('/managefavorite') }}','{{request()->url()}}')" title="{{ trans('labels.add_wishlist') }}">
                        <i class="fa-regular fa-bookmark fs-6"></i> </a>
                @endif

                @endif
                </div>
            </div>
            <h5 class="item-card-title">
                @if ($itemdata->item_type == 1)
                    <img src="{{ Helper::image_path('veg.svg') }}" alt="" class="{{session()->get('direction') == "rtl" ? 'ms-1' : 'me-1'}}">
                @else
                    <img src="{{ Helper::image_path('nonveg.svg') }}" alt="" class="{{session()->get('direction') == "rtl" ? 'ms-1' : 'me-1'}}">
                @endif
                {{ $itemdata->item_name }}
            </h5>
            @php
                if ($itemdata->has_variation == 1) {
                    foreach ($itemdata['variation'] as $key => $value) {
                        $price = $value->product_price;
                        if ($key == 0) {
                            break;
                        }
                    }
                } else {
                    $price = $itemdata->item_price;
                }
            @endphp
            <p class="price">{{ Helper::currency_format($price) }}</p>
            <!---------------------- add button ---------------------->
            

            @if ($itemdata->is_cart == 1)


            <div class="item-quantity px-3 float-end">

                <button type="button" class="btn btn-sm text-primary fw-500" onclick="removefromcart('{{ URL::to('/cart') }}','{{ trans('messages.remove_cartitem_note') }}','{{ trans('labels.goto_cart') }}')">-</button>
                <input class="text-primary fw-500 item-total-qty-{{$itemdata->slug}}" type="text" value="{{ Helper::get_item_cart($itemdata->id) }}" disabled/>

                    @if ($itemdata->addons_id != '' || count($itemdata->variation) > 0)
                        <a class="btn btn-sm fw-500 text-primary"
                            onclick="showitem('{{ $itemdata->slug }}','{{ URL::to('/show-item') }}')">+</a>
                    @else
                        <a class="btn btn-sm fw-500 text-primary"
                            onclick="calladdtocart('{{ $itemdata->slug }}','{{ $itemdata->item_name }}','{{ $itemdata->item_type }}','{{ $itemdata['item_image']->image_name }}','{{ $itemdata->tax }}','{{ $itemdata->price }}','','','','','','{{ URL::to('addtocart') }}')">+</a>
                    @endif 
                
            </div>
            @else
                @if ($itemdata->addons_id != '' || count($itemdata->variation) > 0)
                    <a class="btn btn-sm border btn-primary fw-500 px-3 float-end"
                        onclick="showitem('{{ $itemdata->slug }}','{{ URL::to('/show-item') }}')">{{ trans('labels.add') }}</a>
                @else
                    <a class="btn btn-sm border btn-primary fw-500 px-3 float-end"
                        onclick="calladdtocart('{{ $itemdata->slug }}','{{ $itemdata->item_name }}','{{ $itemdata->item_type }}','{{ $itemdata['item_image']->image_name }}','{{ $itemdata->tax }}','{{ $itemdata->price }}','','','','','','{{ URL::to('addtocart') }}')">{{ trans('labels.add') }}</a>
                @endif
            @endif
        </div>
    </div>
</div>