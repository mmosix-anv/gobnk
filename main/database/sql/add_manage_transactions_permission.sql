-- Add 'manage transactions' permission
-- This permission allows admins to create and edit transactions with backdating capability
-- Run this SQL after deploying the transaction management feature

INSERT INTO `permissions` (`name`, `guard_name`, `created_at`, `updated_at`) 
VALUES ('manage transactions', 'admin', NOW(), NOW())
ON DUPLICATE KEY UPDATE `updated_at` = NOW();

-- Optional: Grant this permission to the super admin role (role_id = 1)
-- Uncomment the following lines if you want to automatically grant this to super admin
-- SET @permission_id = (SELECT id FROM permissions WHERE name = 'manage transactions' AND guard_name = 'admin' LIMIT 1);
-- SET @super_admin_role_id = 1;
-- INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) 
-- VALUES (@permission_id, @super_admin_role_id)
-- ON DUPLICATE KEY UPDATE `permission_id` = @permission_id;
