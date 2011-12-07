COLUMN table_name FORMAT a30
COLUMN index_name FORMAT a30
COLUMN index_type FORAMT a10
SELECT
  table_Name,
  index_name,
  index_type
FROM user_indexes
ORDER BY
  table_name,
  index_name
;
