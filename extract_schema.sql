-- Generate CREATE DATABASE statements
SELECT CONCAT('SHOW CREATE DATABASE `', schema_name, '`SSSSPECIAL_CHARRRRR' )
FROM information_schema.schemata
WHERE schema_name NOT IN ('mysql', 'information_schema', 'performance_schema', 'sys','untitled_database');
