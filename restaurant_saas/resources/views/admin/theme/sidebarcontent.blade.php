<style>
    .sidebar .navbar-nav .nav-item .nav-link i {
        -webkit-box-flex: 0;
        flex: 0 0 1.5rem;
        -ms-flex: 0 0 1.5rem;
    }

    .sidebar .navbar-nav .nav-item .multimenu-menu-indicator i {
        -webkit-box-flex: 0;
        flex: 0 0 1rem;
        -ms-flex: 0 0 1rem;
        font-size: 10px;
    }
</style>
@php $modules = explode(',',Helper::get_roles()); @endphp
<ul class="navbar-nav">
    <li class="nav-item mb-2 fs-7">
        <a class="nav-link rounded d-flex {{ request()->is('admin/home*') ? 'active' : '' }}" href="{{ URL::to('/admin/home') }}" aria-expanded="false">
            <i class="fa-solid fa-house-user"></i><span class="nav-text ">{{ trans('labels.dashboard') }}</span>
        </a>
    </li>

    <!-- @if (\App\SystemAddons::where('unique_identifier', 'pos')->first() != null && \App\SystemAddons::where('unique_identifier', 'pos')->first()->activated)
    @if ((!in_array(Auth::user()->type,['1','5'] )))
        @if (in_array('25', $modules))
        <li class="nav-item mt-3">
            <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.pos_system') }}</h6>
        </li>
        @endif
    @else
        <li class="nav-item mt-3">
            <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.pos_system') }}</h6>
        </li>
    @endif
    <li class="nav-item mb-2 fs-7 dropdown multimenu {{ (!in_array(Auth::user()->type,['1','5'] )) ? (in_array('25', $modules) == true ? '' : 'd-none') : '' }}" id="25">
        <a class="nav-link collapsed rounded d-flex align-items-center justify-content-between dropdown-toggle mb-1" href="#pos" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="pos">
            <span class="d-flex"><i class="fa-solid fa-bag-shopping"></i> <span class="multimenu-title">{{ trans('labels.pos') }} <small class="badge bg-danger">Addon</small></span>
        </a>
        <ul class="collapse" id="pos">
            <li class="nav-item ps-4 mb-1">
                <a class="nav-link rounded {{ request()->is('admin/pos/items*') ? 'active' : '' }}" aria-current="page" href="{{ URL::to('/admin/pos/items') }}">
                    <span class="d-flex align-items-center multimenu-menu-indicator"><i class="fa-solid fa-circle-small"></i>{{ trans('labels.items') }}</span>
                </a>
            </li>
            <li class="nav-item ps-4 mb-1">
                <a class="nav-link rounded {{ request()->is('admin/pos/orders*') ? 'active' : '' }}" aria-current="page" href="{{ URL::to('/admin/pos/orders') }}">
                    <span class="d-flex align-items-center multimenu-menu-indicator"><i class="fa-solid fa-circle-small"></i>{{ trans('labels.orders') }}</span>
                </a>
            </li>
        </ul>
    </li>
