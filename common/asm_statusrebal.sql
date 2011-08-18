SELECT
  dg.name,
  op.operation,
  op.state,
  op.sofar,
  op.est_work,
  op.est_rate,
  op.est_minutes
FROM
  v$asm_operation op,
  v$asm_diskgroup dg
WHERE
  dg.group_number = op.group_number
;
