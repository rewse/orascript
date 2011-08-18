COL synonym_name FOR A20
COL table_owner FOR A20
COL table_name FOR A20
COL db_link FOR A20
SET LINES 400

SELECT * FROM user_synonyms
ORDER BY synonym_name
;
