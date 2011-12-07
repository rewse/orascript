COL table_name FOR a20
COL index_name FOR a20
COL last_analyzed FOR a20
SELECT
  table_Name,
  index_name,
  TO_CHAR(last_analyzed, 'YYYY-MM-DD HH24:MI:SS') AS last_analyzed
FROM user_indexes
ORDER BY
  table_name,
  index_name
;
