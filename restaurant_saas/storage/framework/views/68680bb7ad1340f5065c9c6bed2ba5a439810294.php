<?php $__env->startSection('content'); ?>
<?php echo $__env->make('admin.breadcrumb', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div class="d-flex justify-content-between align-items-center">
    <h5 class="text-uppercase"><?php echo e(trans('labels.countries')); ?></h5>
    <a href="<?php echo e(URL::to('admin/countries/add')); ?>" class="btn btn-secondary px-2 d-flex">
        <i class="fa-regular fa-plus mx-1"></i><?php echo e(trans('labels.add')); ?>

    </a>
</div>
<div class="row">
    <div class="col-12">
        <div class="card border-0 my-3">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered py-3 zero-configuration w-100">
                        <thead>
                            <tr class="text-uppercase fw-500">
                                <td><?php echo e(trans('labels.srno')); ?></td>
                                <td><?php echo e(trans('labels.country')); ?></td>
                                <td><?php echo e(trans('labels.status')); ?></td>
                                <td><?php echo e(trans('labels.action')); ?></td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i=1;
                            ?>
                            <?php $__currentLoopData = $allcontries; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $country): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr class="fs-7">
                                <td><?php
                                    echo $i++
                                    ?></td>
                                <td><?php echo e($country->name); ?></td>
                                <td>
                                    <?php if($country->is_available == '1'): ?>
                                    <a <?php if(env('Environment')=='sendbox' ): ?> onclick="myFunction()" <?php else: ?> onclick="StatusUpdate('<?php echo e($country->id); ?>','2','<?php echo e(URL::to('admin/countries/change_status-' . $country->id)); ?>')" <?php endif; ?> class="btn btn-sm btn-outline-success"><i class="fas fa-check"></i></a>
                                    <?php else: ?>
                                    <a <?php if(env('Environment')=='sendbox' ): ?> onclick="myFunction()" <?php else: ?> onclick="StatusUpdate('<?php echo e($country->id); ?>','1','<?php echo e(URL::to('admin/countries/change_status-' . $country->id)); ?>')" <?php endif; ?> class="btn btn-sm btn-outline-danger"><i class="fas fa-close"></i></a>
                                    <?php endif; ?>
                                </td>
                                <td>
                                    <a href="<?php echo e(URL::to('admin/countries/edit-'.$country->id)); ?>" class="btn btn-outline-info btn-sm "> <i class="fa-regular fa-pen-to-square"></i></a>
                                    <a <?php if(env('Environment')=='sendbox' ): ?> onclick="myFunction()" <?php else: ?> onclick="Delete('<?php echo e($country->id); ?>','','<?php echo e(URL::to('admin/countries/delete-'.$country->id)); ?>')" <?php endif; ?> class="btn btn-outline-danger btn-sm "> <i class="fa-regular fa-trash"></i></a>
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
<script src="<?php echo e(url(env('ASSETSPATHURL').'admin-assets/assets/js/custom/employee.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.theme.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp\htdocs\vinay\restaurant_saas\resources\views/admin/country/index.blade.php ENDPATH**/ ?>