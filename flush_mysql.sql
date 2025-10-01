-- Allow long dynamic SQL
SET SESSION group_concat_max_len = 100000;

-- Build DROP DATABASE statements
SELECT GROUP_CONCAT(CONCAT('DROP DATABASE `', schema_name, '`') SEPARATOR 'SSSSPECIAL_CHARRRRR')
FROM information_schema.schemata
WHERE schema_name NOT IN ('mysql', 'information_schema', 'performance_schema', 'sys');
