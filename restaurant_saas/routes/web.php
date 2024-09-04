<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\admin\AdminController;
use App\Http\Controllers\admin\ItemController;
use App\Http\Controllers\admin\CategoryController;
use App\Http\Controllers\admin\ContactController;
use App\Http\Controllers\admin\SliderController;
use App\Http\Controllers\admin\PlanPricingController;
use App\Http\Controllers\admin\AddonsController;
use App\Http\Controllers\admin\RattingController;
use App\Http\Controllers\admin\DriverController;
use App\Http\Controllers\admin\BannerController;
use App\Http\Controllers\admin\PromotionalController;
use App\Http\Controllers\admin\UserController;
use App\Http\Controllers\admin\AboutController;
use App\Http\Controllers\admin\OrderController;
use App\Http\Controllers\admin\PaymentController;
use App\Http\Controllers\admin\CMSPagesController;
use App\Http\Controllers\admin\NotificationController;
use App\Http\Controllers\admin\SystemAddonsController;
use App\Http\Controllers\admin\TimeController;
use App\Http\Controllers\admin\PromocodeController;
use App\Http\Controllers\admin\RolesController;
use App\Http\Controllers\admin\OtherPagesController;
use App\Http\Controllers\admin\FeaturesController;
use App\Http\Controllers\admin\ZoneController;
use App\Http\Controllers\admin\BookingsController;
use App\Http\Controllers\front\UserController as WebUserController;
use App\Http\Controllers\front\ItemController as WebItemController;
use App\Http\Controllers\front\OrderController as WebOrderController;
use App\Http\Controllers\front\PromocodeController as WebPromocodeController;
use App\Http\Controllers\front\OtherPagesController as WebOtherPagesController;
use App\Http\Controllers\front\BookingsController as WebBookingsController;
use App\Http\Controllers\front\RattingController as WebRattingController;
use App\Http\Controllers\front\HomeController;
use App\Http\Controllers\front\MenuController;
use App\Http\Controllers\front\FavoriteController;
use App\Http\Controllers\front\CartController;
use App\Http\Controllers\front\CheckoutController;
use App\Http\Controllers\front\AddressController;
use App\Http\Controllers\front\WalletController;
use App\Http\Controllers\admin\VendorController;
use App\Http\Controllers\admin\TestimonialController;
use App\Http\Controllers\admin\TransactionController;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These routes are loaded by the RouteServiceProvider within a group which contains the "web" middleware group. Now create something great!
|
*/

