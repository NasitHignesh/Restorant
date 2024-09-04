@extends('web.layout.default')
@section('page_title')
| {{ trans('labels.home') }}
@endsection
@section('content')
<!-- Slider Area Start Here -->
@if (count($sliders)>0)
<section class="theme-2-slider-area">
    <div class="container">
        <div id="slidercarousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                @foreach ($sliders as $key => $sliderdata)
                <div class="carousel-item rounded-4 {{ $key == 0 ? 'active' : '' }}">
                    <img src="{{ Helper::image_path($sliderdata->image) }}" class="d-block img-fluid w-100" alt="slider">
                    <div class="carousel-caption d-flex h-100 align-items-start justify-content-center flex-column">
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
            <button class="carousel-control-prev {{ count($sliders) == 1 ? 'd-none' : '' }}" type="button" data-bs-target="#slidercarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            </button>
            <button class="carousel-control-next {{ count($sliders) == 1 ? 'd-none' : '' }}" type="button" data-bs-target="#slidercarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
            </button>
        </div>
    </div>
</section>
@endif
<!-- Slider Area End Here -->
<!-- Promotional topbanners Start Here -->
@if (count($banners['topbanners']) > 0)
<!-- new -->
<section class="banner1">
    <div class="container">
        <div id="theme-2-banner1" class="owl-carousel">
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
</section>

@endif
<!-- Promotional topbanners End Here -->
<!-- Category Section Start Here -->
@if (count(Helper::get_categories()) > 0)=

<section class="theme-2-category">
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
                <div id="category-2" class="owl-carousel category-2 mt-3">
                    @foreach (Helper::get_categories() as $categorydata)
                    <a href="{{ URL::to('/menu/?category=' . $categorydata->slug) }}">
                        <div class="card cat-border bg-transparent">
                            <div class="d-flex align-items-center g-0">
                                <div class="col-md-5">
                                    <div class="cat-img">
                                        <img src="{{ Helper::image_path($categorydata->image) }}" class="img-fluid rounded-circle" alt="...">
                                    </div>
                                </div>
                                <div class="col-md-7">
                                    <div class="card-body">
                                        <div class="menu-title">
                                            <p class="m-0">{{ $categorydata->category_name }}</p>
                                        </div>
                                    </div>
                                </div>
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
<!-- Category Section End Here -->
<!-- topitemlist dishes Section Start Here -->
@if (count($topitemlist) > 0)
<section class="theme-2-menu">
    <div class="container">
        <div class="row align-items-center justify-content-between my-2">
            <div class="col-auto menu-heading">
                <h1>{{ trans('labels.trending') }}</h1>
            </div>
            <div class="col-auto">
                <a href="{{ URL::to('/view-all?type=topitems') }}" class="btn btn-sm btn-outline-primary">{{ trans('labels.view_all') }}</a>
            </div>
        </div>
        <div class="row row-cols-xl-3 row-cols-lg-2 row-cols-md-2 row-cols-12">
            @foreach ($topitemlist as $itemdata)
                 @include('web.home2.itemview')
            @endforeach
        </div>
    </div>
</section>
@endif
<!-- topitemlist dishes Section End Here -->
<!-- Promotional bannersection1 Start Here -->
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
<!-- Promotional bannersection1 End Here -->
<!-- todayspecial Dishes Section Start Here -->
@if (count($todayspecial) > 0)
<section class="theme-2-menu">
    <div class="container">
        <div class="row align-items-center justify-content-between my-2">
            <div class="col-auto menu-heading">
                <h1>{{ trans('labels.todays_special') }}</h1>
            </div>
            <div class="col-auto">
                <a href="{{ URL::to('/view-all?type=todayspecial') }}" class="btn btn-sm btn-outline-primary">{{ trans('labels.view_all') }}</a>
            </div>
        </div>
        <div class="row row-cols-xl-3 row-cols-lg-2 row-cols-md-2 row-cols-12">
            @foreach ($todayspecial as $itemdata)
                @include('web.home2.itemview')
            @endforeach
        </div>
    </div>
</section>
@endif
<!-- todayspecial Dishes Section End Here -->
<!-- Promotional bannersection2 Start Here -->
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
<!-- Promotional bannersection2 End Here -->
<!-- recommended Section Start Here -->
@if (count($recommended) > 0)
<section class="theme-2-menu">
    <div class="container">
        <div class="row align-items-center justify-content-between my-2">
            <div class="col-auto menu-heading">
                <h1>{{ trans('labels.recommended') }}</h1>
            </div>
            <div class="col-auto">
                <a href="{{ URL::to('/view-all?type=recommended') }}" class="btn btn-sm btn-outline-primary">{{ trans('labels.view_all') }}</a>
            </div>
        </div>
        <div class="row row-cols-xl-3 row-cols-lg-2 row-cols-md-2 row-cols-12">
            @foreach ($recommended as $itemdata)
                     @include('web.home2.itemview')
            @endforeach
        </div>
    </div>
