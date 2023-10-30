-- Define variables
SET @db_name = 'DATABASE_NAME';
SET @db_user = 'DATABASE_USER';
SET @db_user_password = 'DATABASE_PASSWORD';

SET @query1 = CONCAT('CREATE DATABASE IF NOT EXISTS `', @db_name, '`');
PREPARE stmt FROM @query1;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query2 = CONCAT('CREATE USER `', @db_user, '`@`%`', ' IDENTIFIED BY "', @db_user_password, '"');
PREPARE stmt FROM @query2;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET @query3 = CONCAT('GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON ', @db_name , '.* TO `', @db_user, '`@`%`');
PREPARE stmt FROM @query3;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- Flush privileges
FLUSH PRIVILEGES;









SET @dbname = 'test';



SET @db_name = 'DATABASE_NAME';
SET @db_user = 'DATABASE_USER';
SET @db_user_password = 'user_pass';

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;


PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;