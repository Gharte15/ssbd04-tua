# Grant privileges in MySQL
GRANT ALL PRIVILEGES ON siatka.* TO 'siatka_admin'@'%';
REVOKE ALL PRIVILEGES ON siatka.* FROM 'siatka_mok'@'%';
REVOKE ALL PRIVILEGES ON siatka.* FROM 'siatka_mzl'@'%';
REVOKE ALL PRIVILEGES ON siatka.* FROM 'siatka_auth'@'%';

GRANT ALL ON siatka.admins TO 'siatka_mok'@'%';
GRANT ALL ON siatka.captains TO 'siatka_mok'@'%';
GRANT ALL ON siatka.coaches TO 'siatka_mok'@'%';
GRANT ALL ON siatka.managers TO 'siatka_mok'@'%';
GRANT ALL ON siatka.referees TO 'siatka_mok'@'%';
GRANT ALL ON siatka.roles TO 'siatka_mok'@'%';
GRANT ALL ON siatka.accounts TO 'siatka_mok'@'%';
GRANT ALL ON siatka.venues TO 'siatka_mzl'@'%';
GRANT ALL ON siatka.timetables TO 'siatka_mzl'@'%';
GRANT ALL ON siatka.players TO 'siatka_mzl'@'%';
GRANT ALL ON siatka.teams TO 'siatka_mzl'@'%';
GRANT ALL ON siatka.captains TO 'siatka_mzl'@'%';
GRANT ALL ON siatka.sets TO 'siatka_mzl'@'%';
GRANT ALL ON siatka.scores TO 'siatka_mzl'@'%';
GRANT ALL ON siatka.scoreboards TO 'siatka_mzl'@'%';
GRANT ALL ON siatka.rounds TO 'siatka_mzl'@'%';
GRANT ALL ON siatka.overall_team_scores TO 'siatka_mzl'@'%';
GRANT ALL ON siatka.leagues TO 'siatka_mzl'@'%';
GRANT ALL ON siatka.games TO 'siatka_mzl'@'%';
GRANT ALL ON siatka.game_squads TO 'siatka_mzl'@'%';
GRANT ALL ON siatka.roles TO 'siatka_auth'@'%';
GRANT ALL ON siatka.accounts TO 'siatka_auth'@'%';


-- Wstawianie danych do tabeli leagues
INSERT INTO leagues (id, version, league_number, season) VALUES (UUID_TO_BIN('123e4567-e89b-12d3-a456-426655440001'), 1, 1, '2022/2023');
INSERT INTO leagues (id, version, league_number, season) VALUES (UUID_TO_BIN('223e4567-e89b-12d3-a456-426655440001'), 1, 2, '2022/2023');
INSERT INTO leagues (id, version, league_number, season) VALUES (UUID_TO_BIN('323e4567-e89b-12d3-a456-426655440001'), 1, 3, '2022/2023');
INSERT INTO leagues (id, version, league_number, season) VALUES (UUID_TO_BIN('423e4567-e89b-12d3-a456-426655440001'), 1, 4, '2022/2023');

