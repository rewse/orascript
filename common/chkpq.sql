COLUMN statistic FORMAT a30

SELECT
  *
FROM
  v$pq_sesstat
WHERE
  statistic LIKE '%Parallelized'
;
