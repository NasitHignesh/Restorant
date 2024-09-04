<?php $__env->startSection('content'); ?>
<?php echo $__env->make('admin.breadcrumb', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div class="row">
    <div class="col-12 col-md-12 col-lg-12 col-xl-8 mb-3 payments">
        <div class="card border-0 box-shadow">
            <div class="card-header bg-transparent border-0 pt-3">
                <h5 class="px-2 text-dark mb"><?php echo e(trans('labels.payment_methods')); ?></h5>
            </div>
            <div class="card-body">
                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-2 mb-3 g-3">
                    <?php $__currentLoopData = $paymentmethod; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pmdata): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php
                    $payment_type = strtolower($pmdata->payment_name);
                    ?>
                    <div class="col">
                        <label for="<?php echo e($payment_type); ?>" class="form-control border mb-0 px-2 py-1 cursor-pointer">
                            <div class="card h-100 border-0">
                                <div class="card-body">
                                    <div class="input-group">
                                        <div class="input-group-text bg-transparent border-0 p-0">
                                            <input class="form-check-input mt-0" type="radio" value="<?php echo e($pmdata->public_key); ?>" id="<?php echo e($payment_type); ?>" data-transaction-type="<?php echo e($payment_type); ?>" data-currency="<?php echo e($pmdata->currency); ?>" <?php if($payment_type='banktransfer' ): ?> data-bank-name="<?php echo e($pmdata->bank_name); ?>" data-account-holder-name="<?php echo e($pmdata->account_holder_name); ?>" data-account-number="<?php echo e($pmdata->account_number); ?>" data-bank-ifsc-code="<?php echo e($pmdata->bank_ifsc_code); ?>" data-bank-transfer="<?php echo e($pmdata->bank_transfer); ?>" <?php endif; ?> name="paymentmode">
                                        </div>
                                        <label for="<?php echo e($payment_type); ?>" class="d-flex align-items-center form-control border-0">
                                            <div class="mx-3">
                                                <img src="<?php echo e(Helper::image_path($pmdata->image)); ?>" class="hw-20 rounded-0" alt="" srcset="">
                                                <span class="px-1"><?php echo e($pmdata->payment_name); ?></span>
                                            </div>
                                    </div>
                                    <?php if($payment_type == 'stripe'): ?>
                                    <input type="hidden" name="stripe_public_key" id="stripe_public_key" value="<?php echo e($pmdata->public_key); ?>">
                                    <div class="stripe-form d-none pt-3">
                                        <div id="card-element"></div>
                                    </div>
                                    <div class="text-danger stripe_error"></div>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </label>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <span class="text-danger payment_error d-none"><?php echo e(trans('messages.select_atleast_one')); ?></span>
                </div>
                <div class="d-flex justify-content-end">
                    <button <?php if(env('Environment')=='sendbox' ): ?> type="button" onclick="myFunction()" <?php else: ?> type="button" <?php endif; ?> class="btn btn-success btn-succes m-1 <?php echo e((env('Environment') == 'sendbox') ? '' : 'buy_now'); ?> "> <?php echo e(trans('labels.checkout')); ?>

                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="col-12 col-md-6 col-lg-6 col-xl-4 mb-3">
        <div class="card box-shadow border-0 h-100 text-dark plancard">
            <div class="card-body">
                <div class="mb-4">
                    <h1 class="mb-4 plan-price"><?php echo e(Helper::currency_formate($plan->price, '')); ?>

                        <span class="per-month">/
                            <?php if($plan->plan_type == 1): ?>
                            <?php if($plan->duration == 1): ?>
                            <?php echo e(trans('labels.one_month')); ?>

                            <?php elseif($plan->duration == 2): ?>
                            <?php echo e(trans('labels.three_month')); ?>

                            <?php elseif($plan->duration == 3): ?>
                            <?php echo e(trans('labels.six_month')); ?>

                            <?php elseif($plan->duration == 4): ?>
                            <?php echo e(trans('labels.one_year')); ?>


                            <?php elseif($plan->duration == 5): ?>
                            <?php echo e(trans('labels.lifetime')); ?>

                            <?php endif; ?>
                            <?php endif; ?>
                            <?php if($plan->plan_type == 2): ?>
                            <?php echo e($plan->days); ?>

                            <?php echo e($plan->days > 1 ? trans('labels.days') : trans('labels.day')); ?>

                            <?php endif; ?>
                        </span>
                    </h1>
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4><?php echo e($plan->name); ?></h4>
                    </div>
                    <small class="text-muted line-limit-3"><?php echo e(Str::limit($plan->description, 150)); ?></small>
                </div>
                <hr>
                <ul>
                    <?php $features = explode('|', $plan->features); ?>
                    <li class="mb-3 d-flex"> <i class="fa-regular fa-circle-check text-success "></i>
                        <span class="mx-2">
                            <?php echo e($plan->order_limit == -1 ? trans('labels.unlimited') : $plan->order_limit); ?>

                            <?php echo e($plan->order_limit > 1 || $plan->order_limit == -1 ? trans('labels.products') : trans('labels.product')); ?>

                        </span>
                    </li>
                    <li class="mb-3 d-flex"> <i class="fa-regular fa-circle-check text-success "></i>
                        <span class="mx-2">
                            <?php echo e($plan->appointment_limit == -1 ? trans('labels.unlimited') : $plan->appointment_limit); ?>

                            <?php echo e($plan->appointment_limit > 1 || $plan->appointment_limit == -1 ? trans('labels.orders') : trans('labels.order')); ?>

                        </span>
                    </li>
                    <?php
                    $themes = [];
                    if ($plan->themes_id != '' && $plan->themes_id != null) {
                    $themes = explode(',', $plan->themes_id);
                    } ?>
                    <li class="mb-3 d-flex"> <i class="fa-regular fa-circle-check text-success "></i>
                        <span class="mx-2"><?php echo e(count($themes)); ?>

                            <?php echo e(count($themes) > 1 ? trans('labels.themes') : trans('labels.theme')); ?></span>
                    </li>
                    <?php if($plan->custom_domain == 1): ?>
                    <li class="mb-3 d-flex"> <i class="fa-regular fa-circle-check text-success "></i>
                        <span class="mx-2"><?php echo e(trans('labels.custome_domain_available')); ?></span>
                    </li>
                    <?php endif; ?>
                    <?php if($plan->vendor_app == 1): ?>
                    <li class="mb-3 d-flex"> <i class="fa-regular fa-circle-check text-success "></i>
                        <span class="mx-2"><?php echo e(trans('labels.vendor_app_available')); ?></span>
                    </li>
                    <?php endif; ?>
                    <?php if($plan->google_analytics == 1): ?>
                    <li class="mb-3 d-flex"> <i class="fa-regular fa-circle-check text-success "></i>
                        <span class="mx-2"><?php echo e(trans('labels.google_analytics_available')); ?></span>
                    </li>
                    <?php endif; ?>
                    <?php $__currentLoopData = $features; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $feature): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <li class="mb-3 d-flex"> <i class="fa-regular fa-circle-check text-success "></i>
                        <span class="mx-2"> <?php echo e($feature); ?> </span>
                    </li>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="modalbankdetails" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modalbankdetailsLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalbankdetailsLabel"><?php echo e(trans('labels.banktransfer')); ?></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form enctype="multipart/form-data" action="<?php echo e(URL::to('admin/plan/buyplan')); ?>" method="POST">
                <div class="modal-body">
                    <?php echo csrf_field(); ?>
                    <input type="hidden" name="payment_type" id="modal_payment_type" class="form-control" value="">
                    <input type="hidden" name="plan_id" id="modal_plan_id" class="form-control" value="">
                    <input type="hidden" name="amount" id="modal_amount" class="form-control" value="">
                    <p> <?php echo e(trans('labels.bank_name')); ?> : <span class="data-bank-name"></span></p>
                    <p> <?php echo e(trans('labels.bank_transfer')); ?> : <span class="bank_transfer"></span></p>
                    <p> <?php echo e(trans('labels.account_number')); ?> : <span class="data-account-number"></span></p>
                    <p> <?php echo e(trans('labels.account_holder_name')); ?> : <span class="data-account-holder-name"></span></p>
                    <p> <?php echo e(trans('labels.bank_ifsc_code')); ?> : <span class="data-bank-ifsc-code"></span></p>
                    <hr>
                    <div class="form-group col-md-12">
                        <label for="screenshot"> <?php echo e(trans('labels.screenshot')); ?> </label>
                        <div class="controls">
                            <input type="file" name="screenshot" id="screenshot" class="form-control  <?php $__errorArgs = ['screenshot'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" required>
                            <?php $__errorArgs = ['screenshot'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                            <span class="text-danger"> <?php echo e($message); ?> </span>
                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal"><?php echo e(trans('labels.close')); ?></button>
                    <button <?php if(env('Environment')=='sendbox' ): ?> type="button" onclick="myFunction()" type="submit" <?php endif; ?> class="btn btn-primary"> <?php echo e(trans('labels.save')); ?> </button>
                </div>
            </form>
        </div>
    </div>
</div>



<input type="hidden" name="price" id="price" value="<?php echo e($plan->price); ?>">
<input type="hidden" name="plan_id" id="plan_id" value="<?php echo e($plan->id); ?>">
<input type="hidden" name="user_name" id="user_name" value="<?php echo e(Auth::user()->name); ?>">
<input type="hidden" name="user_email" id="user_email" value="<?php echo e(Auth::user()->email); ?>">
<input type="hidden" name="user_mobile" id="user_mobile" value="<?php echo e(Auth::user()->mobile); ?>">


<form action="<?php echo e(url('admin/plan/buyplan/paypalrequest')); ?>" method="post" class="d-none">
    <?php echo e(csrf_field()); ?>

    <input type="hidden" name="return" value="2">
    <input type="submit" class="callpaypal" name="submit">
</form>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script src="https://js.stripe.com/v3/"></script>
<script src="https://js.paystack.co/v1/inline.js"></script>
<script src="https://checkout.flutterwave.com/v3.js"></script>
<script>
    var SITEURL = "<?php echo e(URL::to('')); ?>";
    var planlisturl = "<?php echo e(URL::to('admin/plan')); ?>";
    var buyurl = "<?php echo e(URL::to('admin/plan/buyplan')); ?>";
    var plan_name = "<?php echo e($plan->name); ?>";
    var plan_description = "<?php echo e($plan->description); ?>";
    var title = "<?php echo e(Str::limit(Helper::appdata('')->website_title, 50)); ?>";
    var description = "Plan Subscription";
</script>
<script src="<?php echo e(url(env('ASSETSPATHURL') . 'admin-assets/assets/js/custom/plan_payment.js')); ?>"></script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.theme.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp\htdocs\vinay\restaurant_saas\resources\views/admin/plan/plan_payment.blade.php ENDPATH**/ ?>