-- Wstawianie danych do tabeli accounts
-- pass: very_strong_admin_password
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('d93b7ab9-da9b-490c-a096-5c48437cd3a9'), 0, 'admin@als.pl', 1, 1, 0, 'admin', 'en', 'admin', '2023-05-18 18:53:32.000000', 'admin', '$2a$12$Y4dyfYOWuEm3L6UMCmyFuuu.Z.aJydrRNLYFu8u/qBwtNRQ2iehE2');
-- pass: very_strong_admin_account1_passwordUUID_TO_BIN(
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('123e4567-e89b-12d3-a456-426655440007'), 1, 'account1@example.com', 0, 0, 1, 'Doe', 'en_US', 'account1', CURRENT_TIMESTAMP, 'John', '$2a$12$AqvUA/JJ6df/.SIXJjlAjeIKpLwipeVc7fWDbPld3VcOXTr294GVG');
-- pass: very_strong_captain_account2_passwordUUID_TO_BIN(
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('223e4567-e89b-12d3-a456-426655440007'), 1, 'account2@example.com', 1, 1, 0, 'Smith', 'en_GB', 'account2', CURRENT_TIMESTAMP, 'Jane', '$2a$12$Dv.ZXRWl10bn6UdO7LUtJ.RXBnrBy/JyNjXxQWTmsF0AbYI.WFonS');
-- pass: very_strong_coach_account3_passwordUUID_TO_BIN(
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('323e4567-e89b-12d3-a456-426655440007'), 1, 'account3@example.com', 1, 1, 0, 'Johnson', 'en_US', 'account3', CURRENT_TIMESTAMP, 'Mike', '$2a$12$1CtPITSn8pyx7AxDqjYpnuPycbraJGLaaXViqwXXDaEBMraAucfsi');
-- pass: very_strong_referee_account4_passwordUUID_TO_BIN(
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('423e4567-e89b-12d3-a456-426655440007'), 1, 'account4@example.com', 1, 1, 0, 'Smith', 'en_GB', 'account4', CURRENT_TIMESTAMP, 'Jane', '$2a$12$Y5UDWXD4hHG8Cxlq4tSmweBwH4wLqVTfZU/0ceRGF6Ik6WWy2KskO');
-- pass: very_strong_manager_account5_passwordUUID_TO_BIN(
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('523e4567-e89b-12d3-a456-426655440007'), 1, 'account5@example.com', 1, 1, 0, 'Johnson', 'en_US', 'account5', CURRENT_TIMESTAMP, 'Mike', '$2a$12$2Ruwi0uhzk3HZduwhSgQVuzesAY6ONsPasEzdp5zHfTGx.O7TPs.S');
-- Wstawianie danych do tabeli roles
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('123e4567-e89b-12d3-a456-426655440008'), 1, 'ADMIN', UUID_TO_BIN('123e4567-e89b-12d3-a456-426655440007'));
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('223e4567-e89b-12d3-a456-426655441008'), 1, 'CAPTAIN', UUID_TO_BIN('223e4567-e89b-12d3-a456-426655440007'));
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('323e4567-e89b-12d3-a456-426655441008'), 1, 'COACH', UUID_TO_BIN('323e4567-e89b-12d3-a456-426655440007'));
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('423e4567-e89b-12d3-a456-426655440008'), 1, 'REFEREE', UUID_TO_BIN('423e4567-e89b-12d3-a456-426655440007'));
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('523e4567-e89b-12d3-a456-426655440008'), 1, 'MANAGER', UUID_TO_BIN('523e4567-e89b-12d3-a456-426655440007'));
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('5570ecea-3f89-41e3-9574-f4890b2e593f'), 0, 'ADMIN', UUID_TO_BIN('d93b7ab9-da9b-490c-a096-5c48437cd3a9'));

-- Wstawianie danych do tabeli admins
INSERT INTO admins (id) VALUES (UUID_TO_BIN('123e4567-e89b-12d3-a456-426655440008'));
INSERT INTO admins (id) VALUES (UUID_TO_BIN('5570ecea-3f89-41e3-9574-f4890b2e593f'));
-- Wstawianie danych do tabeli captains
INSERT INTO captains (id) VALUES (UUID_TO_BIN('223e4567-e89b-12d3-a456-426655441008'));

-- Wstawianie danych do tabeli coaches
INSERT INTO coaches (id) VALUES (UUID_TO_BIN('323e4567-e89b-12d3-a456-426655441008'));

-- Wstawianie danych do tabeli referees
INSERT INTO referees (id) VALUES (UUID_TO_BIN('423e4567-e89b-12d3-a456-426655440008'));

INSERT INTO managers (id) VALUES (UUID_TO_BIN('523e4567-e89b-12d3-a456-426655440008'));

-- team 01
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9707fe86-01bd-11ee-bbf9-023dc71ffe3b'), 1, 'coach1@example.com', 1, 1, 0, 'Johnson', 'en_US', 'coach1', CURRENT_TIMESTAMP, 'Mike', '$2a$12$2Ruwi0uhzk3HZduwhSgQVuzesAY6ONsPasEzdp5zHfTGx.O7TPs.S');
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9c987baa-01bd-11ee-9927-023dc71ffe3b'), 1, 'captain1@example.com', 1, 1, 0, 'Brownse', 'en_GB', 'captain1', CURRENT_TIMESTAMP, 'Jane', '$2a$12$Dv.ZXRWl10bn6UdO7LUtJ.RXBnrBy/JyNjXxQWTmsF0AbYI.WFonS');
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('227f870e-01be-11ee-9619-023dc71ffe3b'), 1, 'COACH', UUID_TO_BIN('9707fe86-01bd-11ee-bbf9-023dc71ffe3b'));
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('22e5391e-01be-11ee-8d2b-023dc71ffe3b'), 1, 'CAPTAIN', UUID_TO_BIN('9c987baa-01bd-11ee-9927-023dc71ffe3b'));
INSERT INTO coaches (id) VALUES (UUID_TO_BIN('227f870e-01be-11ee-9619-023dc71ffe3b'));
INSERT INTO captains (id) VALUES (UUID_TO_BIN('22e5391e-01be-11ee-8d2b-023dc71ffe3b'));

