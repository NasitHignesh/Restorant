@extends('web.layout.default')
@section('page_title')
| {{ trans('labels.home') }}
@endsection
@section('content')
<!-- Slider Area Start Here -->
@if (count($sliders)>0)
<section class="theme-3-home-slider">
    <div id="carouselExampleCaptions" class="carousel slide vertical" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>
        </div>
        <div class="carousel-inner">
            @foreach ($sliders as $key => $sliderdata)
            <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                <img src="{{ Helper::image_path($sliderdata->image) }}" class="d-block w-100" alt="...">
                <div class="carousel-caption d-flex h-100 align-items-center justify-content-center flex-column">
                    <h5>{{ $sliderdata->title }}</h5>
                    <p>{{ $sliderdata->description }}</p>
                    @if ($sliderdata['item_info'] != '')
                    <a href="{{ URL::to('/item-' . $sliderdata['item_info']->slug) }}" class="btn btn-primary fw-bold">{{ trans('labels.explore') }} <i class="fa-solid fa-circle-arrow-right"></i> </a>
                    @endif
                    @if ($sliderdata['category_info'] != '')
                    <a href="{{ URL::to('/menu/?category=' . $sliderdata['category_info']->slug) }}" class="btn btn-primary fw-bold">{{ trans('labels.explore') }} <i class="fa-solid fa-circle-arrow-right"></i> </a>
                    @endif
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endif
<!-- Slider Area End Here -->
<!-- theme 3 Category Section Start Here -->
@if (count(Helper::get_categories()) > 0)
<section class="theme-3-category">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="row align-items-center justify-content-between">
                    <div class="col-auto">
                        <h1 class="text-capitalize fw-bold">{{ trans('labels.categories') }}</h1>
                    </div>
                    <div class="col-auto text-end align-center">
                        <a href="{{route('categories')}}" class="btn btn-sm btn-outline-primary">{{ trans('labels.view_all') }}</a>
                    </div>
                </div>
                <div id="category3" class="owl-carousel mt-2 h-100">
                    @foreach (Helper::get_categories() as $categorydata)
                    <a href="{{ URL::to('/menu/?category=' . $categorydata->slug) }}">
                        <div class="card p-2 border-3 h-100">
                            <div class="card-img">
                                <img src="{{ Helper::image_path($categorydata->image) }}" class="rounded-1" alt="category">
                            </div>
                            <div class="card-footer bg-transparent">
                                <p class="text-center my-2">{{ $categorydata->category_name }}</p>
                            </div>
                        </div>
                    </a>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
@endif
<!-- theme 3 Category Section End Here -->
<!-- theme 3 Promotional topbanners Start Here -->
@if (count($banners['topbanners']) > 0)
<section class="banner1">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div id="news-slider" class="owl-carousel">
                    @foreach ($banners['topbanners'] as $bannerdata)
                    <div class="post-slide">
                        <div class="post-img">
                            @if ($bannerdata['item_info'] != '')
                            <a href="{{ URL::to('/item-' . $bannerdata['item_info']->slug) }}">
                                @elseif($bannerdata['category_info'] != '')
                                <a href="{{ URL::to('/menu/?category=' . $bannerdata['category_info']->slug) }}">
                                    @else
                                    <a href="javascript:void(0);">
                                        @endif
                                        <img src="{{ $bannerdata['image'] }}" alt="banner">
                                    </a>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
@endif
<!-- theme 3 Promotional topbanners End Here -->
<!-- theme 3 topitemlist dishes Section Start Here -->
@if (count($topitemlist) > 0)
<section class="theme-3-menu">
    <div class="container">
        <div class="row align-items-center justify-content-between my-2">
            <div class="col-auto menu-heading">
                <h1>{{ trans('labels.trending') }}</h1>
            </div>
            <div class="col-auto">
                <a href="{{ URL::to('/view-all?type=topitems') }}" class="btn btn-sm btn-outline-primary">{{ trans('labels.view_all') }}</a>
            </div>
        </div>
        <div class="row row-cols-xl-3 row-cols-lg-2 row-cols-md-2 row-cols-1">
            @foreach ($topitemlist as $itemdata)
                @include('web.home3.itemview')
            @endforeach
        </div>
    </div>
