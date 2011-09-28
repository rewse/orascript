SET LINESIZE 400
COLUMN table_name FORMAT a20
COLUMN index_name FORMAT a20
SELECT
  table_Name,
  index_name,
  index_type,
  compression
FROM user_indexes
ORDER BY
  table_name,
  index_name
;