-- team 02
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9707fe86-02bd-11ee-bbf9-023dc71ffe3b'), 1, 'coach2@example.com', 1, 1, 0, 'Johnson', 'en_US', 'coach2', CURRENT_TIMESTAMP, 'Mike', '$2a$12$2Ruwi0uhzk3HZduwhSgQVuzesAY6ONsPasEzdp5zHfTGx.O7TPs.S');
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9c987baa-02bd-11ee-9927-023dc71ffe3b'), 1, 'captain2@example.com', 1, 1, 0, 'Brownse', 'en_GB', 'captain2', CURRENT_TIMESTAMP, 'Jane', '$2a$12$Dv.ZXRWl10bn6UdO7LUtJ.RXBnrBy/JyNjXxQWTmsF0AbYI.WFonS');
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('227f870e-02be-11ee-9619-023dc71ffe3b'), 1, 'COACH',  UUID_TO_BIN('9707fe86-02bd-11ee-bbf9-023dc71ffe3b'));
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('22e5391e-02be-11ee-8d2b-023dc71ffe3b'), 1, 'CAPTAIN' , UUID_TO_BIN('9c987baa-02bd-11ee-9927-023dc71ffe3b'));
INSERT INTO coaches (id) VALUES ('227f870e-02be-11ee-9619-023dc71ffe3b');
INSERT INTO captains (id) VALUES ('22e5391e-02be-11ee-8d2b-023dc71ffe3b');

-- team 03
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9707fe86-03bd-11ee-bbf9-023dc71ffe3b'), 1, 'coach3@example.com', 1, 1, 0, 'Johnson', 'en_US', 'coach3', CURRENT_TIMESTAMP, 'Mike', '$2a$12$2Ruwi0uhzk3HZduwhSgQVuzesAY6ONsPasEzdp5zHfTGx.O7TPs.S');
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9c987baa-03bd-11ee-9927-023dc71ffe3b'), 1, 'captain3@example.com', 1, 1, 0, 'Brownse', 'en_GB', 'captain3', CURRENT_TIMESTAMP, 'Jane', '$2a$12$Dv.ZXRWl10bn6UdO7LUtJ.RXBnrBy/JyNjXxQWTmsF0AbYI.WFonS');
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('227f870e-03be-11ee-9619-023dc71ffe3b'), 1, 'COACH', UUID_TO_BIN('9707fe86-03bd-11ee-bbf9-023dc71ffe3b'));
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('22e5391e-03be-11ee-8d2b-023dc71ffe3b'), 1, 'CAPTAIN', UUID_TO_BIN('9c987baa-03bd-11ee-9927-023dc71ffe3b'));
INSERT INTO coaches (id) VALUES (UUID_TO_BIN('227f870e-03be-11ee-9619-023dc71ffe3b'));
INSERT INTO captains (id) VALUES (UUID_TO_BIN('22e5391e-03be-11ee-8d2b-023dc71ffe3b'));

-- team 04
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9707fe86-04bd-11ee-bbf9-023dc71ffe3b'), 1, 'coach4@example.com', 1, 1, 0, 'Johnson', 'en_US', 'coach4', CURRENT_TIMESTAMP, 'Mike', '$2a$12$2Ruwi0uhzk3HZduwhSgQVuzesAY6ONsPasEzdp5zHfTGx.O7TPs.S');
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9c987baa-04bd-11ee-9927-023dc71ffe3b'), 1, 'captain4@example.com', 1, 1, 0, 'Brownse', 'en_GB', 'captain4', CURRENT_TIMESTAMP, 'Jane', '$2a$12$Dv.ZXRWl10bn6UdO7LUtJ.RXBnrBy/JyNjXxQWTmsF0AbYI.WFonS');
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('227f870e-04be-11ee-9619-023dc71ffe3b'), 1, 'COACH', UUID_TO_BIN('9707fe86-04bd-11ee-bbf9-023dc71ffe3b'));
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('22e5391e-04be-11ee-8d2b-023dc71ffe3b'), 1, 'CAPTAIN', UUID_TO_BIN('9c987baa-04bd-11ee-9927-023dc71ffe3b'));
INSERT INTO coaches (id) VALUES (UUID_TO_BIN('227f870e-04be-11ee-9619-023dc71ffe3b'));
INSERT INTO captains (id) VALUES (UUID_TO_BIN('22e5391e-04be-11ee-8d2b-023dc71ffe3b'));

