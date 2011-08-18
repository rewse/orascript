COL table_name FOR a30
COL degree FOR a10
SELECT
  table_name,
  degree,
  compress_for
FROM user_tables
ORDER BY table_name
;
