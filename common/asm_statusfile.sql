COLUMN diskgroup_name FORMAT a20
COLUMN file_name FORMAT a50
COLUMN type FORMAT a20
COLUMN redundancy FORMAT a6
COLUMN striped FORMAT a6
SET NUMFORMAT 999,999,999,999,999
SET PAGESIZE 100
SELECT
  dg.name diskgroup_name,
  al.name file_name,
  fl.type,
  fl.bytes,
  fl.space,
  fl.redundancy,
  fl.striped
FROM
  v$asm_diskgroup dg,
  v$asm_alias al,
  v$asm_file fl
WHERE
  dg.group_number = fl.group_number
  AND al.file_number = fl.file_number
  AND al.file_incarnation = fl.incarnation
ORDER BY
  dg.name,
  al.name
;
SET NUMFORMAT ""
