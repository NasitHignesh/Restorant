<table class="table table-striped table-bordered zero-configuration">
    <thead>
        <tr>
            <th>#</th>
            <th><?php echo e(trans('labels.rating')); ?></th>
            <th><?php echo e(trans('labels.review')); ?></th>
            <th><?php echo e(trans('labels.action')); ?></th>
        </tr>
    </thead>
    <tbody>
        <?php $i = 1; ?>
        <?php $__currentLoopData = $getreview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $reviews): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <tr>
            <td><?php echo $i++; $j = 0; ?></td>
            <td>
                <?php for($j = 0; $j<$reviews->rating; $j++): ?>
                    <i class="fa fa-star text-warning"></i>
                    <?php endfor; ?>
                    (<?php echo e($reviews->rating); ?>)
            </td>
            <td><small><?php echo e($reviews->review); ?></small></td>
            <td>
                <a href="<?php echo e(URL::to('admin/reviews/edit-'.$reviews->id)); ?>" class="btn btn-outline-info btn-sm "> <i class="fa-regular fa-pen-to-square"></i></a>
                <a class="btn btn-sm btn-outline-danger" <?php if(env('Environment')=='sendbox' ): ?> onclick="myFunction()" <?php else: ?> onclick="DeleteData('<?php echo e($reviews->id); ?>','<?php echo e(URL::to('admin/reviews/destroy')); ?>')" <?php endif; ?>><i class="fa fa-trash"></i></a>
            </td>
        </tr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </tbody>
</table><?php /**PATH E:\xampp\htdocs\vinay\restaurant_saas\resources\views/admin/reviews/table.blade.php ENDPATH**/ ?>