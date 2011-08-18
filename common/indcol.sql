SET LINESIZE 400
COLUMN table_name FORMAT a20
COLUMN index_name FORMAT a20
COLUMN column_name FORMAT a20
SELECT
  table_Name,
  index_name,
  column_name
FROM user_ind_columns
ORDER BY
  table_name,
  index_name,
  column_name
;