-- team 05
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9707fe86-05bd-11ee-bbf9-023dc71ffe3b'), 1, 'coach5@example.com', 1, 1, 0, 'Johnson', 'en_US', 'coach5', CURRENT_TIMESTAMP, 'Mike', '$2a$12$2Ruwi0uhzk3HZduwhSgQVuzesAY6ONsPasEzdp5zHfTGx.O7TPs.S');
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9c987baa-05bd-11ee-9927-023dc71ffe3b'), 1, 'captain5@example.com', 1, 1, 0, 'Brownse', 'en_GB', 'captain5', CURRENT_TIMESTAMP, 'Jane', '$2a$12$Dv.ZXRWl10bn6UdO7LUtJ.RXBnrBy/JyNjXxQWTmsF0AbYI.WFonS');
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('227f870e-05be-11ee-9619-023dc71ffe3b'), 1, 'COACH', UUID_TO_BIN('9707fe86-05bd-11ee-bbf9-023dc71ffe3b'));
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('22e5391e-05be-11ee-8d2b-023dc71ffe3b'), 1, 'CAPTAIN', UUID_TO_BIN('9c987baa-05bd-11ee-9927-023dc71ffe3b'));
INSERT INTO coaches (id) VALUES (UUID_TO_BIN('227f870e-05be-11ee-9619-023dc71ffe3b'));
INSERT INTO captains (id) VALUES (UUID_TO_BIN('22e5391e-05be-11ee-8d2b-023dc71ffe3b'));

-- team 06
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9707fe86-06bd-11ee-bbf9-023dc71ffe3b'), 1, 'coach6@example.com', 1, 1, 0, 'Johnson', 'en_US', 'coach6', CURRENT_TIMESTAMP, 'Mike', '$2a$12$2Ruwi0uhzk3HZduwhSgQVuzesAY6ONsPasEzdp5zHfTGx.O7TPs.S');
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9c987baa-06bd-11ee-9927-023dc71ffe3b'), 1, 'captain6@example.com', 1, 1, 0, 'Brownse', 'en_GB', 'captain6', CURRENT_TIMESTAMP, 'Jane', '$2a$12$Dv.ZXRWl10bn6UdO7LUtJ.RXBnrBy/JyNjXxQWTmsF0AbYI.WFonS');
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('227f870e-06be-11ee-9619-023dc71ffe3b'), 1, 'COACH', UUID_TO_BIN('9707fe86-06bd-11ee-bbf9-023dc71ffe3b'));
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('22e5391e-06be-11ee-8d2b-023dc71ffe3b'), 1, 'CAPTAIN', UUID_TO_BIN('9c987baa-06bd-11ee-9927-023dc71ffe3b'));
INSERT INTO coaches (id) VALUES (UUID_TO_BIN('227f870e-06be-11ee-9619-023dc71ffe3b'));
INSERT INTO captains (id) VALUES (UUID_TO_BIN('22e5391e-06be-11ee-8d2b-023dc71ffe3b'));

-- team 07
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9707fe86-07bd-11ee-bbf9-023dc71ffe3b', 1), 1, 'coach7@example.com', 1, 1, 0, 'Johnson', 'en_US', 'coach7', CURRENT_TIMESTAMP, 'Mike', '$2a$12$2Ruwi0uhzk3HZduwhSgQVuzesAY6ONsPasEzdp5zHfTGx.O7TPs.S');
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9c987baa-07bd-11ee-9927-023dc71ffe3b', 1), 1, 'captain7@example.com', 1, 1, 0, 'Brownse', 'en_GB', 'captain7', CURRENT_TIMESTAMP, 'Jane', '$2a$12$Dv.ZXRWl10bn6UdO7LUtJ.RXBnrBy/JyNjXxQWTmsF0AbYI.WFonS');
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('227f870e-07be-11ee-9619-023dc71ffe3b', 1), 1, 'COACH', UUID_TO_BIN('9707fe86-07bd-11ee-bbf9-023dc71ffe3b'));
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('22e5391e-07be-11ee-8d2b-023dc71ffe3b', 1), 1, 'CAPTAIN', UUID_TO_BIN('9c987baa-07bd-11ee-9927-023dc71ffe3b'));
INSERT INTO coaches (id) VALUES (UUID_TO_BIN('227f870e-07be-11ee-9619-023dc71ffe3b'));
INSERT INTO captains (id) VALUES (UUID_TO_BIN('22e5391e-07be-11ee-8d2b-023dc71ffe3b'));

