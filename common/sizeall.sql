COL segment_name FOR a30
COL segment_type FOR a20
COL mb FOR 999999999.99
SELECT
  segment_type,
  segment_name,
  SUM(bytes) / 1024 / 1024 AS mb
FROM user_segments
WHERE
  segment_name NOT LIKE 'BIN$%'
  AND segment_type LIKE 'TABLE%'
GROUP BY
  segment_type,
  segment_name
ORDER BY
  segment_type,
  segment_name
;

SELECT
  s.segment_type,
  i.table_name,
  s.segment_name,
  SUM(s.bytes) / 1024 / 1024 AS mb
FROM
  user_segments s,
  user_indexes i
WHERE
  s.segment_name = i.index_name
  AND s.segment_name NOT LIKE 'BIN$%'
  AND s.segment_type LIKE 'INDEX%'
GROUP BY
  s.segment_type,
  i.table_name,
  s.segment_name
ORDER BY
  s.segment_type,
  i.table_name,
  s.segment_name
;

SELECT
  s.segment_type,
  l.table_name,
  SUM(s.bytes) / 1024 / 1024 AS mb
FROM
  user_segments s,
  user_lobs l
WHERE
  s.segment_name = l.segment_name
  AND s.segment_name NOT LIKE 'BIN$%'
  AND s.segment_type LIKE 'LOB%'
  AND s.segment_type <> 'LOBINDEX'
GROUP BY
  s.segment_type,
  l.table_name
ORDER BY
  s.segment_type,
  l.table_name
;
