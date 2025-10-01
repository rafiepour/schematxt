-- Generate CREATE TABLE statements for all non-system databases
SELECT CONCAT('SHOW CREATE TABLE `', table_schema, '`.`', table_name, '`SSSSPECIAL_CHARRRRR')
FROM information_schema.tables
WHERE table_schema NOT IN ('mysql', 'information_schema', 'performance_schema', 'sys')
  AND table_type = 'BASE TABLE';