-- team 08
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9707fe86-08bd-11ee-bbf9-023dc71ffe3b', 1), 1, 'coach8@example.com', 1, 1, 0, 'Johnson', 'en_US', 'coach8', CURRENT_TIMESTAMP, 'Mike', '$2a$12$2Ruwi0uhzk3HZduwhSgQVuzesAY6ONsPasEzdp5zHfTGx.O7TPs.S');
INSERT INTO accounts (id, version, email, is_active, is_approved, is_blocked, lastname, locale, login, login_timestamp, name, password) VALUES (UUID_TO_BIN('9c987baa-08bd-11ee-9927-023dc71ffe3b', 1), 1, 'captain8@example.com', 1, 1, 0, 'Brownse', 'en_GB', 'captain8', CURRENT_TIMESTAMP, 'Jane', '$2a$12$Dv.ZXRWl10bn6UdO7LUtJ.RXBnrBy/JyNjXxQWTmsF0AbYI.WFonS');
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('227f870e-08be-11ee-9619-023dc71ffe3b', 1), 1, 'COACH', UUID_TO_BIN('9707fe86-08bd-11ee-bbf9-023dc71ffe3b'));
INSERT INTO roles (id, version, role_type, account_id) VALUES (UUID_TO_BIN('22e5391e-08be-11ee-8d2b-023dc71ffe3b', 1), 1, 'CAPTAIN', UUID_TO_BIN('9c987baa-08bd-11ee-9927-023dc71ffe3b'));
INSERT INTO coaches (id) VALUES (UUID_TO_BIN('227f870e-08be-11ee-9619-023dc71ffe3b'));
INSERT INTO captains (id) VALUES (UUID_TO_BIN('22e5391e-08be-11ee-8d2b-023dc71ffe3b'));

