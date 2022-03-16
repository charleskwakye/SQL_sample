DROP TABLE if exists epl.Club;
DROP TABLE if exists epl.Team;
DROP TABLE if exists epl.Staff;
DROP TABLE if exists epl.Player;
DROP TABLE if exists epl.StartingEleven;
DROP TABLE if exists epl.MatchTeam;
DROP TABLE if exists epl.MatchStartingEleven;
DROP TABLE if exists epl.Match;
DROP TABLE if exists epl.Tournament;
#removong schema
DROP SCHEMA IF EXISTS epl;
-- Create schema
CREATE SCHEMA epl;
USE epl;

-- Create tables
CREATE TABLE epl.Club(
clubID int NOT NULL PRIMARY KEY ,
clubName   varchar(50) NOT NULL,
ceoName varchar(50) NOT NULL,
homeStadium varchar(50) NULL,
ranking int NOT NULL,
value int NOT NULL
 )
;

CREATE TABLE epl.Team(
teamID int NOT NULL PRIMARY KEY ,
teamName   varchar(50) NOT NULL,
managerName varchar(50) NULL,
matches smallint NULL,
noOfPLayers int NOT NULL,
clubID int NOT NULL
 )
;

CREATE TABLE epl.Staff(
staffID int NOT NULL PRIMARY KEY ,
medicalStaffName   varchar(50) NOT NULL,
managerName varchar(50) NOT NULL,
assistantmanagerName varchar(50) NOT NULL,
chiefAnanlyst varchar(50) NOT NULL,
fitnessCoach varchar(50) NOT NULL,
physiotherarapist varchar(50) NOT NULL,
teamID int NOT NULL
 )
;

CREATE TABLE epl.Player(
playerID int NOT NULL PRIMARY KEY ,
playerName   varchar(50) NOT NULL,
age smallint NOT NULL,
position varchar(50) NOT NULL,
contractYears smallint NOT NULL,
height smallint NOT NULL,
teamID int NOT NULL,
startingElevenID int NOT NULL
 )
;

CREATE TABLE epl.StartingEleven(
startingElevenID int NOT NULL PRIMARY KEY ,
playerNumber smallint NOT NULL,
matchID int NOT NULL
 )
;

CREATE TABLE epl.MatchTeam(
matchTeamID int NOT NULL PRIMARY KEY,
matchID int NOT NULL,
teamID int NOT NULL
 )
;

CREATE TABLE epl.MatchStartingEleven(
matchStartingElevenID int NOT NULL PRIMARY KEY ,
matchID int NOT NULL,
startingElevenID int NOT NULL
 )
;

CREATE TABLE epl.Match(
matchID int NOT NULL PRIMARY KEY ,
referee   varchar(50) NOT NULL,
dateTime date NOT NULL,
yellowCards smallint NULL,
redCards smallint NULL,
result varchar(50) NOT NULL,
stadium varchar(50) NOT NULL,
tournamentID int NOT NULL
 )
;

CREATE TABLE epl.Tournament(
tournamentD int NOT NULL PRIMARY KEY ,
tournamentName varchar(50) NOT NULL,
organisation varchar(50) NOT NULL,
teamID int NOT NULL,
tournamentLevel varchar(50) NOT NULL
 )
;