@endif -->


    <!-- <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.business management') }}</h6>
    </li> -->

    <!-- orders-report-management  -->
    @if (\App\SystemAddons::where('unique_identifier', 'otp')->first() != null && \App\SystemAddons::where('unique_identifier', 'otp')->first()->activated OR env('Environment') == 'sendbox')
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['1','5'] )) ? (in_array('26', $modules) == true ? '' : 'd-none') : '' }}" id="26">
        <a class="nav-link rounded d-flex {{ request()->is('admin/otp-configuration*') ? 'active' : '' }}" href="{{ URL::to('/admin/otp-configuration') }}" aria-expanded="false">
            <i class="fa-solid fa-key-skeleton"></i><span class="nav-text ">{{trans('labels.otp_configuration')}} <small class="badge bg-danger">Addon</small></span>
        </a>
    </li>
    @endif
    @if ((!in_array(Auth::user()->type,['5'] )))
    @if (in_array('1', $modules) || in_array('2', $modules))
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.orders_management') }}</h6>
    </li>
    @endif
    @else
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.orders_management') }}</h6>
    </li>
    @endif
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('1', $modules) == true ? '' : 'd-none') : '' }}" id="1">
        <a class="nav-link rounded d-flex {{ request()->is('admin/orders*') || request()->is('admin/invoice*') ? 'active' : '' }}" href="{{ URL::to('/admin/orders') }}" aria-expanded="false">
            <i class="fa-solid fa-cart-shopping"></i><span class="nav-text ">{{ trans('labels.orders') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7">
        <a class="nav-link rounded d-flex d-flex {{ request()->is('admin/report*') ? 'active' : '' }}" href="{{ URL::to('/admin/report') }}" aria-expanded="false">
            <i class="fa-solid fa-chart-mixed"></i><span class="nav-text ">{{ trans('labels.report') }}</span>
        </a>
    </li>

    <!-- user management vendor -->
    @if (Auth::user()->type == 1)
    <li class="nav-item mb-2 fs-7">
        <a class="nav-link rounded d-flex {{ request()->is('admin/vendor*') ? 'active' : '' }}" href="{{ URL::to('/admin/vendor') }}" aria-expanded="false">
            <i class="fa-solid fa-users"></i><span class="nav-text ">{{ trans('labels.vendor') }}</span>
        </a>
    </li>
    @endif
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('17', $modules) == true ? '' : 'd-none') : '' }}" id="17">
        <a class="nav-link rounded d-flex {{ request()->is('admin/users*') ? 'active' : '' }}" href="{{ URL::to('/admin/users') }}" aria-expanded="false">
            <i class="fa-solid fa-users"></i><span class="nav-text ">{{ trans('labels.customers') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('18', $modules) == true ? '' : 'd-none') : '' }}" id="18">
        <a class="nav-link rounded d-flex {{ request()->is('admin/driver*') ? 'active' : '' }}" href="{{ URL::to('/admin/driver') }}" aria-expanded="false">
            <i class="fa-solid fa-motorcycle"></i><span class="nav-text ">{{ trans('labels.drivers') }}</span>
        </a>
    </li>


    <!-- subscription-plan-management -->
    @if ((!in_array(Auth::user()->type,['1','5'] )))
    @endif
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['1','5'] )) ? (in_array('30', $modules) == true ? '' : 'd-none') : '' }}" id="30">
        <a class="nav-link rounded d-flex {{ request()->is('admin/plan*') ? 'active' : '' }}" href="{{ URL::to('/admin/plan') }}" aria-expanded="false">
            <i class="fa-solid fa-medal"></i></i><span class="nav-text ">{{ trans('labels.subscription plan') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7">
        <a class="nav-link rounded d-flex {{ request()->is('admin/transaction') ? 'active' : '' }}" aria-current="page" href="{{ URL::to('admin/transaction') }}">
            <i class="fa-solid fa-file-invoice-dollar"></i> <span class="">{{ trans('labels.transaction') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7">
        <a class="nav-link rounded d-flex {{ request()->is('admin/payment') ? 'active' : '' }}" aria-current="page" href="{{ URL::to('admin/payment') }}">
            <i class="fa-solid fa-money-check-dollar-pen"></i> <span class="">{{ trans('labels.payment_methods') }}</span>
        </a>
    </li>
    <!-- countries-cities-admin -->
    @if (Auth::user()->type == 1)
    <li class="nav-item mb-2 fs-7 dropdown multimenu">
        <a class="nav-link collapsed rounded d-flex align-items-center justify-content-between dropdown-toggle mb-1" href="#location" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="location">
            <span class="d-flex"><i class="fa-sharp fa-solid fa-location-dot"></i><span class="multimenu-title">{{ trans('labels.location') }}</span></span>
        </a>
        <ul class="collapse" id="location">
            <li class="nav-item ps-4 mb-1">
                <a class="nav-link rounded {{ request()->is('admin/countries*') ? 'active' : '' }}" aria-current="page" href="{{ URL::to('/admin/countries') }}">
                    <span class="d-flex align-items-center multimenu-menu-indicator"><i class="fa-solid fa-circle-small"></i>{{ trans('labels.countries') }}</span>
                </a>
            </li>
            <li class="nav-item ps-4 mb-1">
                <a class="nav-link rounded {{ request()->is('admin/cities*') ? 'active' : '' }}" aria-current="page" href="{{ URL::to('/admin/cities') }}">
                    <span class="d-flex align-items-center multimenu-menu-indicator"><i class="fa-solid fa-circle-small"></i>{{ trans('labels.cities') }}</span>
                </a>
            </li>
        </ul>
    </li>
    @endif
    <!-- promotions-management -->
    @if ((!in_array(Auth::user()->type,['5'] )))
    @if (in_array('3', $modules) || in_array('4', $modules) || in_array('5', $modules) || in_array('6', $modules))
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.promotions') }}</h6>
    </li>
    @endif
    @else
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.promotions') }}</h6>
    </li>
    @endif
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('3', $modules) == true ? '' : 'd-none') : '' }}" id="3">
        <a class="nav-link rounded d-flex {{ request()->is('admin/slider*') ? 'active' : '' }}" href="{{ URL::to('/admin/slider') }}" aria-expanded="false">
            <i class="fa-solid fa-images"></i><span class="nav-text ">{{ trans('labels.sliders') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7 dropdown multimenu {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('4', $modules) == true ? '' : 'd-none') : '' }}" id="4">
        <a class="nav-link collapsed rounded d-flex align-items-center justify-content-between dropdown-toggle mb-1" href="#banners" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="banners">
            <span class="d-flex"><i class="fa-solid fa-list-tree"></i><span class="multimenu-title">{{ trans('labels.banners') }}</span></span>
        </a>
        <ul class="collapse" id="banners">
            <li class="nav-item ps-4 mb-1">
                <a class="nav-link rounded {{ request()->is('admin/bannersection-1*') ? 'active' : '' }}" aria-current="page" href="{{ URL::to('/admin/bannersection-1') }}">
                    <span class="d-flex align-items-center multimenu-menu-indicator"><i class="fa-solid fa-circle-small"></i>{{ trans('labels.section-1') }}</span>
                </a>
            </li>
            <li class="nav-item ps-4 mb-1">
                <a class="nav-link rounded {{ request()->is('admin/bannersection-2*') ? 'active' : '' }}" aria-current="page" href="{{ URL::to('/admin/bannersection-2') }}">
                    <span class="d-flex align-items-center multimenu-menu-indicator"><i class="fa-solid fa-circle-small"></i>{{ trans('labels.section-2') }}</span>
                </a>
            </li>
            <li class="nav-item ps-4 mb-1">
                <a class="nav-link rounded {{ request()->is('admin/bannersection-3*') ? 'active' : '' }}" aria-current="page" href="{{ URL::to('/admin/bannersection-3') }}">
                    <span class="d-flex align-items-center multimenu-menu-indicator"><i class="fa-solid fa-circle-small"></i>{{ trans('labels.section-3') }}</span>
                </a>
            </li>
            <li class="nav-item ps-4 mb-1">
                <a class="nav-link rounded {{ request()->is('admin/bannersection-4*') ? 'active' : '' }}" aria-current="page" href="{{ URL::to('/admin/bannersection-4') }}">
                    <span class="d-flex align-items-center multimenu-menu-indicator"><i class="fa-solid fa-circle-small"></i>{{ trans('labels.section-4') }}</span>
                </a>
            </li>
        </ul>
    </li>
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('5', $modules) == true ? '' : 'd-none') : '' }}" id="5">
        <a class="nav-link rounded d-flex {{ request()->is('admin/promocode*') ? 'active' : '' }}" href="{{ URL::to('/admin/promocode') }}" aria-expanded="false">
            <i class="fa-solid fa-tags"></i><span class="nav-text ">{{ trans('labels.promocodes') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('6', $modules) == true ? '' : 'd-none') : '' }}" id="6">
        <a class="nav-link rounded d-flex {{ request()->is('admin/notification*') ? 'active' : '' }}" href="{{ URL::to('/admin/notification') }}" aria-expanded="false">
            <i class="fa-solid fa-bell"></i><span class="nav-text ">{{ trans('labels.notification') }}</span>
        </a>
    </li>

    <!-- product_management -->
    @if ((!in_array(Auth::user()->type,['5'] )))
    @if (in_array('7', $modules) || in_array('8', $modules) || in_array('9', $modules) || in_array('10', $modules))
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.product_management') }}</h6>
    </li>
    @endif
    @else
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.product_management') }}</h6>
    </li>
    @endif
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('7', $modules) == true ? '' : 'd-none') : '' }}" id="7">
        <a class="nav-link rounded d-flex {{ request()->is('admin/category*') ? 'active' : '' }}" href="{{ URL::to('/admin/category') }}" aria-expanded="false">
            <i class="fa-sharp fa-solid fa-list"></i><span class="nav-text ">{{ trans('labels.categories') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('8', $modules) == true ? '' : 'd-none') : '' }}" id="8">
        <a class="nav-link rounded d-flex {{ request()->is('admin/sub-category*') ? 'active' : '' }}" href="{{ URL::to('/admin/sub-category') }}" aria-expanded="false">
            <i class="fa-solid fa-list-tree"></i><span class="nav-text ">{{ trans('labels.subcategories') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('9', $modules) == true ? '' : 'd-none') : '' }}" id="9">
        <a class="nav-link rounded d-flex {{ request()->is('admin/addons*') ? 'active' : '' }}" href="{{ URL::to('/admin/addons') }}" aria-expanded="false">
            <i class="fa-solid fa-plus-minus"></i><span class="nav-text ">{{ trans('labels.addons') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('10', $modules) == true ? '' : 'd-none') : '' }}" id="10">
        <a class="nav-link rounded d-flex {{ request()->is('admin/item*') ? 'active' : '' }}" href="{{ URL::to('/admin/item') }}" aria-expanded="false">
            <i class="fa-solid fa-list-timeline"></i><span class="nav-text ">{{ trans('labels.items') }}</span>
        </a>
    </li>

    <!-- restaurant_management -->
    @if ((!in_array(Auth::user()->type,['1','5'] )))
    @if (in_array('11', $modules) || in_array('12', $modules) || in_array('13', $modules) || in_array('14', $modules) || in_array('15', $modules) || in_array('16', $modules))
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.restaurant_management') }}</h6>
    </li>
    @endif
    @else
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.restaurant_management') }}</h6>
    </li>
    @endif
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('11', $modules) == true ? '' : 'd-none') : '' }}" id="11">
        <a class="nav-link rounded d-flex {{ request()->is('admin/zone*') ? 'active' : '' }}" href="{{ URL::to('/admin/zone') }}" aria-expanded="false">
            <i class="fa-solid fa-map"></i><span class="nav-text ">{{ trans('labels.zone') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('12', $modules) == true ? '' : 'd-none') : '' }}" id="12">
        <a class="nav-link rounded d-flex {{ request()->is('admin/time*') ? 'active' : '' }}" href="{{ URL::to('/admin/time') }}" aria-expanded="false">
            <i class="fa-solid fa-business-time"></i><span class="nav-text ">{{ trans('labels.working_hours') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('13', $modules) == true ? '' : 'd-none') : '' }}" id="13">
        <a class="nav-link rounded d-flex {{ request()->is('admin/payment*') ? 'active' : '' }}" href="{{ URL::to('/admin/payment') }}" aria-expanded="false">
            <i class="fa-solid fa-money-check-dollar-pen"></i><span class="nav-text ">{{ trans('labels.payment_methods') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['1','5'] )) ? (in_array('14', $modules) == true ? '' : 'd-none') : '' }}" id="14">
        <a class="nav-link rounded d-flex {{ request()->is('admin/reviews*') ? 'active' : '' }}" href="{{ URL::to('/admin/reviews') }}" aria-expanded="false">
            <i class="fa-solid fa-star"></i><span class="nav-text ">{{ trans('labels.reviews') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('15', $modules) == true ? '' : 'd-none') : '' }}" id="15">
        <a class="nav-link rounded d-flex {{ request()->is('admin/bookings*') ? 'active' : '' }}" href="{{ URL::to('/admin/bookings') }}" aria-expanded="false">
            <i class="fa-solid fa-calendar-days"></i><span class="nav-text ">{{ trans('labels.bookings') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['1','5'] )) ? (in_array('16', $modules) == true ? '' : 'd-none') : '' }}" id="16">
        <a class="nav-link rounded d-flex {{ request()->is('admin/contact*') ? 'active' : '' }}" href="{{ URL::to('/admin/contact') }}" aria-expanded="false">
            <i class="fa-solid fa-messages"></i><span class="nav-text ">{{ trans('labels.inquiries') }}</span>
        </a>
    </li>

    <!-- landing page -->
    @if ((!in_array(Auth::user()->type,['1','5'] )))
    @if (in_array('26', $modules) || in_array('27', $modules) || in_array('28', $modules))
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.landing page') }}</h6>
    </li>
    @endif
    @else
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.landing page') }}</h6>
    </li>
    @endif
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['1','5'] )) ? (in_array('26', $modules) == true ? '' : 'd-none') : '' }}" id="26">
        <a class="nav-link rounded d-flex {{ request()->is('admin/features*') ? 'active' : '' }}" href="{{ URL::to('/admin/features') }}" aria-expanded="false">
            <i class="fa-solid fa-list"></i></i><span class="nav-text ">{{ trans('labels.features') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['1','5'] )) ? (in_array('27', $modules) == true ? '' : 'd-none') : '' }}" id="27">
        <a class="nav-link rounded d-flex {{ request()->is('admin/promotionalbanners*') ? 'active' : '' }}" href="{{ URL::to('/admin/promotionalbanners') }}" aria-expanded="false">
            <i class="fa-solid fa-bullhorn"></i></i><span class="nav-text ">{{ trans('labels.promotinal banners') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['1','5'] )) ? (in_array('28', $modules) == true ? '' : 'd-none') : '' }}" id="28">
        <a class="nav-link rounded d-flex {{ request()->is('admin/faqs*') ? 'active' : '' }}" href="{{ URL::to('/admin/faqs') }}" aria-expanded="false">
            <i class="fa-solid fa-question"></i><span class="nav-text ">{{ trans('labels.FAQs') }}</span>
        </a>
    </li>

    <!-- user_management -->
    @if ((!in_array(Auth::user()->type,['5'] )))
    @if (in_array('25', $modules) || in_array('17', $modules) || in_array('18', $modules) )
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('19', $modules) == true ? '' : 'd-none') : '' }}" id="19">
            {{ trans('labels.user_management') }}
        </h6>
    </li>
    @endif
    @else
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('19', $modules) == true ? '' : 'd-none') : '' }}" id="26">
            {{ trans('labels.user_management') }}
        </h6>
    </li>
    @endif

    <!-- employee_management -->
    @if ((!in_array(Auth::user()->type,['5'] )))
    @if (in_array('19', $modules) || in_array('20', $modules) )
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.employee_management') }}</h6>
    </li>
    @endif
    @else
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.employee_management') }}</h6>
    </li>
    @endif
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('19', $modules) == true ? '' : 'd-none') : '' }}" id="19">
        <a class="nav-link rounded d-flex {{ request()->is('admin/roles*') ? 'active' : '' }}" href="{{ URL::to('/admin/roles') }}" aria-expanded="false">
            <i class="fa-solid fa-user-secret"></i><span class="nav-text ">{{ trans('labels.employee_role') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('20', $modules) == true ? '' : 'd-none') : '' }}" id="20">
        <a class="nav-link rounded d-flex {{ request()->is('admin/employee*') ? 'active' : '' }}" href="{{ URL::to('/admin/employee') }}" aria-expanded="false">
            <i class="fa fa-users"></i><span class="nav-text ">{{ trans('labels.employee') }}</span>
        </a>
    </li>

    <!-- system_settings -->
    @if ((!in_array(Auth::user()->type,['1','5'] )))
    @if (in_array('21', $modules) || in_array('22', $modules) || in_array('23', $modules) || in_array('24', $modules) )
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.system_settings') }}</h6>
    </li>
    @endif
    @else
    <li class="nav-item mt-3">
        <h6 class="text-muted mb-2 fs-7 text-uppercase">{{ trans('labels.system_settings') }}</h6>
    </li>
    @endif
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['1','5'] )) ? (in_array('22', $modules) == true ? '' : 'd-none') : '' }}" id="22">
        <a class="nav-link rounded d-flex {{ request()->is('admin/settings*') ? 'active' : '' }}" href="{{ URL::to('/admin/settings') }}" aria-expanded="false">
            <i class="fa-solid fa-gears"></i><span class="nav-text ">{{ trans('labels.general_settings') }}</span>
        </a>
    </li>
    <li class="nav-item mb-2 fs-7 {{ (!in_array(Auth::user()->type,['5'] )) ? (in_array('24', $modules) == true ? '' : 'd-none') : '' }}" id="24">
        <a class="nav-link rounded d-flex {{ request()->is('admin/clear-cache*') ? 'active' : '' }}" href="{{ URL::to('/admin/clear-cache') }}" aria-expanded="false">
            <i class="fa fa-refresh"></i><span class="nav-text ">{{ trans('labels.clear_cache') }}</span>
        </a>
    </li>
</ul>