-- Wstawianie danych do tabeli teams
INSERT INTO teams (id, city, is_approved, team_name, version, captain_id, coach_id, league_id) VALUES (UUID_TO_BIN('013e4567-e89b-12d3-a456-426655440010'), 'Ireland', 1, 'Team Aspect', 1, UUID_TO_BIN('22e5391e-32be-11ee-8d2b-023dc71ffe3b'), UUID_TO_BIN('227f870e-32be-11ee-9619-023dc71ffe3b'), UUID_TO_BIN('123e4567-e89b-12d3-a456-426655440001'));
INSERT INTO teams (id, city, is_approved, team_name, version, captain_id, coach_id, league_id) VALUES (UUID_TO_BIN('023e4567-e89b-12d3-a456-426655440010'), 'Ireland', 1, 'Team Prize of Conflict', 1, UUID_TO_BIN('22e5391e-02be-11ee-8d2b-023dc71ffe3b'), UUID_TO_BIN('227f870e-02be-11ee-9619-023dc71ffe3b'), UUID_TO_BIN('223e4567-e89b-12d3-a456-426655440001'));
INSERT INTO teams (id, city, is_approved, team_name, version, captain_id, coach_id, league_id) VALUES (UUID_TO_BIN('033e4567-e89b-12d3-a456-426655440010'), 'Ireland', 1, 'Team Sundry', 1, UUID_TO_BIN('22e5391e-03be-11ee-8d2b-023dc71ffe3b'), UUID_TO_BIN('227f870e-03be-11ee-9619-023dc71ffe3b'), UUID_TO_BIN('323e4567-e89b-12d3-a456-426655440001'));
INSERT INTO teams (id, city, is_approved, team_name, version, captain_id, coach_id, league_id) VALUES (UUID_TO_BIN('043e4567-e89b-12d3-a456-426655440010'), 'Ireland', 1, 'Team Revolution of Carnage', 1, UUID_TO_BIN('22e5391e-04be-11ee-8d2b-023dc71ffe3b'), UUID_TO_BIN('227f870e-04be-11ee-9619-023dc71ffe3b'), UUID_TO_BIN('423e4567-e89b-12d3-a456-426655440001'));
INSERT INTO teams (id, city, is_approved, team_name, version, captain_id, coach_id, league_id) VALUES (UUID_TO_BIN('053e4567-e89b-12d3-a456-426655440010'), 'Ireland', 1, 'Team Virtue of Karma', 1, UUID_TO_BIN('22e5391e-05be-11ee-8d2b-023dc71ffe3b'), UUID_TO_BIN('227f870e-05be-11ee-9619-023dc71ffe3b'), UUID_TO_BIN('123e4567-e89b-12d3-a456-426655440001'));
INSERT INTO teams (id, city, is_approved, team_name, version, captain_id, coach_id, league_id) VALUES (UUID_TO_BIN('063e4567-e89b-12d3-a456-426655440010'), 'Ireland', 1, 'Team Ireland Lizards', 1, UUID_TO_BIN('22e5391e-06be-11ee-8d2b-023dc71ffe3b'), UUID_TO_BIN('227f870e-06be-11ee-9619-023dc71ffe3b'), UUID_TO_BIN('223e4567-e89b-12d3-a456-426655440001'));
INSERT INTO teams (id, city, is_approved, team_name, version, captain_id, coach_id, league_id) VALUES (UUID_TO_BIN('073e4567-e89b-12d3-a456-426655440010'), 'Ireland', 1, 'Team Ireland Mice', 1, UUID_TO_BIN('22e5391e-07be-11ee-8d2b-023dc71ffe3b'), UUID_TO_BIN('227f870e-07be-11ee-9619-023dc71ffe3b'), UUID_TO_BIN('323e4567-e89b-12d3-a456-426655440001'));
INSERT INTO teams (id, city, is_approved, team_name, version, captain_id, coach_id, league_id) VALUES (UUID_TO_BIN('083e4567-e89b-12d3-a456-426655440010'), 'Ireland', 1, 'Team Ireland Lions', 1, UUID_TO_BIN('22e5391e-08be-11ee-8d2b-023dc71ffe3b'), UUID_TO_BIN('227f870e-08be-11ee-9619-023dc71ffe3b'), UUID_TO_BIN('423e4567-e89b-12d3-a456-426655440001'));


