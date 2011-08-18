COL segment_name FOR a30
COL segment_type FOR a20
COL mb FOR 999999999.99
SELECT
  segment_name,
  segment_type,
  SUM(bytes) / 1024 / 1024 AS mb
FROM user_segments
WHERE
  segment_name NOT LIKE 'BIN$%'
  AND segment_name = UPPER('&1.')
GROUP BY
  segment_name,
  segment_type
ORDER BY
  segment_name,
  segment_type
;
