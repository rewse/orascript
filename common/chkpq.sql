SELECT
  *
FROM
  v$pq_sesstat
WHERE
  statistic LIKE '%Parallelized'
;