-- Wstawianie danych do tabeli players
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('bfbd63f6-5f12-45a0-bddb-d09df532ac7a'), 35, 'Jennifer', 1, 'Shelton', 1,  UUID_TO_BIN('013e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('5ac67b0d-6421-4fe9-8349-344a90183611'), 37, 'Dylan', 1, 'Carroll', 1,     UUID_TO_BIN(  '013e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('3ff79756-1820-4f52-b183-bce93c88ebfd'), 19, 'Katrina', 1, 'Mendoza', 1,   UUID_TO_BIN(   '013e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('ce3f4b60-5306-4aff-b842-72e7f64c39a9'), 39, 'Stephanie', 1, 'Garrison', 1,UUID_TO_BIN(   '013e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('bc48c4e9-1fd3-432e-9406-cdb03d64f905'), 39, 'Austin', 1, 'Garcia', 1,     UUID_TO_BIN(      '013e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('66c45716-ac6b-4499-8326-6a70f844d9b3'), 31, 'Tom', 1, 'Wright', 1,        UUID_TO_BIN(  '013e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('41023bad-b322-4443-ae3f-d6b056ab8027'), 21, 'Emily', 1, 'Bernard', 1,     UUID_TO_BIN(   '013e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('4b679492-f66e-4a6c-a666-ec1ac9fc6d94'), 32, 'Vicki', 1, 'Powell', 1,      UUID_TO_BIN(   '013e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('45cf0ca1-b002-4bfd-b22b-d295f06351b5'), 25, 'Michael', 1, 'Little', 1,    UUID_TO_BIN(       '023e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('164e17c4-fe55-4171-9b3e-906bf9a2e5fd'), 37, 'Luke', 1, 'Jimenez', 1,      UUID_TO_BIN(   '023e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('d51d1325-efb8-4879-8211-faa6bffcd341'), 27, 'Rebecca', 1, 'Rodriguez', 1, UUID_TO_BIN(       '023e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('d0d2104c-95ab-421c-9ed4-e2e288730a0e'), 19, 'Jason', 1, 'Ware', 1,        UUID_TO_BIN(   '023e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('03077706-1ab3-4ab3-8531-a1aae5c3a597'), 28, 'Gabriel', 1, 'Pratt', 1,     UUID_TO_BIN(       '023e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('b0f2a4ea-5bf3-408a-9567-38d32982b111'), 18, 'Norman', 1, 'Randolph', 1,   UUID_TO_BIN(       '023e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('c1fa8960-fb65-47e5-8354-06693c724fe4'), 30, 'Natalie', 1, 'Hamilton', 1,  UUID_TO_BIN(   '023e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('b47be575-75be-4a6d-a482-8d31105ea675'), 23, 'Matthew', 1, 'Moss', 1,      UUID_TO_BIN(   '023e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('c4254db8-118e-4b2f-afca-7ec76fdd011d'), 29, 'Kim', 1, 'Banks', 1,         UUID_TO_BIN(   '033e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('9fd5aa94-4aba-499b-aa0e-72603c3bc767'), 27, 'Eddie', 1, 'Davis', 1,       UUID_TO_BIN(       '033e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('3ea63984-3368-4f3a-b905-deed4ea8088b'), 19, 'Daniel', 1, 'Reynolds', 1,   UUID_TO_BIN(       '033e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('bb4806d8-9bfa-4c01-99e3-9aa660fcf1c9'), 30, 'Jeremy', 1, 'Becker', 1,     UUID_TO_BIN(       '033e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('13b41868-8318-458b-9d99-2807180057d2'), 35, 'Robert', 1, 'Tucker', 1,     UUID_TO_BIN(   '033e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('a0e74761-fcf2-4f9a-b762-0a8a45e80ace'), 39, 'Gary', 1, 'Khan', 1,         UUID_TO_BIN(   '033e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('4202e1dd-b8af-4a90-81f7-35e923b93e3d'), 20, 'Christy', 1, 'Gibson', 1,    UUID_TO_BIN(   '033e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('c469d1e9-feb5-4663-a8db-c35723fdfba1'), 28, 'Margaret', 1, 'King', 1,     UUID_TO_BIN(   '033e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('07f8d39a-e47e-4747-be2c-78a0ef89b024'), 38, 'Katrina', 1, 'Gomez', 1,     UUID_TO_BIN(  '043e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('5021381e-a12a-4e5d-9e93-2fefbfc455db'), 32, 'Tonya', 1, 'Gonzalez', 1,    UUID_TO_BIN(      '043e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('14a0b70f-c1b2-43b7-a228-533cfceec9c5'), 20, 'Charles', 1, 'Sparks', 1,    UUID_TO_BIN(    '043e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('fe53609a-253c-43c6-88d5-aa237751d150'), 36, 'Tammy', 1, 'Martin', 1,      UUID_TO_BIN(   '043e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('2901e293-27a3-4bc5-810f-0b8fb3c0b6ec'), 20, 'Joyce', 1, 'Hudson', 1,      UUID_TO_BIN(   '043e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('505f8566-5888-40b1-92f2-10218723bea1'), 32, 'Jerry', 1, 'Wyatt', 1,       UUID_TO_BIN(   '043e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('baf7a2c8-3d4a-4c30-aabc-27e43bbd378c'), 32, 'Lauren', 1, 'Bailey', 1,     UUID_TO_BIN(   '043e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('6beeb051-3448-45d0-8a8f-b49155d9d1d8'), 35, 'Linda', 1, 'Kelly', 1,       UUID_TO_BIN(   '043e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('bd21a823-9026-413e-bc9d-51a8ecef6bfa'), 39, 'Tyler', 1, 'Smith', 1,       UUID_TO_BIN(   '053e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('d5153d32-769b-4fd8-8d51-0398bc1513ee'), 31, 'Barbara', 1, 'Jones', 1,     UUID_TO_BIN(   '053e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('cc517862-cc8e-48a8-989a-50b6e6c8b185'), 38, 'Alexis', 1, 'Maxwell', 1,    UUID_TO_BIN(   '053e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('a80aea50-9e6a-4226-92a6-fe98ea4e67f4'), 34, 'Charles', 1, 'Robbins', 1,   UUID_TO_BIN(       '053e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('1fac3360-6160-4f6f-a28a-fb98c86751bb'), 24, 'Dennis', 1, 'Williams', 1,   UUID_TO_BIN(       '053e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('b878214b-9e7c-419d-a0b9-a4e333c50047'), 37, 'Kathy', 1, 'Singh', 1,       UUID_TO_BIN(       '053e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('3e7b6050-13d4-44e3-97cd-493865641f1d'), 18, 'Daniel', 1, 'Hanson', 1,     UUID_TO_BIN(       '053e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('965fc507-6855-4581-8468-86f5a6e8326f'), 30, 'Caitlin', 1, 'Brooks', 1,    UUID_TO_BIN(       '053e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('d4a1d230-3178-4cd8-a44a-05427531e264'), 40, 'Jesse', 1, 'Wright', 1,      UUID_TO_BIN(       '063e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('f78e0e3b-acef-4f7a-bb7c-284209abc126'), 27, 'Heidi', 1, 'Anderson', 1,    UUID_TO_BIN(       '063e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('e2ea0668-5891-48e0-9701-fd5788027409'), 33, 'Beth', 1, 'May', 1,          UUID_TO_BIN(    '063e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('3dcad865-d8e8-42f3-9164-60fa0eafa9f6'), 18, 'Kimberly', 1, 'Cole', 1,     UUID_TO_BIN(       '063e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('710d7b23-0a6c-4b6b-bfcc-db6dbebb9fcb'), 37, 'Henry', 1, 'Mckenzie', 1,    UUID_TO_BIN(       '063e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('acc6aa43-9540-47fd-8890-691011f4bbb2'), 18, 'Brittany', 1, 'Bishop', 1,   UUID_TO_BIN(           '063e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('61e8b516-f57c-4f60-b9ad-82dce97c5193'), 18, 'Haley', 1, 'Avery', 1,       UUID_TO_BIN(       '063e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('8f4ea04d-66dd-4483-88be-27709b77db19'), 37, 'Sherri', 1, 'Moore', 1,      UUID_TO_BIN(       '063e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('6860a380-7355-4524-ae10-ad183ab18705'), 28, 'Kristen', 1, 'Humphrey', 1,  UUID_TO_BIN('073e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('dd13fe7c-4604-41b6-af93-2e8039c81316'), 24, 'Lee', 1, 'Myers', 1,         UUID_TO_BIN(  '073e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('4d44bdc7-ae4f-485e-922e-e3c2102427f9'), 21, 'Hannah', 1, 'Taylor', 1,     UUID_TO_BIN(   '073e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('578f2e33-06a7-4d11-ab6d-e53c77b2ecca'), 37, 'David', 1, 'Rivera', 1,      UUID_TO_BIN(        '073e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('4abf2c91-6306-4cdd-86b0-8c535556d59c'), 28, 'Paul', 1, 'Ortega', 1,       UUID_TO_BIN(   '073e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('ddb3826b-61aa-4308-a2fa-03c67a5ebeae'), 38, 'Tonya', 1, 'Byrd', 1,        UUID_TO_BIN(      '073e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('bacd0389-7a9a-4467-8905-bd618882c1f2'), 25, 'John', 1, 'May', 1,          UUID_TO_BIN(    '073e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('53ebe714-4846-4177-b90e-c8e17dafbd10'), 29, 'Robert', 1, 'Rogers', 1,     UUID_TO_BIN(    '073e4567-e89b-12d3-a456-426655440010'));
INSERT INTO players (id, age, first_name, is_pro, last_name, version, team_id) VALUES (UUID_TO_BIN('5a50471c-4ad8-4f9f-a6ca-1564e2862e85'), 26, 'Joshua', 1, 'Baker', 1,      UUID_TO_BIN(  '083e4567-e89b-12d3-a456-426655440010'));

-- Wstawianie danych do tabeli venues
INSERT INTO venues (id, address, court_number, version) VALUES (UUID_TO_BIN('123e4567-e89b-12d3-a456-426655440014'), 'aleja Unii Lubelskiej 2', 1, 1);
INSERT INTO venues (id, address, court_number, version) VALUES (UUID_TO_BIN('223e4567-e89b-12d3-a456-426655440014'), 'Milionowa 96A', 2, 1);
INSERT INTO venues (id, address, court_number, version) VALUES (UUID_TO_BIN('323e4567-e89b-12d3-a456-426655440014'), 'Niciarniana 1/3', 3, 1);
