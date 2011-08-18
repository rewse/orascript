COL MACHINE FOR a40
COL STATUS FOR a10
SET PAGES 1000
SELECT
  sid,
  serial#,
  machine,
  status
FROM v$session
WHERE program LIKE 'sqlplus%'
ORDER BY logon_time DESC
;

ALTER SYSTEM KILL SESSION '&sid.,&serial.';