Route::group(['namespace' => 'front', 'middleware' => 'MaintenanceMiddleware'], function () {
	Route::post('checklogin-{logintype}', [AdminController::class, 'check_admin_login']);

	// home
	Route::get('/', [HomeController::class, 'index'])->name('home');
	Route::get('/direction', [HomeController::class, 'change_dir'])->name('change_dir');
	Route::get('/categories', [HomeController::class, 'categories'])->name('categories');
	// item
	Route::get('/menu', [MenuController::class, 'index'])->name('menu');
	Route::get('/show-item', [WebItemController::class, 'showitem']);
	Route::get('/item-{slug}', [WebItemController::class, 'itemdetails'])->name('itemdetails');
	Route::get('/search', [WebItemController::class, 'search'])->name('search');
	Route::get('/view-all', [WebItemController::class, 'viewall'])->name('viewall');

	Route::get('register', [VendorController::class, 'register']);
	Route::post('register_vendor', [VendorController::class, 'register_vendor']);

	// reservation
	Route::get('/reservation', [WebBookingsController::class, 'index'])->name('reservation');
	Route::post('/reservation/store', [WebBookingsController::class, 'store']);
	Route::group(['middleware' => 'NoUserAuthMiddleware'], function () {
		// auth
		Route::get('/register', [WebUserController::class, 'register'])->name('register');
		Route::post('/adduser', [WebUserController::class, 'create'])->name('adduser');
		Route::get('/verification', [WebUserController::class, 'verification'])->name('verification');
		Route::post('/verify-otp', [WebUserController::class, 'verifyotp'])->name('verifyotp');
		Route::get('/resend-otp', [WebUserController::class, 'resendotp']);
		Route::get('/forgot-password', [WebUserController::class, 'forgotpassword'])->name('forgot-password');
		Route::post('/send-pass', [WebUserController::class, 'sendpass'])->name('sendpass');
		Route::get('/login', [WebUserController::class, 'login'])->name('login');
		Route::post('/checklogin', [WebUserController::class, 'checklogin']);
		// social login
		Route::get('login/google', [WebUserController::class, 'redirectToGoogle'])->name('auth.google');
		Route::get('login/google/callback', [WebUserController::class, 'handleGoogleCallback']);
		Route::get('login/facebook', [WebUserController::class, 'redirectToFacebook'])->name('auth.facebook');
		Route::get('login/facebook/callback', [WebUserController::class, 'handleFacebookCallback']);
	});
	// cart
	Route::get('/cart', [CartController::class, 'index'])->name('cart');
	Route::post('/cart/deleteitem', [CartController::class, 'deletecartitem']);
	Route::post('/cart/qtyupdate', [CartController::class, 'qtyupdate']);
	Route::post('addtocart', [CartController::class, 'addtocart']);
	// checkout
	Route::post('/isopenclose', [CheckoutController::class, 'isopenclose']);
	Route::get('/checkout', [CheckoutController::class, 'index'])->name('checkout');
	Route::post('/holduser', [CheckoutController::class, 'holduser']);
	Route::post('/placeorder', [CheckoutController::class, 'placeorder']);
	Route::post('/checkdeliveryzone', [CheckoutController::class, 'checkdeliveryzone']);
	Route::post('/validate_data', [CheckoutController::class, 'validate_data']);
	//Payment SUCCESS/FAIL
	Route::get('paymentsuccess', [CheckoutController::class, 'paymentsuccess']);
	Route::get('paymentfail', [CheckoutController::class, 'paymentfail']);
	// orders
	Route::get('/orders', [WebOrderController::class, 'index'])->name('order-history');
	Route::get('/orders-{order_number}', [WebOrderController::class, 'orderdetails'])->name('order-details');
	Route::post('/orders/cancel', [WebOrderController::class, 'statusupdate']);
	// address
	Route::get('/address', [AddressController::class, 'index'])->name('address');
	Route::get('/address/add', [AddressController::class, 'add'])->name('add-address');
	Route::post('/address/store', [AddressController::class, 'store']);
	Route::get('/address-{id}', [AddressController::class, 'show'])->name('update-address');
	Route::post('/address/update-{id}', [AddressController::class, 'update']);
	Route::post('/address/delete', [AddressController::class, 'deleteaddress']);
	Route::get('/address/delete', [AddressController::class, 'deleteaddress']);

	// promocode
	Route::post('/promocodes/apply', [WebPromocodeController::class, 'checkpromocode']);
	Route::post('/promocodes/remove', [WebPromocodeController::class, 'removepromocode']);

	Route::group(['middleware' => 'UserMiddleware'], function () {

		// user
		Route::get('/profile', [WebUserController::class, 'getprofile'])->name('user-profile');
		Route::post('/profile/update', [WebUserController::class, 'editprofile']);
		Route::get('/profile/send-email-status', [WebUserController::class, 'send_email_status']);
		Route::get('/refer-earn', [WebUserController::class, 'referearn'])->name('refer-earn');
		Route::get('/changepassword', [WebUserController::class, 'changepassword'])->name('user-changepassword');
		Route::post('/changepassword', [WebUserController::class, 'updatepassword']);
		Route::get('/logout', [WebUserController::class, 'logout'])->name('logout');
		// wallet
		Route::get('/wallet', [WalletController::class, 'index'])->name('user-wallet');
		Route::get('/wallet/addmoney', [WalletController::class, 'addform'])->name('add-money');
		Route::post('/wallet/recharge', [WalletController::class, 'addwallet']);
		Route::get('/addsuccess', [WalletController::class, 'addsuccess']);
		Route::get('/addfail', [WalletController::class, 'addfail']);
		// favorite
		Route::get('/favouritelist', [FavoriteController::class, 'index'])->name('user-favouritelist');
		Route::post('/managefavorite', [FavoriteController::class, 'managefavorite']);
		// reviews
		Route::post('/add-review', [WebRattingController::class, 'addreview']);
	});
});
//  -------------------------------   for admin  -----------------------------------------   //
Route::get('/auth', function () {
	return view('/auth');
});
Route::post('auth', 'HomeController@auth');


