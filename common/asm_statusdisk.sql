COLUMN diskgroup_name FORMAT a20
COLUMN disk_name FORMAT a50
COLUMN path FORMAT a80
COLUMN state FORMAT a8
COLUMN mount_status FORMAT a8
COLUMN header_status FORMAT a9
SET NUMFORMAT 999,999,999,999
SET PAGESIZE 100
SELECT
  dg.name diskgroup_name,
  d.name disk_name,
  d.path,
  d.state,
  d.mount_status,
  d.header_status,
  d.total_mb,
  d.free_mb
FROM
  v$asm_diskgroup dg,
  v$asm_disk d
WHERE
  dg.group_number = d.group_number
ORDER BY
  dg.name,
  d.name
;
SET NUMFORMAT ""