</section>
@endif
<!-- theme 3 topitemlist dishes Section End Here -->
<!-- theme 3 Promotional bannersection1 Start Here -->
@if (count($banners['bannersection1']) > 0)
<section class="banner2 my-md-5 my-sm-3">
    <div id="banner1" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <div class="carousel-inner">
            @foreach ($banners['bannersection1'] as $key => $bannerdata)
            <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                @if ($bannerdata['item_info'] != '')
                <a href="{{ URL::to('/item-' . $bannerdata['item_info']->slug) }}">
                    @elseif($bannerdata['category_info'] != '')
                    <a href=" {{ URL::to('/menu/?category=' . $bannerdata['category_info']->slug) }} ">
                        @else
                    <a href="javascript:void(0)">
                        @endif
                        <img src="{{ $bannerdata['image'] }}" height="400" alt="banner2">
                    </a>
            </div>
            @endforeach
        </div>
        <button class="carousel-control-prev {{ count($banners['bannersection1']) == 1 ? 'd-none' : '' }}" type="button" data-bs-target="#banner1" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next {{ count($banners['bannersection1']) == 1 ? 'd-none' : '' }}" type="button" data-bs-target="#banner1" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</section>
@endif
<!-- theme 3 Promotional bannersection1 End Here -->
<!-- theme 3 todayspecial Dishes Section Start Here -->
@if (count($todayspecial) > 0)
<section class="theme-3-menu">
    <div class="container">
        <div class="row align-items-center justify-content-between my-2">
            <div class="col-auto menu-heading">
                <h1>{{ trans('labels.todays_special') }}</h1>
            </div>
            <div class="col-auto">
                <a href="{{ URL::to('/view-all?type=todayspecial') }}" class="btn btn-sm btn-outline-primary">{{ trans('labels.view_all') }}</a>
            </div>
        </div>
        <div class="row row-cols-xl-3 row-cols-lg-2 row-cols-md-2 row-cols-1">
            @foreach ($todayspecial as $itemdata)
                 @include('web.home3.itemview')
            @endforeach
        </div>
    </div>
</section>
@endif
<!-- theme 3 todayspecial Dishes Section End Here -->
<!-- theme 3 Promotional bannersection2 Start Here -->
@if (count($banners['bannersection2']) > 0)
<section class="banner1">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div id="bannersection2" class="owl-carousel">
                    @foreach ($banners['bannersection2'] as $bannerdata)
                    <div class="post-slide">
                        <div class="post-img">
                            @if ($bannerdata['item_info'] != '')
                            <a href="{{ URL::to('/item-' . $bannerdata['item_info']->slug) }}">
                                @elseif($bannerdata['category_info'] != '')
                                <a href="{{ URL::to('/menu/?category=' . $bannerdata['category_info']->slug) }}">
                                    @else
                                    <a href="javascript:void(0);">
                                        @endif
                                        <img src="{{ $bannerdata['image'] }}" alt="banner">
                                    </a>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
@endif
<!-- theme 3 Promotional bannersection2 End Here -->
<!-- theme 3 recommended Section Start Here -->
@if (count($recommended) > 0)
<section class="theme-3-menu">
    <div class="container">
        <div class="row align-items-center justify-content-between my-2">
            <div class="col-auto menu-heading">
                <h1>{{ trans('labels.recommended') }}</h1>
            </div>
            <div class="col-auto">
                <a href="{{ URL::to('/view-all?type=recommended') }}" class="btn btn-sm btn-outline-primary">{{ trans('labels.view_all') }}</a>
            </div>
        </div>
        <div class="row row-cols-xl-3 row-cols-lg-2 row-cols-md-2 row-cols-1">
            @foreach ($recommended as $itemdata)
                @include('web.home3.itemview')
            @endforeach
        </div>
    </div>