Route::group(['prefix' => 'admin', 'namespace' => 'admin'], function () {
	Route::get('/', function () {
		return view('admin.auth.login');
	});
	Route::post('check-login', [AdminController::class, 'check_admin']);
	Route::get('/forgot-password', function () {
		return view('admin.auth.forgot_password');
	});
	Route::post('send-pass', [AdminController::class, 'send_pass']);
	Route::post('auth', [AdminController::class, 'auth']);

	Route::post('/getcity', [VendorController::class, 'getcity']);



	
	Route::group(
		['middleware' => 'AuthMiddleware'],
		function () {
			// -------- COMMON --------
			Route::get('admin_back', [VendorController::class, 'admin_back']);
			Route::get('logout', [AdminController::class, 'logout']);
			Route::get('home', [AdminController::class, 'home'])->name('dashboard');
			// blogs
			Route::get('blogs', [OtherPagesController::class, 'blogs_index']);
			Route::get('blogs/add', [OtherPagesController::class, 'blogs_add']);
			Route::post('blogs/store', [OtherPagesController::class, 'blogs_store']);
			Route::get('blogs-{id}', [OtherPagesController::class, 'blogs_show']);
			Route::post('blogs/update-{id}', [OtherPagesController::class, 'blogs_update']);
			Route::post('blogs/delete', [OtherPagesController::class, 'blogs_delete']);
			// others
			Route::post('change-password', [AdminController::class, 'changepassword']);
			Route::post('edit-profile', [AdminController::class, 'editprofile']);
			Route::get('getorder', [AdminController::class, 'getorder']);
			Route::get('change-status', [AdminController::class, 'changestatus']);

			
			// TRANSACTION
			Route::get('transaction', [TransactionController::class, 'index']);
			Route::post('transaction/{id}/{status}', [TransactionController::class, 'status']);
			Route::post('transaction/{status}', [TransactionController::class, 'status']);

			
			// payment
			Route::get('payment', [PaymentController::class, 'index']);
			Route::post('payment/status', [PaymentController::class, 'status']);
			Route::get('payment-{id}', [PaymentController::class, 'managepayment']);
			Route::post('payment/update', [PaymentController::class, 'update']);
			// PLANS
			Route::get('plan', [PlanPricingController::class, 'view_plan']);

			Route::group(['middleware' => 'AdminAuth'], function () {
				// our-team
				Route::get('our-team', [OtherPagesController::class, 'our_team_index']);
				Route::get('our-team/add', [OtherPagesController::class, 'our_team_add']);
				Route::post('our-team/store', [OtherPagesController::class, 'our_team_store']);
				Route::get('our-team-{id}', [OtherPagesController::class, 'our_team_show']);
				Route::post('our-team/update-{id}', [OtherPagesController::class, 'our_team_update']);
				Route::post('our-team/delete', [OtherPagesController::class, 'our_team_delete']);
				// tutorial
				Route::get('tutorial', [OtherPagesController::class, 'tutorial_index']);
				Route::get('tutorial/add', [OtherPagesController::class, 'tutorial_add']);
				Route::post('tutorial/store', [OtherPagesController::class, 'tutorial_store']);
				Route::get('tutorial-{id}', [OtherPagesController::class, 'tutorial_show']);
				Route::post('tutorial/update-{id}', [OtherPagesController::class, 'tutorial_update']);
				Route::post('tutorial/delete', [OtherPagesController::class, 'tutorial_delete']);
				// faq
				Route::get('faq', [OtherPagesController::class, 'faq_index']);
				Route::get('faq/add', [OtherPagesController::class, 'faq_add']);
				Route::post('faq/store', [OtherPagesController::class, 'faq_store']);
				Route::get('faq-{id}', [OtherPagesController::class, 'faq_show']);
				Route::post('faq/update-{id}', [OtherPagesController::class, 'faq_update']);
				Route::post('faq/delete', [OtherPagesController::class, 'faq_delete']);
				// gallery
				Route::get('gallery', [OtherPagesController::class, 'gallery_index']);
				Route::get('gallery/add', [OtherPagesController::class, 'gallery_add']);
				Route::post('gallery/store', [OtherPagesController::class, 'gallery_store']);
				Route::get('gallery-{id}', [OtherPagesController::class, 'gallery_show']);
				Route::post('gallery/update-{id}', [OtherPagesController::class, 'gallery_update']);
				Route::post('gallery/delete', [OtherPagesController::class, 'gallery_delete']);
				// slider
				Route::get('slider', [SliderController::class, 'index']);
				Route::get('slider/list', [SliderController::class, 'list']);
				Route::get('slider/add', [SliderController::class, 'add']);
				Route::post('slider/store', [SliderController::class, 'store']);
				Route::get('slider-{id}', [SliderController::class, 'show']);
				Route::post('slider/update-{id}', [SliderController::class, 'update']);
				Route::post('slider/status', [SliderController::class, 'status']);
				Route::post('slider/destroy', [SliderController::class, 'destroy']);
				// category
				Route::get('category', [CategoryController::class, 'index']);
				Route::get('category/add', [CategoryController::class, 'add']);
				Route::post('category/store', [CategoryController::class, 'store']);
				Route::get('category-{id}', [CategoryController::class, 'show']);
				Route::post('category/update-{id}', [CategoryController::class, 'update']);
				Route::post('category/status', [CategoryController::class, 'status']);
				Route::post('category/delete', [CategoryController::class, 'delete']);
				Route::post('category/reorder_category', [CategoryController::class, 'reorder_category']);
				// sub-category
				Route::get('sub-category', [CategoryController::class, 'subcategory_index']);
				Route::get('sub-category/add', [CategoryController::class, 'subcategory_add']);
				Route::post('sub-category/store', [CategoryController::class, 'subcategory_store']);
				Route::post('sub-category/status', [CategoryController::class, 'subcategory_status']);
				Route::post('sub-category/delete', [CategoryController::class, 'subcategory_delete']);
				Route::get('sub-category-{id}', [CategoryController::class, 'subcategory_show']);
				Route::post('sub-category/update-{id}', [CategoryController::class, 'subcategory_update']);
				// item
				Route::get('item', [ItemController::class, 'index']);
				Route::get('item/add', [ItemController::class, 'additem']);
				Route::post('item/store', [ItemController::class, 'store']);
				Route::get('item/list', [ItemController::class, 'list']);
				Route::post('item/update', [ItemController::class, 'update']);
				Route::post('item/showimage', [ItemController::class, 'showimage']);
				Route::post('item/updateimage', [ItemController::class, 'updateimage']);
				Route::post('item/storeimages', [ItemController::class, 'storeimages']);
				Route::post('item/destroyimage', [ItemController::class, 'destroyimage']);
				Route::post('item/status', [ItemController::class, 'status']);
				Route::post('item/featured', [ItemController::class, 'featured']);
				Route::post('item/delete', [ItemController::class, 'delete']);
				Route::post('item/deletevariation', [ItemController::class, 'deletevariation']);
				Route::get('item-{id}', [ItemController::class, 'edititem']);
				Route::get('item/subcategories', [ItemController::class, 'subcategories']);
				Route::post('item/reorder_item', [ItemController::class, 'reorder_item']);
				// countries
				Route::get('countries', [OtherPagesController::class, 'countries']);
				Route::get('countries/add', [OtherPagesController::class, 'add_country']);
				Route::post('countries/save', [OtherPagesController::class, 'save_country']);
				Route::get('countries/edit-{id}', [OtherPagesController::class, 'edit_country']);
				Route::post('countries/update-{id}', [OtherPagesController::class, 'update_country']);
				Route::post('countries/delete-{id}', [OtherPagesController::class, 'delete_country']);
				Route::post('countries/change_status-{id}', [OtherPagesController::class, 'statuschange_country']);
				// cities
				Route::get('cities', [OtherPagesController::class, 'cities']);
				Route::get('cities/add', [OtherPagesController::class, 'add_city']);
				Route::post('cities/save', [OtherPagesController::class, 'save_city']);
				Route::get('cities/edit-{id}', [OtherPagesController::class, 'edit_city']);
				Route::post('cities/update-{id}', [OtherPagesController::class, 'update_city']);
				Route::post('cities/delete-{id}', [OtherPagesController::class, 'delete_city']);
				Route::post('cities/change_status-{id}', [OtherPagesController::class, 'statuschange_city']);
				// plan
				Route::get('add', [PlanPricingController::class, 'add_plan']);
				Route::get('plan/add', [PlanPricingController::class, 'add_plan']);
				Route::post('plan/save_plan', [PlanPricingController::class, 'save_plan']);
				Route::get('plan/edit-{id}', [PlanPricingController::class, 'edit_plan']);
				Route::post('plan/update_plan-{id}', [PlanPricingController::class, 'update_plan']);
				Route::post('plan/status_change', [PlanPricingController::class, 'status_change']);
				Route::post('plan/delete', [PlanPricingController::class, 'delete']);
				// vendor
				Route::get('vendor', [VendorController::class, 'index']);
				Route::get('vendor/add', [VendorController::class, 'add']);
				Route::post('vendor/store', [VendorController::class, 'store']);
				Route::get('users/edit-{id}', [VendorController::class, 'show']);
				Route::post('users/update-{id}', [VendorController::class, 'update']);
				Route::get('users/login-{id}', [VendorController::class, 'vendor_login']);
				Route::get('users/logout-{id}', [VendorController::class, 'vendor_logout']);
				Route::post('/getcity', [VendorController::class, 'getcity']);
				// testimonial
				Route::get('/testimonial', [TestimonialController::class, 'index']);
				Route::get('testimonial/add', [testimonialController::class, 'add']);
				Route::post('testimonial/save', [testimonialController::class, 'save']);
				Route::get('testimonial/edit-{id}', [testimonialController::class, 'edit']);
				Route::post('testimonial/update-{id}', [testimonialController::class, 'update']);
				Route::get('testimonial/delete-{id}', [testimonialController::class, 'delete']);
				// Ratting
				Route::get('reviews', [RattingController::class, 'index']);
				Route::get('reviews/add', [RattingController::class, 'add']);
				Route::post('reviews/save', [RattingController::class, 'save']);
				Route::get('reviews/edit-{id}', [RattingController::class, 'edit']);
				Route::post('reviews/update-{id}', [RattingController::class, 'update']);
				Route::post('reviews/destroy', [RattingController::class, 'destroy']);
				// features
				Route::get('/features', [FeaturesController::class, 'index']);
				Route::get('features/add', [FeaturesController::class, 'add']);
				Route::post('features/save', [FeaturesController::class, 'save']);
				Route::get('features/edit-{id}', [FeaturesController::class, 'edit']);
				Route::post('features/update-{id}', [FeaturesController::class, 'update']);
				Route::post('features/delete', [FeaturesController::class, 'delete']);
				// faqs
				Route::get('/faqs', [OtherPagesController::class, 'faq_index']);
				Route::get('faqs/add', [OtherPagesController::class, 'faq_add']);
				Route::post('faqs/save', [OtherPagesController::class, 'faq_save']);
				Route::get('faqs/edit-{id}', [OtherPagesController::class, 'faq_edit']);
				Route::post('faqs/update-{id}', [OtherPagesController::class, 'faq_update']);
				Route::post('faqs/delete', [OtherPagesController::class, 'delete']);
				// users
				Route::get('users', [UserController::class, 'index']);
				Route::post('users/store', [UserController::class, 'store']);
				Route::get('users/list', [UserController::class, 'list']);
				Route::post('users/show', [UserController::class, 'show']);
				Route::post('users/update', [UserController::class, 'update']);
				Route::post('users/status', [UserController::class, 'status']);
				Route::get('users-{id}', [UserController::class, 'userdetails']);
				Route::post('users/change-wallet', [UserController::class, 'add_deduct']);
				Route::post('users/addmoney', [UserController::class, 'addmoney']);
				Route::post('users/deductmoney', [UserController::class, 'deductmoney']);
				// Promotionalbanners
				Route::get('promotionalbanners', [BannerController::class, 'promotional_banner']);
				Route::get('promotionalbanners/add', [BannerController::class, 'promotional_banneradd']);
				Route::get('promotionalbanners/edit-{id}', [BannerController::class, 'promotional_banneredit']);
				Route::post('promotionalbanners/save', [BannerController::class, 'promotional_bannersave_banner']);
				Route::post('promotionalbanners/update-{id}', [BannerController::class, 'promotional_bannerupdate']);
				Route::post('promotionalbanners/delete-{id}', [BannerController::class, 'promotional_bannerdelete']);
				// contact
				Route::get('contact', [ContactController::class, 'index']);
				Route::post('contact/destroy', [ContactController::class, 'destroy']);
				// driver
				Route::get('driver', [DriverController::class, 'index']);
				Route::get('driver/add', [DriverController::class, 'add']);
				Route::post('driver/store', [DriverController::class, 'store']);
				Route::get('driver-{id}', [DriverController::class, 'show']);
				Route::get('driver/details-{id}', [DriverController::class, 'driverdetails']);
				Route::post('driver/update-{id}', [DriverController::class, 'update']);
				Route::post('driver/status', [DriverController::class, 'status']);
				// time
				Route::get('time', [TimeController::class, 'index']);
				Route::post('time/store', [TimeController::class, 'store']);
				// CMS PAGES
				Route::get('privacypolicy', [CMSPagesController::class, 'privacypolicy']);
				Route::post('privacypolicy/update', [CMSPagesController::class, 'privacypolicy_update']);
				Route::get('termscondition', [CMSPagesController::class, 'termscondition']);
				Route::post('termscondition/update', [CMSPagesController::class, 'termscondition_update']);
				Route::get('refundpolicy', [CMSPagesController::class, 'refundpolicy']);
				Route::post('refundpolicy/update', [CMSPagesController::class, 'refundpolicy_update']);
				// notification
				Route::get('notification', [NotificationController::class, 'index']);
				Route::get('notification/add', [NotificationController::class, 'add']);
				Route::post('notification/store', [NotificationController::class, 'store']);
				// roles
				Route::get('roles', [RolesController::class, 'index']);
				Route::get('roles/add', [RolesController::class, 'add']);
				Route::post('roles/store', [RolesController::class, 'store']);
				Route::post('roles/status', [RolesController::class, 'status']);
				Route::get('roles-{id}', [RolesController::class, 'show']);
				Route::post('roles/update-{id}', [RolesController::class, 'update']);
				// employee
				Route::get('employee', [UserController::class, 'employee']);
				Route::get('employee/add', [UserController::class, 'add_employee']);
				Route::post('employee/store', [UserController::class, 'store_employee']);
				Route::post('employee/status', [UserController::class, 'status_employee']);
				Route::get('employee-{id}', [UserController::class, 'show_employee']);
				Route::post('employee/update-{id}', [UserController::class, 'update_employee']);
				// clear-cache
				Route::get('clear-cache', function () {
					Artisan::call('cache:clear');
					Artisan::call('route:clear');
					Artisan::call('config:clear');
					Artisan::call('view:clear');
					return redirect()->back()->with('success', trans('messages.success'));
				});
			});


			Route::middleware('VendorMiddleware')->group(
				function () {
					// settings
					Route::get('settings', [AboutController::class, 'index']);
					Route::get('settings/delete-feature-{id}', [AboutController::class, 'delete_feature']);
					Route::post('settings/update', [AboutController::class, 'settings_update']);
					// bookings
					Route::get('bookings', [BookingsController::class, 'bookings']);
					Route::post('bookings/status', [BookingsController::class, 'bookingstatus']);
					// zone
					Route::get('zone', [ZoneController::class, 'index']);
					Route::get('zone/add', [ZoneController::class, 'add_zone']);
					Route::get('zone/{id}', [ZoneController::class, 'update_zone']);
					Route::post('zone/delete', [ZoneController::class, 'delete_zone']);
					Route::post('zone/store', [ZoneController::class, 'store']);
					Route::post('zone/update-{id}', [ZoneController::class, 'update']);
					// banner
					Route::get('bannersection-1', [BannerController::class, 'index']);
					Route::get('bannersection-2', [BannerController::class, 'index']);
					Route::get('bannersection-3', [BannerController::class, 'index']);
					Route::get('bannersection-4', [BannerController::class, 'index']);
					Route::get('bannersection-1/add', [BannerController::class, 'add']);
					Route::get('bannersection-2/add', [BannerController::class, 'add']);
					Route::get('bannersection-3/add', [BannerController::class, 'add']);
					Route::get('bannersection-4/add', [BannerController::class, 'add']);
					Route::post('banner/store', [BannerController::class, 'store']);
					Route::get('bannersection-{section}-{id}', [BannerController::class, 'show']);
					Route::post('banner/update-{id}', [BannerController::class, 'update']);
					Route::post('banner/status', [BannerController::class, 'status']);
					Route::post('banner/destroy', [BannerController::class, 'destroy']);
					// addons
					Route::get('addons', [AddonsController::class, 'index']);
					Route::get('addons/add', [AddonsController::class, 'add']);
					Route::post('addons/store', [AddonsController::class, 'store']);
					Route::get('addons-{id}', [AddonsController::class, 'show']);
					Route::post('addons/update-{id}', [AddonsController::class, 'update']);
					Route::post('addons/status', [AddonsController::class, 'status']);
					Route::post('addons/delete', [AddonsController::class, 'delete']);
					Route::post('addons/getitem', [AddonsController::class, 'getitem']);
					// orders
					Route::get('orders', [OrderController::class, 'index']);
					Route::get('invoice/{id}', [OrderController::class, 'invoice']);
					Route::get('print/{id}', [OrderController::class, 'print']);
					Route::post('orders/update', [OrderController::class, 'update']);
					Route::post('orders/assign-driver', [OrderController::class, 'assign_driver']);
					Route::get('report', [OrderController::class, 'get_reports']);
					// promocode
					Route::get('promocode', [PromocodeController::class, 'index']);
					Route::get('promocode/add', [PromocodeController::class, 'add']);
					Route::post('promocode/store', [PromocodeController::class, 'store']);
					Route::get('promocode-{id}', [PromocodeController::class, 'show']);
					Route::post('promocode/update-{id}', [PromocodeController::class, 'update']);
					Route::post('promocode/status', [PromocodeController::class, 'status']);
					Route::get('promocode/delete-{id}', [PromocodeController::class, 'destroy']);
					// TIME
					Route::group(
						['prefix' => 'time'],
						function () {
							Route::get('/', [TimeController::class, 'index']);
							Route::post('store', [TimeController::class, 'store']);
						}
					);
					// ORDERS
					Route::get('/report', [OrderController::class, 'index']);

					Route::group(
						['prefix' => 'orders'],
						function () {
							Route::get('/', [OrderController::class, 'index']);
							Route::get('/update-{id}-{status}', [OrderController::class, 'update']);
							Route::get('/invoice/{order_number}', [OrderController::class, 'invoice']);
							Route::get('/print/{order_number}', [OrderController::class, 'print']);
						}
					);
					// CATEGORIES
					Route::group(
						['prefix' => 'categories'],
						function () {
							Route::get('/', [CategoryController::class, 'index']);
							Route::get('add', [CategoryController::class, 'add_category']);
							Route::post('save', [CategoryController::class, 'save_category']);
							Route::get('edit-{slug}', [CategoryController::class, 'edit_category']);
							Route::post('update-{slug}', [CategoryController::class, 'update_category']);
							Route::get('change_status-{slug}/{status}', [CategoryController::class, 'change_status']);
							Route::get('delete-{slug}', [CategoryController::class, 'delete_category']);
						}
					);
					// SHIPPING-AREA
					Route::group(
						['prefix' => 'shipping-area'],
						function () {
							Route::get('/', [ShippingareaController::class, 'index']);
							Route::get('add', [ShippingareaController::class, 'add']);
							Route::get('show-{id}', [ShippingareaController::class, 'show']);
							Route::post('store', [ShippingareaController::class, 'store']);
							Route::post('update-{id}', [ShippingareaController::class, 'store']);
							Route::get('status-{id}-{status}', [ShippingareaController::class, 'status']);
							Route::get('delete-{id}', [ShippingareaController::class, 'delete']);
						}
					);
					// PRODUCTS
					Route::group(
						['prefix' => 'products'],
						function () {
							Route::get('/', [ProductController::class, 'index']);
							Route::get('add', [ProductController::class, 'add']);
							Route::post('save', [ProductController::class, 'save']);
							Route::get('edit-{slug}', [ProductController::class, 'edit']);
							Route::post('update-{slug}', [ProductController::class, 'update_product']);
							Route::post('updateimage', [ProductController::class, 'update_image']);
							Route::get('status-{slug}/{status}', [ProductController::class, 'status']);
							Route::get('delete/variation-{id}-{product_id}', [ProductController::class, 'delete_variation']);
							Route::get('delete/extras-{id}', [ProductController::class, 'delete_extras']);
							Route::get('delete-{slug}', [ProductController::class, 'delete_product']);
						}
					);
					// PLAN
					Route::group(
						['prefix' => 'plan'],
						function () {
							Route::get('selectplan-{id}', [PlanPricingController::class, 'select_plan']);
							Route::post('buyplan', [PlanPricingController::class, 'buyplan']);
							Route::get('buyplan/paymentsuccess/success', [PlanPricingController::class, 'success']);
						}
					);
					// BANNERS
					Route::group(
						['prefix' => 'banner'],
						function () {
							Route::get('/', [BannerController::class, 'index'])->name('banner');
							Route::get('/add', [BannerController::class, 'add']);
							Route::post('/store', [BannerController::class, 'store']);
							Route::get('/edit-{id}', [BannerController::class, 'show']);
							Route::post('/update-{id}', [BannerController::class, 'update']);
							Route::get('/delete-{id}', [BannerController::class, 'delete']);
						}
					);
				}
			);
		}
	);
});
