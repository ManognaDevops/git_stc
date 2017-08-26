SELECT count(*) as 'Any_Mismatches' FROM
(SELECT a.TABLE_NAME, a.TABLE_ROWS
FROM information_schema.tables a ) j
LEFT JOIN information_schema.tables f
ON j.TABLE_NAME = f.TABLE_NAME
WHERE f.TABLE_NAME IS NULL
