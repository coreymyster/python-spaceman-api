-- User: spaceman_game_test_user
-- DROP USER spaceman_game_test_user;

CREATE USER spaceman_game_test_user WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  CREATEDB
  NOCREATEROLE
  NOREPLICATION;

ALTER USER spaceman_game_test_user with PASSWORD 'password';

-- Database: spaceman_game_test
-- DROP DATABASE spaceman_game_test;

CREATE DATABASE spaceman_game_test
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

GRANT ALL ON DATABASE spaceman_game_test TO postgres;

GRANT TEMPORARY, CONNECT ON DATABASE spaceman_game_test TO PUBLIC;

GRANT ALL ON DATABASE spaceman_game_test TO spaceman_game_test_user;