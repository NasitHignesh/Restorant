<?php $__env->startSection('content'); ?>
    <?php echo $__env->make('admin.breadcrumb', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div class="d-flex justify-content-between align-items-center">
    <h5 class="text-uppercase"><?php echo e(trans('labels.promotional banners')); ?></h5>
    <a href="<?php echo e(URL::to('admin/promotionalbanners/add')); ?>" class="btn btn-secondary px-2 d-flex">
        <i class="fa-regular fa-plus mx-1"></i><?php echo e(trans('labels.add')); ?>

    </a>
</div>
<div class="row mt-3">
    <div class="col-12">
        <div class="card border-0 mb-3">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered py-3 zero-configuration w-100 dataTable no-footer">
                        <thead>
                            <tr class="text-uppercase fw-500">
                                <td><?php echo e(trans('labels.srno')); ?></td>
                                <td><?php echo e(trans('labels.image')); ?></td>
                                <td><?php echo e(trans('labels.vendor_title')); ?></td>
                                <td><?php echo e(trans('labels.action')); ?></td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 1;
                            ?>
                            <?php $__currentLoopData = $getbannerlist; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $promotionalbanner): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr class="fs-7">
                                <td><?php
                                    echo $i++;
                                    ?></td>
                                <td><img src="<?php echo e(Helper::image_path($promotionalbanner->image)); ?>" class="hw-50 object-fit-cover" alt=""></td>
                                <td><?php echo e($promotionalbanner['vendor_info']->name); ?></td>
                                <td>
                                    <a href="<?php echo e(URL::to('admin/promotionalbanners/edit-'.$promotionalbanner->id)); ?>" class="btn btn-outline-info btn-sm mx-1"> <i class="fa-regular fa-pen-to-square"></i></a>
                                    <a href="javascript:void(0)" <?php if(env('Environment')=='sendbox' ): ?> onclick="myFunction()" <?php else: ?> onclick="Delete('<?php echo e($promotionalbanner->id); ?>','<?php echo e(URL::to('admin/promotionalbanners/delete-'.$promotionalbanner->id)); ?>')" <?php endif; ?> class="btn btn-outline-danger btn-sm">
                                        <i class="fa-regular fa-trash"></i></a>
                                </td>
                            </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script src="<?php echo e(url(env('ASSETSPATHURL').'admin-assets/assets/js/custom/promotionalbanner.js')); ?>"></script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.theme.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp\htdocs\vinay\restaurant_saas\resources\views/admin/promotionalbanners/index.blade.php ENDPATH**/ ?>