</section>
@endif
<!-- theme 3 recommended Section End Here -->
<!-- theme 3 Promotional bannersection3 Start Here -->
@if (count($banners['bannersection3']) > 0)
<section class="banner2 mt-md-5 mt-sm-3 mb-0">
    <div id="banner3" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <div class="carousel-inner">
            @foreach ($banners['bannersection3'] as $key => $bannerdata)
            <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                @if ($bannerdata['item_info'] != '')
                <a href="{{ URL::to('/item-' . $bannerdata['item_info']->slug) }}">
                    @elseif($bannerdata['category_info'] != '')
                    <a href=" {{ URL::to('/menu/?category=' . $bannerdata['category_info']->slug) }} ">
                        @else
                        <a href="javascript:void(0)">
                            @endif
                            <img src="{{ $bannerdata['image'] }}" height="400" alt="banner3">
                        </a>
            </div>
            @endforeach
        </div>
        <button class="carousel-control-prev {{ count($banners['bannersection3']) == 1 ? 'd-none' : '' }}" type="button" data-bs-target="#banner3" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">{{ trans('labels.previous') }}</span>
        </button>
        <button class="carousel-control-next {{ count($banners['bannersection3']) == 1 ? 'd-none' : '' }}" type="button" data-bs-target="#banner3" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">{{ trans('labels.next') }}</span>
        </button>
    </div>
</section>
@endif
<!-- theme 3 Promotional bannersection3 End Here -->
<!-- theme 3 Testimonials Section Start Here -->
@if (count($testimonials) > 0)

<section class="theme-3-testimonial py-5" style="background: url('{{Helper::image_path(@Helper::appdata()->reviews_bg_image)}}') center center/cover no-repeat #f3f0e7 !important;">
    <div class="container">
        <div class="testimonial-title text-center text-uppercase">
            <p>{{trans('labels.happy_customers')}}</p>
            <h2 class="text-center">{{ trans('labels.reviews') }}</h2>
        </div>
        <div class="testimonial-3 owl-carousel owl-theme">
            @foreach ($testimonials as $key => $testimonialdata)
            <div class="item text-center">
                <div class="client-img position-relative">
                    <img src="{{ $testimonialdata['user_info']->profile_image }}" class="img-circle img-responsive mx-auto" />
                    <i class="fa-solid fa-quote-left fs-1"></i>
                </div>
                <p>{{ Str::limit($testimonialdata->comment, 100) }}</p>
                <div class="review-star text-center mb-3">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <span> ({{ number_format($testimonialdata->ratting, 1) }}/5.0)</span>
                </div>
                <h4 class="text-capitalize text-center">- {{ $testimonialdata['user_info']->name }}</h4>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endif
<!-- theme 3 Testimonials Section End Here -->
<!-- Table Resrvation Section Start Here -->
<section class="table-booking" style="background: url('{{Helper::image_path(@Helper::appdata()->booknow_bg_image)}}') center center/cover no-repeat #f3f0e7 !important;">
    <div class="container">
        <div class="row align-items-center justify-content-between">
            <div class="col-md-6 order-2 order-lg-0">
                <div class="reservation-content m-0 px-3 py-5">
                    <div class="row text-center">
                        <h2>{{ trans('labels.book_table') }}</h2>
                        <p>{{ trans('labels.make_reservation') }}</p>
                    </div>
                    <div class="d-flex justify-content-center">
                        <a href="{{ route('reservation') }}" class="btn btn-primary btn-sm" role="button">{{ trans('labels.book_now') }}</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <img src="https://www.goteso.com/products/assets/images/clone-scripts/opentable/opentable-app-clone-banner.png" class="w-100 object-fit-cover" alt="table booking">
            </div>
        </div>
    </div>
