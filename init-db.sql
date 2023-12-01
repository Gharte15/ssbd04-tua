-- Create users in MySQL
CREATE USER IF NOT EXISTS 'siatka_admin'@'%' IDENTIFIED BY 'siatka_admin';
CREATE USER IF NOT EXISTS 'siatka_mok'@'%' IDENTIFIED BY 'siatka_mok';
CREATE USER IF NOT EXISTS 'siatka_mzl'@'%' IDENTIFIED BY 'siatka_mzl';
CREATE USER IF NOT EXISTS 'siatka_auth'@'%' IDENTIFIED BY 'siatka_auth';

-- Grant privileges in MySQL
GRANT ALL ON siatka.* TO 'siatka_admin'@'%';
GRANT ALL ON siatka.* TO 'siatka_mok'@'%';
GRANT ALL ON siatka.* TO 'siatka_mzl'@'%';
GRANT ALL ON siatka.* TO 'siatka_auth'@'%';