COLUMN name FORMAT a20
SET numformat 999,999,999
SELECT
  group_number,
  name,
  total_mb,
  free_mb,
  usable_file_mb
FROM
  v$asm_diskgroup_stat
ORDER BY
  group_number
;
SET numformat ""
