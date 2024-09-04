<table class="table table-striped table-bordered zero-configuration">
    <thead>
        <tr>
            <th>#</th>
            <th><?php echo e(trans('labels.image')); ?></th>
            <th><?php echo e(trans('labels.name')); ?></th>
            <th><?php echo e(trans('labels.email')); ?></th>
            <th><?php echo e(trans('labels.mobile')); ?></th>
            <th><?php echo e(trans('labels.status')); ?></th>
            <th><?php echo e(trans('labels.action')); ?></th>
        </tr>
    </thead>
    <tbody>
        <?php $i = 1; ?>
        <?php $__currentLoopData = $getusers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $users): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <tr>
            <td><?php echo $i++; ?></td>
            <td><img src="<?php echo e(url(env('ASSETSPATHURL').'admin-assets/images/profile/'.$users->profile_image)); ?>" alt="" height="50px"></td>
            <td> <?php echo e($users->name); ?> </td>
            <td> <?php echo e($users->email); ?> </td>
            <td> <?php echo e($users->mobile); ?> </td>
            <td>
                <?php if($users->is_available == 1): ?>
                <a class="btn btn-sm btn-outline-success" <?php if(env('Environment')=='sendbox' ): ?> onclick="myFunction()" <?php else: ?> onclick="StatusUpdate('<?php echo e($users->id); ?>','2','<?php echo e(URL::to('admin/users/status')); ?>')" <?php endif; ?>> <i class="fa-sharp fa-solid fa-check"></i></a>
                <?php else: ?>
                <a class="btn btn-sm btn-outline-danger" <?php if(env('Environment')=='sendbox' ): ?> onclick="myFunction()" <?php else: ?> onclick="StatusUpdate('<?php echo e($users->id); ?>','1','<?php echo e(URL::to('admin/users/status')); ?>')" <?php endif; ?>> <i class="fa-sharp fa-solid fa-xmark"></i></a>
                <?php endif; ?>
            </td>
            <td>
                <a class="btn btn-sm btn-outline-info" href="<?php echo e(URL::to('admin/users/edit-'.$users->id)); ?>"><i class="fa-solid fa-edit"></i></a>
                <a class="btn btn-sm btn-outline-dark" href="<?php echo e(URL::to('admin/users/login-' . $users->id)); ?>"> <i class="fa-regular fa-arrow-right-to-bracket"></i> </a>
                <a class="btn btn-sm btn-outline-danger" href="<?php echo e(URL::to('/'.$users->id)); ?>" target="_blank"><i class="fa-solid fa-eye"></i></a>
            </td>
        </tr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </tbody>
</table>


<?php /**PATH E:\xampp\htdocs\vinay\restaurant_saas\resources\views/admin/vendor/table.blade.php ENDPATH**/ ?>