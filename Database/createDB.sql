DROP DATABASE IF EXISTS TEST_SCIAC;

CREATE DATABASE TEST_SCIAC;

GRANT ALL PRIVILEGES ON TEST_SCIAC.* to zack@localhost IDENTIFIED BY 'rossman';

USE TEST_SCIAC;

CREATE TABLE FIELD_PLAYERS(
  playerid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cap_num VARCHAR(256) NOT NULL,
  name VARCHAR(256) NOT NULL,
  team VARCHAR(256) NOT NULL,
  shots INT NOT NULL,
  goals INT NOT NULL,
  assists INT NOT NULL,
  points INT NOT NULL,
  exclusions INT NOT NULL,
  drawn_exc INT NOT NULL,
  steals INT NOT NULL
);

CREATE TABLE GOALIES(
  goalieid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cap_num VARCHAR(256) NOT NULL,
  name VARCHAR(256) NOT NULL,
  team VARCHAR(256) NOT NULL,
  goals_allowed INT NOT NULL,
  saves INT NOT NULL,
  steals INT NOT NULL
);

CREATE TABLE GAMEURLS(
  gameid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  urls VARCHAR(256) NOT NULL
);

CREATE TABLE USERS(
  userid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  password VARCHAR(256) NOT NULL,
  name VARCHAR(256) NOT NULL
);

CREATE TABLE TEAMS(
  teamid INT NOT NULL,
  name VARCHAR(256),
  fp1id INT,
  fp2id INT,
  fp3id INT,
  fp4id INT,
  fp5id INT,
  fp6id INT,
  gid INT,
  FOREIGN KEY (teamid) REFERENCES USERS (userid)
);

CREATE TABLE DRAFTED(
  playerid INT NOT NULL,
  cap_num VARCHAR(256) NOT NULL,
  name VARCHAR(256) NOT NULL,
  team VARCHAR(256) NOT NULL,
  shots INT NOT NULL,
  goals INT NOT NULL,
  assists INT NOT NULL,
  points INT NOT NULL,
  exclusions INT NOT NULL,
  drawn_exc INT NOT NULL,
  steals INT NOT NULL
);