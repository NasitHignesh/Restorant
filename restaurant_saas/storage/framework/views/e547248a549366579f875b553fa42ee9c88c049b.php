<?php $__env->startSection('content'); ?>
<div class="d-flex justify-content-between align-items-center">
    <h5 class="text-uppercase"><?php echo e(trans('labels.edit')); ?></h5>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb m-0">
            <li class="breadcrumb-item"><a href="<?php echo e(URL::to('admin/reviews')); ?>"><?php echo e(trans('labels.reviews')); ?></a></li>
            <li class="breadcrumb-item active <?php echo e(session()->get('direction') == 2 ? 'breadcrumb-rtl' : ''); ?>" aria-current="page"><?php echo e(trans('labels.edit')); ?></li>
        </ol>
    </nav>
</div>

<div class="row mt-3">
    <div class="col-12">
        <div class="card border-0 box-shadow">
            <div class="card-body">
                <form action="<?php echo e(URL::to('/admin/reviews/update-' . $editreviews->id)); ?>" method="POST" enctype="multipart/form-data">
                    <?php echo csrf_field(); ?>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label class="form-label"><?php echo e(trans('labels.ratting')); ?><span class="text-danger"> *
                                </span></label>
                            <select name="rating" class="form-select">
                                <option value="1" <?php echo e($editreviews->star == 1 ? 'selected' : ''); ?>>1</option>
                                <option value="2" <?php echo e($editreviews->star == 2 ? 'selected' : ''); ?>>2</option>
                                <option value="3" <?php echo e($editreviews->star == 3 ? 'selected' : ''); ?>>3</option>
                                <option value="4" <?php echo e($editreviews->star == 4 ? 'selected' : ''); ?>>4</option>
                                <option value="5" <?php echo e($editreviews->star == 5 ? 'selected' : ''); ?>>5</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label class="form-label"><?php echo e(trans('labels.review')); ?><span class="text-danger"> *
                                </span></label>
                            <input type="text" class="form-control" name="review" value="<?php echo e($editreviews->review); ?>" placeholder="<?php echo e(trans('labels.review')); ?>" required>
                            <?php $__errorArgs = ['review'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                            <span class="text-danger"><?php echo e($message); ?></span>
                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                        </div>
                    </div>
                    <div class="form-group text-end">
                        <a href="<?php echo e(URL::to('admin/reviews')); ?>" class="btn btn-outline-danger"><?php echo e(trans('labels.cancel')); ?></a>
                        <button <?php if(env('Environment')=='sendbox' ): ?> type="button" onclick="myFunction()" <?php else: ?> type="submit" <?php endif; ?> class="btn btn-secondary "><?php echo e(trans('labels.save')); ?></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
<script src="<?php echo e(url(env('ASSETSPATHURL').'admin-assets/assets/js/custom/employee.js')); ?>"></script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.theme.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp\htdocs\vinay\restaurant_saas\resources\views/admin/reviews/edit.blade.php ENDPATH**/ ?>