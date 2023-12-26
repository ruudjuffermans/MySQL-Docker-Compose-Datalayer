-- Create a new database
CREATE DATABASE IF NOT EXISTS store;
USE store;

CREATE USER manager@'%' IDENTIFIED BY "manager";
GRANT ALL ON * TO manager@"%";

FLUSH PRIVILEGES;