/*Creating and defining the tables*/
DROP DATABASE IF EXISTS SaunasHotTub;
CREATE DATABASE SaunasHotTub;
USE SaunasHotTub;


/*Events*/
DROP TABLE IF EXISTS Events;

CREATE TABLE Events (
    Event_ID INT PRIMARY KEY,
    Event_name VARCHAR(30),
    Date_of_event DATE NOT NULL,
    Time_of_the_event TIME NOT NULL,
    Country VARCHAR(30) NOT NULL,
    City VARCHAR(30) NOT NULL,
    Venue_of_the_event VARCHAR(30),
    Result_link VARCHAR(50),
    Category VARCHAR(2),
    Contact_person_email VARCHAR(50),
    Additional_info VARCHAR(100),
    Previous_edition VARCHAR(2)
);
DROP TABLE IF EXISTS Event_results;

CREATE TABLE Event_results (
    Result_link VARCHAR(50) PRIMARY KEY, 
    Winner_Female VARCHAR(30),
    Winner_Male VARCHAR(30),
    Overall_winner VARCHAR(30)
);
DROP TABLE IF EXISTS Event_contact_person;

CREATE TABLE Event_contact_person (
    Contact_person_email VARCHAR(50) PRIMARY KEY,
    Contact_person_name VARCHAR(30) NOT NULL
);

/*Saunas*/
DROP TABLE IF EXISTS Saunas_and_hot_tubs;

CREATE TABLE Saunas_and_hot_tubs (
    Name VARCHAR(30) PRIMARY KEY, 
    Theme VARCHAR(30),
    Location VARCHAR(30),
    Description VARCHAR(100)
);

DROP TABLE IF EXISTS Saunas_pictures;

CREATE TABLE Saunas_pictures (
    Name VARCHAR(30) PRIMARY KEY,
    Pic1 VARCHAR(50) NOT NULL, 
    Pic2 VARCHAR(50),
    Pic3 VARCHAR(50),
    Pic4 VARCHAR(50),
    Pic5 VARCHAR(50)
);

/*Accomodations*/

DROP TABLE IF EXISTS Accomodation1;

CREATE TABLE Accomodation1 (
    Website VARCHAR(50) PRIMARY KEY, 
    Telephone_no INT NOT NULL UNIQUE
);

DROP TABLE IF EXISTS Accomodation2;

CREATE TABLE Accomodation2 (
    Hotel_name VARCHAR(30) NOT NULL,
    Website VARCHAR(50) PRIMARY KEY,
    Email VARCHAR(50),
    Bookings INT
);

DROP TABLE IF EXISTS Hotels;

CREATE TABLE Hotels (
    Website VARCHAR(50) PRIMARY KEY,
    Hotel_name VARCHAR(30) NOT NULL,
    vacancy INT 
);

/*Participants*/
DROP TABLE IF EXISTS Participants;

CREATE TABLE Participants (
    Participant_ID INT PRIMARY KEY,
    Team_ID INT NOT NULL,
    Participant_name VARCHAR(30) NOT NULL,
    Gender_category VARCHAR(2),
    Country VARCHAR(30) NOT NULL,
    Height INT,
    Date_of_birth DATE,
    Age INT
);

DROP TABLE IF EXISTS Winners;

CREATE TABLE Winners (
    Participant_ID INT PRIMARY KEY, 
    Participant_name VARCHAR(30) NOT NULL,
    Gender_category VARCHAR(1),
    Country VARCHAR(30) NOT NULL
);

/*Points*/
DROP TABLE IF EXISTS Points;

CREATE TABLE Points (
    Participant_ID  INT PRIMARY KEY, 
    Gender_category VARCHAR(1) NOT NULL,
    Event_ID INT NOT NULL,
    Penalty_points INT,
    Bonus_points INT, 
    Participant_Name VARCHAR(30) NOT NULL,
    Country_code INT NOT NULL,
    Special_points INT,
    Total_points INT
);

DROP TABLE IF EXISTS Country_ranking;

CREATE TABLE Country_ranking (
    Year INT NOT NULL,
    Championship_name VARCHAR(30) NOT NULL,
    Country_name VARCHAR(30) NOT NULL,
    Country_code INT NOT NULL,
    Country_flag VARCHAR(50),
    Average_points INT
);

DROP TABLE IF EXISTS Participants_ranking;

CREATE TABLE Participants_ranking (
    Country_code INT NOT NULL, 
    Year INT NOT NULL,  
    Championship_name VARCHAR(30) NOT NULL, 
    Gender_category VARCHAR(1),
    Athlete_name VARCHAR(30) NOT NULL, 
    Country_flag VARCHAR(50),
    Distance_run INT,
    Partcipant_ranking INT
);

/*Presidium*/
DROP TABLE IF EXISTS Presidium1;

CREATE TABLE Presidium1 (
    Employee_ID INT PRIMARY KEY, 
    Email_id VARCHAR(50) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS Presidium2;

CREATE TABLE Presidium2 (
    Employee_ID INT PRIMARY KEY, 
    Name VARCHAR(30) NOT NULL UNIQUE,
    Position VARCHAR(30),
    Photo VARCHAR(50),
    Quote VARCHAR(150)
);




