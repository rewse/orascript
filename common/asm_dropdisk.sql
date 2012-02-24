ALTER DISKGROUP &dsikgroup_name. DROP DISKS
IN FAILGROUP &failgroup_name.
-- failgroup_name might be same as hostname
REBALANCE POWER 0 NOWAIT
;
