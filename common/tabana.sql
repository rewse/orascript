COL table_name FOR a30
COL last_analyzed FOR a20
SELECT
  table_name,
  TO_CHAR(last_analyzed, 'YYYY-MM-DD HH24:MI:SS') AS last_analyzed
FROM user_tables
ORDER BY table_name
;