</section>
@endif
<!-- recommended Section End Here -->
<!-- Promotional bannersection3 Start Here -->
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
<!-- Promotional bannersection3 End Here -->
<!-- Testimonials Section Start Here -->
@if (count($testimonials) > 0)
<!-- new testimonial -->
<section class="theme-2-testimonial py-5" style="background: url('{{Helper::image_path(@Helper::appdata()->reviews_bg_image)}}') center center/cover no-repeat #f3f0e7 !important;">
    <div class="container">
        <div class="testimonial-title">
            <h2 class="text-center">lebal.Testimonials</h2>
            <div class="d-flex align-items-center mb-3">
                <div class="line ms-4"></div>
                <div class="line-circle"><i class="fa-solid fa-quote-right mx-2"></i></div>
                <div class="line me-4"></div></div>
            </div>
        <div class="testimonial-2 owl-carousel owl-theme">
            @foreach ($testimonials as $key => $testimonialdata)
            <div class="item text-center">
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
<!-- Testimonials Section End Here -->
<!-- Table Resrvation Section Start Here -->
<!-- new table section -->
<section class="table-booking" style="background: url('{{Helper::image_path(@Helper::appdata()->booknow_bg_image)}}') center center/cover no-repeat #f3f0e7 !important;">
    <div class="container">
        <div class="row align-items-center justify-content-between">
            <div class="col-md-6">
                <img src="https://www.goteso.com/products/assets/images/clone-scripts/opentable/opentable-app-clone-banner.png" class="w-100 object-fit-cover" alt="table booking">
            </div>
            <div class="col-md-6">
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
        </div>
    </div>
</section>
<!-- new table section -->

<!-- Table Resrvation Section End Here -->
<!-- App Download Section Start Here -->
@if (!empty(@Helper::appdata()->mobile_app_image))
<section class="app-download py-5" style="background: url('{{Helper::image_path(@Helper::appdata()->mobile_app_bg_image)}}') center center/cover no-repeat !important;">
    <div class="container">
        <div class="row align-items-center justify-content-between">
            <div class="col-lg-4">
                <img src="{{ Helper::image_path(@Helper::appdata()->mobile_app_image) }}" alt="app-screen" class="w-100 object-fit-cover">
            </div>
            <div class="col-lg-6">
                <div class="app-content text-center text-lg-start">
                    <h2>{{@Helper::appdata()->mobile_app_title }}</h2>
                    <span class="text-muted">{{@Helper::appdata()->mobile_app_description }}</span>
                    <div class="my-4 d-flex justify-content-center justify-content-lg-start">
                        @if (!@Helper::appdata()->android == '')
                        <a href="{{@Helper::appdata()->android }}" target="_blank">
                            <img src="{{ Helper::web_image_path('playstore.png') }}" width="100%" alt="playstore">
                        </a>
                        @endif
                        @if (!@Helper::appdata()->ios == '')
                        <a class="ms-3" href="{{@Helper::appdata()->ios }}" target="_blank">
                            <img src="{{ Helper::web_image_path('appstore.svg') }}" width="100%" alt="appstore">
                        </a>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endif
<!-- new app download section -->

<!-- App Download Section End Here -->
<!-- Blog Section Start Here -->
@if (count($getblogs) > 0)
<section>
    <div class="theme-2-blog-wrapper mb-3">
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
                <div class="col-lg-4 col-md-6 col-auto d-flex mb-4">
                    <div class="card">
                        <div class="card-img">
                            <img src="{{ Helper::image_path($bloglist->image) }}" class="card-img-top w-100 object-fit-cover" alt="blog-image">
                        </div>
                        <div class="card-body po">
                            <div class="blog-date">{{ Helper::date_format($bloglist->created_at) }}</div>
                            <h5 class="card-title fw-600 dark_color"><a href="{{URL::to('/blogs-'.$bloglist->slug)}}" class="dark_color">{{ $bloglist->title }}</a></h5>
                            <span class="blog-subtitle">{{ Str::limit($bloglist->description, 150) }}</span>
                        </div>
                        <div class="card-footer blog-footer d-flex justify-content-between bg-transparent align-items-center">
                            <p class="fw-normal m-0 fs-7">{{trans('labels.post_by')}}<strong class="d-block">{{trans('labels.admin_title')}}</strong>
                            </p>
                            <a class="btn btn-sm btn-outline-primary rounded-5 px-4 py-2" href="{{URL::to('/blogs-'.$bloglist->slug)}}">
                                {{trans('labels.read_more')}}
                                <p class="fa-solid fa-arrow-right ps-2 m-0"></p>
                            </a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
@endif
<!-- Blog Section End Here -->
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
            $("#category").owlCarousel({
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
                        items: 3,
                        nav: false,
                        dots: false,
                        arrow: true,
                        margin: 65,
                    },
                    600: {
                        items: 4,
                        nav: false,
                        dots: false,
                        margin: 38,
                    },
                    800: {
                        items: 5,
                        nav: false,
                        dots: false,
                        margin: 45,
                    },
                    1000: {
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
    </script>



        <!----------------------------- THEME 2 START HEAR ----------------------------->
        <script>
            $(document).ready(function() {
                $("#theme-2-banner1").owlCarousel({
                    rtl: @if (session()->get('direction') == 'rtl')
                        true
                    @else
                        false
                    @endif ,
                    loop: true,
                    nav: false,
                    dots: false,
                    arrow: true,
                    margin: 10,
                    responsiveClass: true,
                    responsive: {
                        0: {
                            items: 2
                        },
                        400: {
                            items: 2
                        },
                        600: {
                            items: 2
                        },
                        800: {
                            items: 2
                        },
                        1000: {
                            items: 2
                        },
                        1200: {
                            items: 2
                        }
                    }
                });

                $("#category-2").owlCarousel({
                    rtl: @if (session()->get('direction') == 'rtl')
                        true
                    @else
                        false
                    @endif ,
                    loop: true,
                    margin: 10,
                    responsiveClass: true,
                    responsive: {
                        0: {
                            items: 1
                        },
                        375: {
                            items: 2
                        },
                        400: {
                            items: 2
                        },
                        600: {
                            items: 3
                        },
                        800: {
                            items: 3
                        },
                        1000: {
                            items: 4
                        },
                        1200: {
                            items: 5
                        },
                    }
                });
                $('.testimonial-2').owlCarousel({
                    loop:false,
                    margin:10,
                    nav:false,
                    dots:true,
                    autoplay:true,
                    autoplayTimeout: 4000,
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
            });
        </script>
@endsection
