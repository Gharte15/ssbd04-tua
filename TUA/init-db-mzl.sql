-- Create users in MySQL
CREATE DATABASE IF NOT EXISTS siatka;

CREATE USER 'siatka_admin'@'%' IDENTIFIED BY 'siatka_admin';
CREATE USER 'siatka_mok'@'%' IDENTIFIED BY 'siatka_mok';
CREATE USER 'siatka_mzl'@'%' IDENTIFIED BY 'siatka_mzl';
CREATE USER 'siatka_auth'@'%' IDENTIFIED BY 'siatka_auth';

#NIE MA TABEL W BAZIE !!!!
# GRANT ALL ON siatka.* TO 'siatka_mok'@'%';
# GRANT ALL ON siatka.* TO 'siatka_mzl'@'%';
# GRANT ALL ON siatka.* TO 'siatka_auth'@'%';
# GRANT ALL ON siatka.* TO 'siatka_admin'@'%';
#
# -- pass: very_strong_admin_password
# INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('d93b7ab9-da9b-490c-a096-5c48437cd3a9'), 0, 'admin@als.pl', 1, 1, 0, 'admin', 'en', 'admin', '2023-05-18 18:53:32.000000', 'admin', '$2a$12$Y4dyfYOWuEm3L6UMCmyFuuu.Z.aJydrRNLYFu8u/qBwtNRQ2iehE2');
