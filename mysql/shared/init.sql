-- Create a new database
CREATE DATABASE IF NOT EXISTS store;
USE store;

CREATE USER manager@'%' IDENTIFIED BY "manager";
GRANT ALL ON * TO manager@"%";

-- Disallow root login remotely
-- DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');

-- Remove unnecessary privileges
-- REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'root'@'localhost';
-- REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'root'@'127.0.0.1';

-- Set a strong password policy for future users
-- SET GLOBAL validate_password.policy=LOW;
-- SET GLOBAL validate_password.length=8;
-- SET GLOBAL validate_password.number_count=1;
-- SET GLOBAL validate_password.special_char_count=1;

-- Enable slow query log
-- SET GLOBAL slow_query_log = 1;
-- SET GLOBAL long_query_time = 2; -- log queries taking longer than 2 seconds

-- Enable general query log
-- SET GLOBAL general_log = 1;

-- Log slow queries to a file
-- SET GLOBAL slow_query_log_file = '/var/log/mysql/slow-query.log';

-- Log general queries to a file
-- SET GLOBAL general_log_file = '/var/log/mysql/general-query.log';

-- Enable query cache
-- SET GLOBAL query_cache_type = 1;
-- SET GLOBAL query_cache_size = 64M;

-- Set the time zone
-- SET GLOBAL time_zone = '+00:00';

-- Restart the MySQL server to apply changes
FLUSH PRIVILEGES;