</section>
<!-- theme 3 Table Resrvation Section End Here -->
<!-- theme 3 App Download Section Start Here -->
@if (!empty(@Helper::appdata()->mobile_app_image))
<section>
    <div class="theme-3-app-download py-5" style="background: url('{{Helper::image_path(@Helper::appdata()->mobile_app_bg_image)}}') center center/cover no-repeat !important;">
        <div class="container mt-5">
            <div class="row align-items-center justify-content-between">
                <div class="col-lg-6 order-2 order-lg-0">
                    <div class="app-content text-center text-lg-start">
                        <h2>{{@Helper::appdata()->mobile_app_title }}</h2>
                        <span class="text-muted">{{@Helper::appdata()->mobile_app_description }}</span>
                        <div class="my-4 d-flex justify-content-center justify-content-lg-start">
                            @if (!@Helper::appdata()->android == '')
                            <a href="{{@Helper::appdata()->android }}" target="_blank">
                                <img src="{{ Helper::web_image_path('playstore.png') }}" width="100%" height="46" alt="">
                            </a>
                            @endif
                            @if (!@Helper::appdata()->ios == '')
                            <a class="ms-3" href="{{@Helper::appdata()->ios }}" target="_blank">
                                <img src="{{ Helper::web_image_path('appstore.svg') }}" width="100%" height="46" alt="">
                            </a>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 app-screen">
                    <img src="{{ Helper::image_path(@Helper::appdata()->mobile_app_image) }}" alt="app-screen" class="w-100 object-fit-cover">
                </div>
            </div>
        </div>
    </div>
</section>
@endif
<!-- theme 3 App Download Section End Here -->
<!-- theme 3 Blog Section Start Here -->
@if (count($getblogs) > 0)
<section>
    <div class="theme-3-blog-wrapper mb-3">
        <div class="container">
            <div class="row align-items-center justify-content-between my-2">
                <div class="col-auto blog-heading">
                    <h1>{{ trans('labels.latest_blogs') }}</h1>
                </div>
                <div class="col-auto">
                    <a href="{{ route('blogs') }}" class="btn btn-sm btn-outline-primary">{{ trans('labels.view_all') }}</a>
                </div>
            </div>
            <div class="row"> 
                @foreach ($getblogs as $bloglist)
                <div class="col-lg-4 col-md-6  col-auto d-flex mb-4">
                    <div class="card border-0">
                        <div class="card-img">
                            <a href="{{URL::to('/blogs-'.$bloglist->slug)}}"><img src="{{ Helper::image_path($bloglist->image) }}" class="card-img-top" alt="..."></a>
                        </div>
                        <div class="card-body">
                            <div class="col-auto blog-date mb-2">
                                <span>{{ Helper::date_format($bloglist->created_at) }}</span>
                            </div>
                            <h5 class="card-title fw-600 dark_color"><a href="{{URL::to('/blogs-'.$bloglist->slug)}}" class="dark_color">{{ $bloglist->title }}</a></h5>
                            <p class="card-text">{{ Str::limit($bloglist->description, 150) }}</p>
                        </div>
                        <div class="card-footer bg-transparent border-0">
                            <div class="d-flex justify-content-between">
                                <div class="col-auto blog-author">
                                    <span>{{trans('labels.post_by')}} <a href="javascript:void(0)" class="dark_color">{{trans('labels.admin_title')}}</a></span>
                                </div>
                                <a href="{{URL::to('/blogs-'.$bloglist->slug)}}" class="btn btn-primary border-0 {{ session()->get('direction') == 'rtl' ? 'float-start' : 'float-end' }}">{{trans('labels.read_more')}}</a>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
@endif
<!-- theme 3 Blog Section End Here -->
@endsection
@section('scripts')
    <!-- JS For Promotional Banner Section 1 -->
    <script>
        $(document).ready(function() {
            $("#news-slider ").owlCarousel({
                rtl: @if (session()->get('direction') == 'rtl')
                    true
                @else
                    false
                @endif ,
                loop: true,
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 2,
                        nav: false,
                        dots: false,
                        arrow: true,
                        margin: 10,
                        loop: false,
                        // rewind: true
                    },
                    400: {
                        items: 2,
                        nav: false,
                        dots: false,
                        arrow: true,
                        margin: 10,
                        loop: false,
                        // rewind: true
                    },
                    600: {
                        items: 2,
                        nav: false,
                        dots: false,
                        arrow: true,
                        margin: 10,
                        loop: false,
                        // rewind: true
                    },
                    800: {
                        items: 2,
                        nav: false,
                        dots: false,
                        arrow: true,
                        margin: 10,
                        loop: false,
                        // rewind: true
                    },
                    1000: {
                        items: 3,
                        nav: false,
                        dots: false,
                        arrow: true,
                        margin: 10,
                        loop: false,
                        // rewind: true
                    },
                    1200: {
                        items: 3,
                        nav: false,
                        dots: false,
                        arrow: true,
                        margin: 10,
                        loop: false,
                        // rewind: true
                    }
                }
            });
        });
    </script>
    <!-- JS For Category Section -->
    <script>
        $(document).ready(function() {
            $("#category3").owlCarousel({
                rtl: @if (session()->get('direction') == 'rtl')
                    true
                @else
                    false
                @endif ,
                loop: true,
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 2,
                        nav: false,
                        dots: false,
                        arrow: true,
                        margin: 10,
                    },
                    400: {
                        items: 2,
                        nav: false,
                        dots: false,
                        arrow: true,
                        margin: 10,
                    },
                    600: {
                        items: 3,
                        nav: false,
                        dots: false,
                        margin: 38,
                    },
                    800: {
                        items: 4,
                        nav: false,
                        dots: false,
                        margin: 45,
                    },
                    1000: {
                        items: 5,
                        dots: false,
                        nav: false,
                        loop: false,
                        arrows: true,
                        margin: 35,
                    },
                    1200: {
                        items: 6,
                        dots: false,
                        nav: false,
                        loop: false,
                        arrows: true,
                        margin: 35,
                    },
                }
            });
        });
    </script>
    <!-- JS For Promotional Banner Section 3 -->
    <script>
        $(document).ready(function() {
            $("#bannersection2").owlCarousel({
                rtl: @if (session()->get('direction') == 'rtl')
                    true
                @else
                    false
                @endif ,
                loop: true,
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 2,
                        nav: false,
                        dots: false,
                        arrow: true,
                        margin: 10,
                        loop: false,
                        // rewind: true
                    },
                    400: {
                        items: 2,
                        nav: false,
                        dots: false,
                        arrow: true,
                        margin: 10,
                        loop: false,
                        // rewind: true
                    },
                    600: {
                        items: 2,
                        nav: false,
                        dots: false,
                        arrow: true,
                        margin: 10,
                        loop: false,
                        // rewind: true
                    },
                    800: {
                        items: 2,
                        nav: false,
                        dots: false,
                        arrow: true,
                        margin: 10,
                        loop: false,
                        // rewind: true
                    },
                    1000: {
                        items: 3,
                        nav: false,
                        dots: false,
                        arrow: true,
                        margin: 10,
                        loop: false,
                        // rewind: true
                    },
                    1200: {
                        items: 4,
                        nav: false,
                        dots: false,
                        arrow: true,
                        margin: 10,
                        loop: false,
                        // rewind: true
                    }
                }
            });
        });



        $('.testimonial-3').owlCarousel({
                    loop:true,
                    margin:10,
                    nav:false,
                    dots:true,
                    autoplay:true,
                    autoplayTimeout: 5000,
                    responsive:{
                        0:{
                            items:1
                        },
                        600:{
                            items:1
                        },
                        1000:{
                            items:1
                        }
                    }
                })
    </script>
@endsection
