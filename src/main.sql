
/*Events*/
DROP TABLE IF EXISTS Events;
-- loaded
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
-- loaded
CREATE TABLE Event_results (
    Result_link VARCHAR(50) PRIMARY KEY, 
    Winner_Female VARCHAR(30),
    Winner_Male VARCHAR(30),
    Overall_winner VARCHAR(30)
);
DROP TABLE IF EXISTS Event_contact_person;
-- loaded
CREATE TABLE Event_contact_person (
    Contact_person_email VARCHAR(50) PRIMARY KEY,
    Contact_person_name VARCHAR(30) NOT NULL
);

/*Saunas*/
DROP TABLE IF EXISTS Saunas_and_hot_tubs;
-- loaded
CREATE TABLE Saunas_and_hot_tubs (
    Name VARCHAR(30) PRIMARY KEY, 
    Theme VARCHAR(30),
    Location VARCHAR(30),
    Description VARCHAR(100)
);

DROP TABLE IF EXISTS Saunas_pictures;
-- loaded
CREATE TABLE Saunas_pictures (
    Name VARCHAR(30) PRIMARY KEY,
    Pic1 VARCHAR(200) NOT NULL, 
    Pic2 VARCHAR(200),
    Pic3 VARCHAR(200),
    Pic4 VARCHAR(200),
    Pic5 VARCHAR(200)
);

/*Accomodations*/

DROP TABLE IF EXISTS Accomodation1;
-- loaded
CREATE TABLE Accomodation1 (
    Website VARCHAR(200) PRIMARY KEY, 
    Telephone_no VARCHAR(50) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS Accomodation2;
-- loaded
CREATE TABLE Accomodation2 (
    Hotel_name VARCHAR(30) NOT NULL,
    Website VARCHAR(50) PRIMARY KEY,
    Email VARCHAR(50),
    Bookings INT
);

DROP TABLE IF EXISTS Hotels;
-- loaded
CREATE TABLE Hotels (
    Website VARCHAR(50) PRIMARY KEY,
    Hotel_name VARCHAR(30) NOT NULL,
    vacancy INT 
);

/*Participants*/
DROP TABLE IF EXISTS Participants;
-- loaded
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
-- loaded
CREATE TABLE Winners (
    Participant_ID INT PRIMARY KEY, 
    Participant_name VARCHAR(30) NOT NULL,
    Gender_category VARCHAR(1),
    Country VARCHAR(30) NOT NULL
);

/*Points*/
DROP TABLE IF EXISTS Points;
-- loaded
CREATE TABLE Points (
    Participant_ID  INT PRIMARY KEY, 
    Gender_category VARCHAR(2) NOT NULL,
    Event_ID INT NOT NULL,
    Penalty_points INT,
    Bonus_points INT, 
    Participant_Name VARCHAR(30) NOT NULL,
    Country_code INT NOT NULL,
    Special_points INT,
    Total_points INT
);

DROP TABLE IF EXISTS Country_ranking;
-- loaded
CREATE TABLE Country_ranking (
    Year INT NOT NULL,
    Championship_name VARCHAR(30) NOT NULL,
    Country_name VARCHAR(30) NOT NULL,
    Country_code INT NOT NULL,
    Country_flag VARCHAR(50),
    Average_points INT
);

DROP TABLE IF EXISTS Participants_ranking;
-- loaded
CREATE TABLE Participants_ranking (
    Country_code INT NOT NULL, 
    Year INT NOT NULL,  
    Championship_name VARCHAR(30) NOT NULL, 
    Gender_category VARCHAR(2),
    Athlete_name VARCHAR(30) NOT NULL, 
    Country_flag VARCHAR(50),
    Distance_run INT,
    Participant_ranking INT
);

/*Presidium*/
DROP TABLE IF EXISTS Presidium1;
-- loaded
CREATE TABLE Presidium1 (
    Employee_ID INT PRIMARY KEY, 
    Email_id VARCHAR(50) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS Presidium2;
-- loaded
CREATE TABLE Presidium2 (
    Employee_ID INT PRIMARY KEY, 
    Name VARCHAR(30) NOT NULL UNIQUE,
    Position VARCHAR(30),
    Photo VARCHAR(50),
    Quote VARCHAR(150)
);

insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('cbsnews.com', 'Moyra Lohoar', 'Moyra Lohoar', 'Moyra Lohoar');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('shop-pro.jp', 'Perren Elverston', 'Perren Elverston', 'Perren Elverston');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('diigo.com', 'Karlie Hilland', 'Karlie Hilland', 'Karlie Hilland');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('walmart.com', 'Genvieve Steedman', 'Genvieve Steedman', 'Genvieve Steedman');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('typepad.com', 'Meredith Brosini', 'Meredith Brosini', 'Meredith Brosini');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('auda.org.au', 'Rutledge Wooddisse', 'Rutledge Wooddisse', 'Rutledge Wooddisse');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('wunderground.com', 'Herve Gallety', 'Herve Gallety', 'Herve Gallety');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('princeton.edu', 'Harriette Angeli', 'Harriette Angeli', 'Harriette Angeli');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('answers.com', 'Dalli Calcutt', 'Dalli Calcutt', 'Dalli Calcutt');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('virginia.edu', 'Romy Cornell', 'Romy Cornell', 'Romy Cornell');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('netlog.com', 'Vivianna Middle', 'Vivianna Middle', 'Vivianna Middle');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('google.de', 'Hanson Nutbrown', 'Hanson Nutbrown', 'Hanson Nutbrown');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('yellowpages.com', 'Sigrid Sammonds', 'Sigrid Sammonds', 'Sigrid Sammonds');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('yolasite.com', 'Sampson Deverale', 'Sampson Deverale', 'Sampson Deverale');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('dagondesign.com', 'Concettina Coleborn', 'Concettina Coleborn', 'Concettina Coleborn');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('netscape.com', 'Frederick Upson', 'Frederick Upson', 'Frederick Upson');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('arizona.edu', 'Jae Vogt', 'Jae Vogt', 'Jae Vogt');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('seesaa.net', 'Alvinia Gery', 'Alvinia Gery', 'Alvinia Gery');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('123-reg.co.uk', 'Skyler Santostefano.', 'Skyler Santostefano.', 'Skyler Santostefano.');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('irs.gov', 'Emile Poppleston', 'Emile Poppleston', 'Emile Poppleston');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('csmonitor.com', 'Berty Sunnex', 'Berty Sunnex', 'Berty Sunnex');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('mashable.com', 'Tymon Strewther', 'Tymon Strewther', 'Tymon Strewther');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('yahoo.com', 'Bidget Dodds', 'Bidget Dodds', 'Bidget Dodds');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('google.ru', 'Lombard Penwarden', 'Lombard Penwarden', 'Lombard Penwarden');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('github.com', 'Merv Brunesco', 'Merv Brunesco', 'Merv Brunesco');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('usda.gov', 'Raimund Kittredge', 'Raimund Kittredge', 'Raimund Kittredge');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('dedecms.com', 'Sarene Aleevy', 'Sarene Aleevy', 'Sarene Aleevy');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('archive.org', 'Jeanette Thackham', 'Jeanette Thackham', 'Jeanette Thackham');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('mysql.com', 'Creight McGarry', 'Creight McGarry', 'Creight McGarry');
insert into Event_results (Result_link, Winner_Female, Winner_Male, Overall_winner) values ('sciencedaily.com', 'Alfy Maciaszek', 'Alfy Maciaszek', 'Alfy Maciaszek');

insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (1, 'F', 1, null, 37, 'Moyra Lohoar', 'ID', 82, 989);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (2, 'M', 2, null, 45, 'Perren Elverston', 'VE', 92, 921);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (3, 'F', 3, null, 47, 'Karlie Hilland', 'FR', 55, 928);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (4, 'F', 4, null, 9, 'Genvieve Steedman', 'CN', 7, 909);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (5, 'M', 5, null, 46, 'Meredith Brosini', 'PE', 93, 992);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (6, 'M', 6, null, 77, 'Rutledge Wooddisse', 'CN', 9, 980);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (7, 'M', 7, null, 34, 'Herve Gallety', 'ID', 57, 913);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (8, 'F', 8, null, 21, 'Harriette Angeli', 'BR', 84, 909);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (9, 'M', 9, null, 26, 'Dalli Calcutt', 'PS', 62, 930);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (10, 'F', 10, null, 10, 'Romy Cornell', 'ID', 36, 931);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (11, 'F', 11, null, 63, 'Vivianna Middle', 'CN', 71, 944);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (12, 'M', 12, null, 1, 'Hanson Nutbrown', 'LY', 24, 972);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (13, 'F', 13, null, 79, 'Sigrid Sammonds', 'MA', 77, 999);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (14, 'M', 14, null, 80, 'Sampson Deverale', 'AR', 17, 994);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (15, 'F', 15, null, 84, 'Concettina Coleborn', 'FR', 87, 988);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (16, 'M', 16, null, 79, 'Frederick Upson', 'RU', 63, 917);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (17, 'M', 17, null, 92, 'Jae Vogt', 'RS', 47, 973);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (18, 'F', 18, null, 75, 'Alvinia Gery', 'CN', 52, 976);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (19, 'M', 19, null, 66, 'Skyler Santostefano.', 'UA', 60, 926);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (20, 'M', 20, null, 87, 'Emile Poppleston', 'VN', 41, 980);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (21, 'F', 21, null, 92, 'Berty Sunnex', 'AF', 41, 900);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (22, 'M', 22, null, 79, 'Tymon Strewther', 'CA', 95, 933);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (23, 'F', 23, null, 59, 'Bidget Dodds', 'CN', 4, 959);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (24, 'M', 24, null, 5, 'Lombard Penwarden', 'ID', 5, 972);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (25, 'M', 25, null, 19, 'Merv Brunesco', 'ZA', 20, 961);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (26, 'M', 26, null, 79, 'Raimund Kittredge', 'GL', 50, 958);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (27, 'F', 27, null, 24, 'Sarene Aleevy', 'CN', 78, 934);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (28, 'F', 28, null, 59, 'Jeanette Thackham', 'PT', 84, 947);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (29, 'M', 29, null, 80, 'Creight McGarry', 'DE', 60, 945);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (30, 'M', 30, null, 62, 'Alfy Maciaszek', 'UA', 100, 921);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (31, 'F', 19, null, 39, 'Maybelle Blincow', 'RU', 24, 544);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (32, 'M', 38, null, 35, 'Cristiano Kivelle', 'UA', 4, 545);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (33, 'F', 92, null, 30, 'Corina Attlee', 'RS', 32, 629);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (34, 'F', 82, null, 60, 'Michelina Beswetherick', 'NL', 57, 23);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (35, 'F', 48, null, 32, 'Amanda Rolley', 'IL', 81, 314);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (36, 'F', 2, null, 11, 'Tamera Gatland', 'IR', 4, 113);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (37, 'M', 94, null, 43, 'Gianni MacQueen', 'US', 29, 757);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (38, 'M', 30, null, 18, 'Crichton Moulster', 'AR', 4, 543);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (39, 'M', 33, null, 95, 'Culver Patry', 'HN', 65, 25);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (40, 'F', 98, null, 43, 'Velma Alsford', 'PT', 90, 558);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (41, 'F', 26, null, 55, 'Agnese Rabbage', 'BR', 82, 365);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (42, 'M', 54, null, 59, 'Wilbert Bertl', 'SE', 2, 471);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (43, 'F', 96, null, 50, 'Annabelle Jozefowicz', 'PL', 43, 831);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (44, 'F', 7, null, 21, 'Kali Paynes', 'BR', 11, 595);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (45, 'M', 33, null, 83, 'Mata Devonside', 'PH', 65, 506);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (46, 'M', 10, null, 14, 'Grant Casetta', 'SB', 14, 475);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (47, 'M', 31, null, 56, 'Barnaby Jonin', 'KZ', 86, 860);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (48, 'M', 65, null, 51, 'Erhart Cordall', 'VE', 78, 336);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (49, 'M', 37, null, 54, 'Johnny Robshaw', 'PT', 92, 194);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (50, 'F', 9, null, 25, 'Nanni Shoppee', 'CN', 99, 544);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (51, 'F', 46, null, 92, 'Kristal Midgley', 'CN', 33, 624);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (52, 'M', 74, null, 43, 'Brnaby Murthwaite', 'FR', 85, 873);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (53, 'F', 38, null, 46, 'Gilda Heigl', 'CA', 65, 235);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (54, 'F', 1, null, 89, 'Lorita Spaduzza', 'CN', 36, 580);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (55, 'F', 88, null, 10, 'Joyann Gottschalk', 'US', 79, 728);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (56, 'M', 86, null, 9, 'Erick McVey', 'BR', 24, 69);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (57, 'M', 55, null, 83, 'Evelin Bramley', 'PT', 82, 889);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (58, 'F', 33, null, 76, 'Helge Dobel', 'SE', 52, 222);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (59, 'F', 35, null, 22, 'Marci McPhillimey', 'TH', 35, 189);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (60, 'F', 4, null, 24, 'Hilary Twaits', 'ID', 80, 651);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (61, 'M', 43, null, 53, 'Brigham Scutts', 'BO', 32, 589);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (62, 'F', 7, null, 99, 'Alidia Brager', 'CN', 93, 619);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (63, 'F', 49, null, 2, 'Jeannine McKenzie', 'CN', 40, 148);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (64, 'M', 50, null, 87, 'Mick Macoun', 'CN', 77, 27);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (65, 'M', 69, null, 79, 'Hendrick Mc Cahey', 'FR', 29, 234);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (66, 'M', 26, null, 54, 'Pieter Hastilow', 'TZ', 5, 709);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (67, 'F', 82, null, 72, 'Maighdiln Aldrich', 'UA', 33, 560);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (68, 'F', 82, null, 57, 'Kaylil Cahn', 'CN', 62, 753);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (69, 'F', 65, null, 45, 'Keelia Hucke', 'PH', 36, 578);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (70, 'F', 50, null, 5, 'Hanny Dunsmore', 'CN', 15, 812);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (71, 'M', 23, null, 85, 'Carr Todarello', 'ID', 39, 810);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (72, 'M', 85, null, 28, 'Andrew Ilyas', 'CN', 68, 531);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (73, 'F', 98, null, 73, 'Evangeline Jantzen', 'SI', 58, 90);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (74, 'M', 36, null, 99, 'Eliot Casaccio', 'RU', 50, 458);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (75, 'F', 51, null, 4, 'Debera Tutchings', 'PT', 72, 230);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (76, 'F', 88, null, 13, 'Romy Ambrodi', 'CN', 52, 692);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (77, 'F', 89, null, 60, 'Olly Pergens', 'CN', 35, 183);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (78, 'F', 15, null, 11, 'Jorrie Bohler', 'PT', 52, 396);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (79, 'M', 40, null, 14, 'Glen Glason', 'CN', 41, 487);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (80, 'M', 17, null, 100, 'Clemens Acors', 'US', 99, 39);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (81, 'M', 76, null, 83, 'Christopher Penright', 'US', 28, 875);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (82, 'F', 29, null, 96, 'Tuesday Rumbold', 'NC', 23, 347);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (83, 'F', 69, null, 32, 'Faith Winters', 'AR', 16, 200);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (84, 'M', 51, null, 48, 'Godfry Blazek', 'CN', 98, 140);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (85, 'F', 36, null, 32, 'Kate Ellacombe', 'NC', 98, 509);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (86, 'F', 90, null, 51, 'Joycelin Kilgrew', 'US', 29, 216);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (87, 'F', 35, null, 100, 'Robby Hallatt', 'PL', 40, 330);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (88, 'M', 4, null, 38, 'Fraser Berrisford', 'PL', 78, 807);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (89, 'M', 56, null, 32, 'Gordon Tearney', 'RU', 15, 879);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (90, 'F', 32, null, 78, 'Gussie Greenside', 'DO', 14, 487);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (91, 'F', 65, null, 13, 'Mag Felkin', 'FI', 86, 86);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (92, 'F', 99, null, 70, 'Lynna Jedrzaszkiewicz', 'AR', 22, 276);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (93, 'M', 29, null, 40, 'Smith Stonhewer', 'ID', 80, 695);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (94, 'M', 37, null, 76, 'Allyn Vasquez', 'CN', 43, 146);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (95, 'F', 46, null, 37, 'Alethea Aish', 'PH', 28, 305);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (96, 'F', 19, null, 87, 'Ethelin Wreford', 'AR', 98, 365);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (97, 'M', 18, null, 13, 'Basil Doldon', 'DE', 87, 124);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (98, 'F', 37, null, 2, 'Elana Daout', 'RU', 47, 366);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (99, 'M', 74, null, 78, 'Flory Corradino', 'TZ', 12, 791);
insert into Points (Participant_ID, Gender_category, Event_ID, Penalty_points, Bonus_points, Participant_Name, Country_code, Special_points, Total_points) values (100, 'F', 71, null, 51, 'Horatia Harmes', 'CN', 39, 508);

insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2012, 'Moyra Lohoar', 'Ireland', 'ID', null, 989);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2010, 'Perren Elverston', 'South Africa', 'VE', null, 921);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2014, 'Karlie Hilland', 'China', 'FR', null, 928);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2018, 'Genvieve Steedman', 'Peru', 'CN', null, 909);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2012, 'Meredith Brosini', 'Vietnam', 'PE', null, 992);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2012, 'Rutledge Wooddisse', 'Peru', 'CN', null, 980);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2011, 'Herve Gallety', 'Ethiopia', 'ID', null, 913);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2016, 'Harriette Angeli', 'China', 'BR', null, 909);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2013, 'Dalli Calcutt', 'Ukraine', 'PS', null, 930);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2013, 'Romy Cornell', 'Philippines', 'ID', null, 931);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2017, 'Vivianna Middle', 'Sweden', 'CN', null, 944);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2012, 'Hanson Nutbrown', 'Ukraine', 'LY', null, 972);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2018, 'Sigrid Sammonds', 'China', 'MA', null, 999);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2020, 'Sampson Deverale', 'Pakistan', 'AR', null, 994);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2018, 'Concettina Coleborn', 'Dominican Republic', 'FR', null, 988);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2020, 'Frederick Upson', 'Thailand', 'RU', null, 917);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2013, 'Jae Vogt', 'Czech Republic', 'RS', null, 973);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2018, 'Alvinia Gery', 'Indonesia', 'CN', null, 976);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2017, 'Skyler Santostefano.', 'Brazil', 'UA', null, 926);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2019, 'Emile Poppleston', 'Portugal', 'VN', null, 980);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2013, 'Berty Sunnex', 'Indonesia', 'AF', null, 900);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2017, 'Tymon Strewther', 'Philippines', 'CA', null, 933);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2018, 'Bidget Dodds', 'Peru', 'CN', null, 959);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2013, 'Lombard Penwarden', 'Brazil', 'ID', null, 972);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2012, 'Merv Brunesco', 'Yemen', 'ZA', null, 961);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2016, 'Raimund Kittredge', 'Portugal', 'GL', null, 958);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2012, 'Sarene Aleevy', 'Brazil', 'CN', null, 934);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2017, 'Jeanette Thackham', 'Serbia', 'PT', null, 947);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2010, 'Creight McGarry', 'Kazakhstan', 'DE', null, 945);
insert into Country_ranking (Year, Championship_name, Country_name, Country_code, Country_flag, Average_points) values (2017, 'Alfy Maciaszek', 'Japan', 'UA', null, 921);

insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('ID', 2012, 'Moyra Lohoar', 'F', 'Moyra Lohoar', null, 989, 989);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('VE', 2010, 'Perren Elverston', 'M', 'Perren Elverston', null, 921, 921);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('FR', 2014, 'Karlie Hilland', 'F', 'Karlie Hilland', null, 928, 928);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('CN', 2018, 'Genvieve Steedman', 'F', 'Genvieve Steedman', null, 909, 909);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('PE', 2012, 'Meredith Brosini', 'M', 'Meredith Brosini', null, 992, 992);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('CN', 2012, 'Rutledge Wooddisse', 'M', 'Rutledge Wooddisse', null, 980, 980);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('ID', 2011, 'Herve Gallety', 'M', 'Herve Gallety', null, 913, 913);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('BR', 2016, 'Harriette Angeli', 'F', 'Harriette Angeli', null, 909, 909);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('PS', 2013, 'Dalli Calcutt', 'M', 'Dalli Calcutt', null, 930, 930);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('ID', 2013, 'Romy Cornell', 'F', 'Romy Cornell', null, 931, 931);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('CN', 2017, 'Vivianna Middle', 'F', 'Vivianna Middle', null, 944, 944);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('LY', 2012, 'Hanson Nutbrown', 'M', 'Hanson Nutbrown', null, 972, 972);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('MA', 2018, 'Sigrid Sammonds', 'F', 'Sigrid Sammonds', null, 999, 999);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('AR', 2020, 'Sampson Deverale', 'M', 'Sampson Deverale', null, 994, 994);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('FR', 2018, 'Concettina Coleborn', 'F', 'Concettina Coleborn', null, 988, 988);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('RU', 2020, 'Frederick Upson', 'M', 'Frederick Upson', null, 917, 917);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('RS', 2013, 'Jae Vogt', 'M', 'Jae Vogt', null, 973, 973);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('CN', 2018, 'Alvinia Gery', 'F', 'Alvinia Gery', null, 976, 976);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('UA', 2017, 'Skyler Santostefano.', 'M', 'Skyler Santostefano.', null, 926, 926);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('VN', 2019, 'Emile Poppleston', 'M', 'Emile Poppleston', null, 980, 980);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('AF', 2013, 'Berty Sunnex', 'F', 'Berty Sunnex', null, 900, 900);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('CA', 2017, 'Tymon Strewther', 'M', 'Tymon Strewther', null, 933, 933);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('CN', 2018, 'Bidget Dodds', 'F', 'Bidget Dodds', null, 959, 959);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('ID', 2013, 'Lombard Penwarden', 'M', 'Lombard Penwarden', null, 972, 972);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('ZA', 2012, 'Merv Brunesco', 'M', 'Merv Brunesco', null, 961, 961);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('GL', 2016, 'Raimund Kittredge', 'M', 'Raimund Kittredge', null, 958, 958);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('CN', 2012, 'Sarene Aleevy', 'F', 'Sarene Aleevy', null, 934, 934);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('PT', 2017, 'Jeanette Thackham', 'F', 'Jeanette Thackham', null, 947, 947);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('DE', 2010, 'Creight McGarry', 'M', 'Creight McGarry', null, 945, 945);
insert into Participants_ranking (Country_code, Year, Championship_name, Gender_category, Athlete_name, Country_flag, Distance_run, Participant_ranking) values ('UA', 2017, 'Alfy Maciaszek', 'M', 'Alfy Maciaszek', null, 921, 921);

insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (1, 'Bfpbvf', '2020-11-25', '3:16:32', 'Peru', 'Aricapampa', 'Seredeyskiy', 'cbsnews.com', 'M', 'wcroston0@angelfire.com', null, 9);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (2, 'Orbmbs', '2021-02-16', '4:17:48', 'Russia', 'Trudovoye', 'Regulice', 'shop-pro.jp', 'F', 'glangdridge1@purevolume.com', null, 6);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (3, 'Vtgbse', '2021-07-31', '0:53:33', 'China', 'Shuangxiqiao', 'Torrance', 'diigo.com', 'M', 'jmarvin2@cyberchimps.com', null, 9);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (4, 'Snbplk', '2021-06-19', '4:58:46', 'Czech Republic', 'Karviná', 'Hồ Xá', 'walmart.com', 'M', 'ctissington3@mac.com', null, 4);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (5, 'Pqodyd', '2021-04-02', '23:18:47', 'China', 'Honghe', 'Artemisa', 'typepad.com', 'F', 'csignore4@prlog.org', null, 4);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (6, 'Psnzah', '2020-11-19', '2:25:50', 'Madagascar', 'Tsiombe', 'Eaubonne', 'auda.org.au', 'F', 'olowell5@sogou.com', null, 1);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (7, 'Udpbth', '2021-02-27', '7:43:07', 'Russia', 'Valday', 'Zliten', 'wunderground.com', 'F', 'atheml6@hhs.gov', null, 5);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (8, 'Hmniqj', '2020-11-23', '8:06:23', 'Sweden', 'Bjuv', 'Humaitá', 'princeton.edu', 'M', 'lgrzesiewicz7@ycombinator.com', null, 5);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (9, 'Gkqhof', '2021-06-20', '11:13:45', 'Nigeria', 'Idah', 'Beslan', 'answers.com', 'F', 'gruckledge8@scientificamerican.com', null, 6);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (10, 'Pgylic', '2021-03-21', '1:11:48', 'Indonesia', 'Tinabogan', 'Longfengshan', 'virginia.edu', 'M', 'khanscombe9@networkadvertising.org', null, 2);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (11, 'Awqpeb', '2021-02-22', '5:26:28', 'Russia', 'Kolodeznyy', 'Munka-Ljungby', 'netlog.com', 'F', 'kmerrya@sciencedaily.com', null, 9);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (12, 'Prawmr', '2021-01-08', '22:05:18', 'Morocco', 'Casablanca', 'Terangun', 'google.de', 'M', 'hconstantb@sphinn.com', null, 1);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (13, 'Xhnhuq', '2021-08-06', '7:23:45', 'China', 'Luzhou', 'Shigony', 'yellowpages.com', 'F', 'jscotfurthc@virginia.edu', null, 8);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (14, 'Akcrut', '2021-03-10', '6:26:50', 'United States', 'Lubbock', 'Longquan', 'yolasite.com', 'M', 'chainged@loc.gov', null, 9);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (15, 'Jnljpp', '2021-07-25', '3:13:30', 'Portugal', 'Maganha', 'Särevere', 'dagondesign.com', 'F', 'mnieasse@dell.com', null, 6);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (16, 'Gpkgok', '2021-01-09', '10:30:48', 'Portugal', 'Pisões', 'Finiq', 'netscape.com', 'M', 'kpafff@gnu.org', null, 8);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (17, 'Xjgjtq', '2021-07-16', '10:54:32', 'Philippines', 'Hagonoy', 'Shaghat', 'arizona.edu', 'F', 'cchappelleg@archive.org', null, 8);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (18, 'Bhesfg', '2021-08-24', '4:00:14', 'Tunisia', 'Ben Arous', 'Mapiripán', 'seesaa.net', 'F', 'rwelsbyh@digg.com', null, 3);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (19, 'Sgfrsl', '2021-02-19', '16:21:53', 'Panama', 'Cusapín', 'Diadema', '123-reg.co.uk', 'F', 'properti@yelp.com', null, 2);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (20, 'Xhqmfe', '2020-12-09', '3:28:42', 'China', 'Lingdangge', 'Hyères', 'irs.gov', 'M', 'hsnaryj@wufoo.com', null, 9);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (21, 'Ceqbbd', '2021-04-01', '15:28:48', 'Indonesia', 'Pinara', 'Dmytrivka', 'csmonitor.com', 'M', 'halkerk@ocn.ne.jp', null, 7);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (22, 'Eewkcv', '2021-03-19', '20:23:59', 'Indonesia', 'Nangka', 'Xing’an', 'mashable.com', 'M', 'gpastorl@lulu.com', null, 9);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (23, 'Rtjckg', '2021-06-20', '4:47:35', 'China', 'Tanglag', 'Renxian', 'yahoo.com', 'F', 'ewindowsm@intel.com', null, 6);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (24, 'Qlecxp', '2020-11-25', '5:02:46', 'Brazil', 'Nortelândia', 'Dongbian', 'google.ru', 'F', 'smctavishn@imgur.com', null, 6);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (25, 'Dbgcxd', '2020-12-22', '4:43:28', 'China', 'Dianqian', 'Alvesta', 'github.com', 'F', 'aattawello@51.la', null, 8);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (26, 'Uwrhcn', '2020-11-25', '2:32:22', 'Thailand', 'Nong Kung Si', 'Guri i Zi', 'usda.gov', 'F', 'mscotsbrookp@cmu.edu', null, 1);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (27, 'Rwtltd', '2020-11-08', '6:40:26', 'Pakistan', 'Khadan Khāk', 'Ujung', 'dedecms.com', 'F', 'dholleworthq@nhs.uk', null, 3);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (28, 'Ldfiop', '2020-11-05', '17:30:26', 'Philippines', 'Tilik', 'Florencia', 'archive.org', 'M', 'acurteisr@dedecms.com', null, 3);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (29, 'Ayeokm', '2021-08-06', '10:48:49', 'Indonesia', 'Mojorejo', 'Poá', 'mysql.com', 'M', 'mrawsthornes@google.com', null, 6);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (30, 'Rmeuni', '2021-05-16', '6:26:01', 'China', 'Bailang', 'Passos', 'sciencedaily.com', 'F', 'nstatet@jimdo.com', null, 8);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (31, 'Ffygrx', '2020-12-05', '1:31:38', 'Brazil', 'Osvaldo Cruz', 'Haozigang', 'stumbleupon.com', 'M', 'cfiggeu@merriam-webster.com', null, 4);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (32, 'Tfudgp', '2021-07-25', '7:45:27', 'Philippines', 'Bonga', 'Krasnoye', 'ezinearticles.com', 'M', 'awrightemv@about.me', null, 5);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (33, 'Lxxwbn', '2021-10-01', '10:41:03', 'Canada', 'Sutton', 'Creil', 'jimdo.com', 'F', 'hbraddonw@cdc.gov', null, 6);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (34, 'Iecwmp', '2020-12-25', '11:43:55', 'Iran', 'Ravānsar', 'Nueva Helvecia', 'senate.gov', 'M', 'cmeachx@i2i.jp', null, 7);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (35, 'Igmkxj', '2020-12-16', '22:31:46', 'Russia', 'Rostov-na-Donu', 'Yagoua', 'comsenz.com', 'M', 'hgouniny@blinklist.com', null, 1);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (36, 'Aryobe', '2020-11-25', '5:16:32', 'Thailand', 'Kamphaeng Phet', 'Paraty', 'nsw.gov.au', 'M', 'bshiltonz@java.com', null, 2);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (37, 'Fayrpf', '2021-10-06', '17:30:23', 'United States', 'San Antonio', 'Quxi', 'europa.eu', 'F', 'sstrike10@soundcloud.com', null, 1);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (38, 'Oxltyl', '2021-06-20', '16:48:58', 'Indonesia', 'Teluksantong', 'Al Ḩashwah', 'alibaba.com', 'M', 'gredwin11@tinyurl.com', null, 4);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (39, 'Hywcim', '2021-09-19', '20:12:52', 'Ukraine', 'Konotop', 'Washington', 'bloglines.com', 'F', 'mklement12@arstechnica.com', null, 2);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (40, 'Odvgkb', '2021-04-16', '18:22:56', 'Malaysia', 'Kuala Lumpur', 'Matanzas', 'ehow.com', 'M', 'gforan13@meetup.com', null, 5);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (41, 'Ensdrg', '2021-09-22', '8:45:25', 'United States', 'Tucson', 'Río Blanco', 'hatena.ne.jp', 'M', 'gbampkin14@lycos.com', null, 5);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (42, 'Dvjyqg', '2020-12-06', '21:30:20', 'Pakistan', 'Bahāwalnagar', 'Baita', 'marriott.com', 'F', 'epitkaithly15@wikispaces.com', null, 9);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (43, 'Draujh', '2021-08-11', '20:29:32', 'China', 'Partang', 'Stockholm', 'amazonaws.com', 'M', 'abusen16@google.de', null, 4);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (44, 'Teisdx', '2021-07-10', '18:39:42', 'Serbia', 'Senta', 'Cedry Wielkie', 'addthis.com', 'M', 'adumphrey17@techcrunch.com', null, 7);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (45, 'Obztsu', '2021-07-30', '12:40:57', 'France', 'Saint-Jean-de-Braye', 'Västervik', 'alexa.com', 'M', 'fbaudrey18@mysql.com', null, 3);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (46, 'Ltnadn', '2021-05-04', '3:39:50', 'Indonesia', 'Krajan Baru', 'Kabale', 'hao123.com', 'M', 'dscothorne19@columbia.edu', null, 8);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (47, 'Obhdxj', '2021-03-04', '22:44:00', 'Philippines', 'Guiniculalay', 'Temperak', 'g.co', 'F', 'mbranson1a@cbsnews.com', null, 2);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (48, 'Puwrie', '2021-06-03', '20:52:32', 'Dominican Republic', 'Gonzalo', 'Saint-Laurent-Blangy', 'csmonitor.com', 'F', 'hleetham1b@macromedia.com', null, 8);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (49, 'Ywgzof', '2021-07-06', '11:57:53', 'Switzerland', 'Zürich', 'Bukal', 'miitbeian.gov.cn', 'F', 'vbertram1c@dmoz.org', null, 6);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (50, 'Mxtwbt', '2021-01-25', '7:48:06', 'Sweden', 'Osby', 'Tseel', 'marketwatch.com', 'F', 'jkunzelmann1d@netlog.com', null, 1);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (51, 'Qhyayq', '2021-08-02', '23:39:15', 'Indonesia', 'Leran', 'Blois', 'issuu.com', 'F', 'lwoolstenholmes1e@amazon.de', null, 8);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (52, 'Cxwyap', '2020-11-07', '8:37:33', 'Honduras', 'San José de Colinas', 'Nizhnyaya Salda', 'mozilla.com', 'F', 'hlawrence1f@hexun.com', null, 2);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (53, 'Wgavnf', '2021-09-17', '6:28:44', 'United States', 'High Point', 'Trzcinica', 'wordpress.org', 'F', 'odavenall1g@usnews.com', null, 5);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (54, 'Kcrxpn', '2021-05-24', '0:06:47', 'Indonesia', 'Kadugedong', 'Donglu', 'hubpages.com', 'F', 'glavender1h@salon.com', null, 1);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (55, 'Vsdale', '2021-04-22', '14:39:04', 'Indonesia', 'Lonpao Dajah', 'Dengteke', 'ucla.edu', 'M', 'epencott1i@nyu.edu', null, 3);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (56, 'Zfbwdq', '2021-07-18', '12:10:46', 'Guatemala', 'San Miguel Ixtahuacán', 'Klukeng', 'marketwatch.com', 'M', 'cmccaughan1j@amazonaws.com', null, 4);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (57, 'Nybpwt', '2021-01-31', '18:33:31', 'France', 'Cagnes-sur-Mer', 'Valencia', 'newsvine.com', 'F', 'rkaysor1k@arizona.edu', null, 5);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (58, 'Jixlvr', '2021-05-10', '1:05:45', 'Indonesia', 'Sadang Kulon', 'Bojongbenteng', 'buzzfeed.com', 'F', 'lbucktharp1l@cafepress.com', null, 9);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (59, 'Bidxcr', '2021-05-13', '18:57:37', 'Portugal', 'Castelo', 'Chixi', 'chicagotribune.com', 'F', 'ttollfree1m@indiatimes.com', null, 6);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (60, 'Ujowfs', '2021-09-28', '20:13:57', 'Russia', 'Karabash', 'Świętochłowice', 'google.com.au', 'F', 'afincken1n@ft.com', null, 5);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (61, 'Abrtuf', '2021-01-25', '4:05:29', 'Kazakhstan', 'Komsomolets', 'Prigi', 'php.net', 'F', 'crowbury1o@163.com', null, 2);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (62, 'Ixhzvt', '2021-04-17', '2:36:14', 'Philippines', 'Paulba', 'Novi Karlovci', 'pen.io', 'M', 'blowten1p@fotki.com', null, 9);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (63, 'Sndaol', '2021-01-15', '0:03:41', 'Kazakhstan', 'Oktyabr’sk', 'Karangturi', '360.cn', 'M', 'pcaen1q@tripod.com', null, 1);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (64, 'Fkntyk', '2021-10-19', '15:36:56', 'Russia', 'Pizhanka', 'Rovensko pod Troskami', 'tripod.com', 'M', 'bbalfe1r@paginegialle.it', null, 8);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (65, 'Qffshe', '2020-12-08', '19:45:44', 'Mozambique', 'Quelimane', 'São Torcato', 'newsvine.com', 'F', 'ecolerick1s@acquirethisname.com', null, 2);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (66, 'Vwiwob', '2021-10-03', '1:50:24', 'Kazakhstan', 'Koktal', 'Pandasan', 'ycombinator.com', 'M', 'erodolfi1t@wiley.com', null, 2);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (67, 'Tmtgvr', '2021-03-31', '20:09:25', 'Paraguay', 'Caazapá', 'Mandikbatu', 'yandex.ru', 'M', 'ssweeten1u@irs.gov', null, 4);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (68, 'Khswkl', '2021-02-23', '13:25:10', 'China', 'Wantan', 'Estância', 'ifeng.com', 'M', 'pspybey1v@miitbeian.gov.cn', null, 5);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (69, 'Fbnnwc', '2020-12-27', '0:19:17', 'China', 'Huyang', 'Tijão', 'upenn.edu', 'M', 'rburn1w@cargocollective.com', null, 9);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (70, 'Ppzweo', '2021-04-25', '1:54:42', 'Philippines', 'Andop', 'Ningyang', 'geocities.jp', 'M', 'kcorsham1x@dailymail.co.uk', null, 7);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (71, 'Doamkf', '2021-08-07', '13:08:07', 'China', 'Piancheng', 'Pandak', 'cbc.ca', 'M', 'lbiscomb1y@uiuc.edu', null, 1);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (72, 'Sdbopl', '2021-07-28', '2:58:18', 'China', 'Shifan', 'Nevyts’ke', '360.cn', 'F', 'rhuyche1z@senate.gov', null, 3);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (73, 'Gpkptx', '2021-08-27', '4:05:14', 'Vietnam', 'Nghi Xuân', 'Shinpokh', 'harvard.edu', 'F', 'lryland20@timesonline.co.uk', null, 5);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (74, 'Srdban', '2021-03-06', '18:54:52', 'Nigeria', 'Mando', 'Pathum Thani', 'nps.gov', 'F', 'yoverell21@nature.com', null, 7);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (75, 'Bphmaq', '2021-09-14', '15:01:38', 'Philippines', 'Buenavista', 'Chambly', 'webeden.co.uk', 'F', 'ggreenin22@diigo.com', null, 6);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (76, 'Wlhwqr', '2021-01-02', '2:21:59', 'Mongolia', 'Erdenet', 'Prince Albert', 'studiopress.com', 'M', 'gquartly23@loc.gov', null, 3);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (77, 'Ssedsg', '2020-12-14', '8:27:47', 'Russia', 'Sloboda', 'Baishi', 'sina.com.cn', 'F', 'mskipsey24@miibeian.gov.cn', null, 3);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (78, 'Rrkogd', '2021-03-27', '16:10:42', 'Portugal', 'Manique de Baixo', 'Quỳ Châu', 'guardian.co.uk', 'M', 'lakehurst25@pcworld.com', null, 6);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (79, 'Tqdwhg', '2020-12-04', '15:35:34', 'Haiti', 'Corail', 'Sibreh', 'netlog.com', 'F', 'ebaswall26@de.vu', null, 2);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (80, 'Sduxsx', '2021-05-17', '23:26:15', 'Peru', 'Yanac', 'Drammen', 'cornell.edu', 'F', 'farmitage27@spotify.com', null, 3);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (81, 'Jblbcn', '2021-06-21', '10:34:11', 'Ukraine', 'Sofiyivka', 'Shenavan', 'ifeng.com', 'F', 'rstreight28@photobucket.com', null, 2);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (82, 'Xwfags', '2021-06-21', '17:23:56', 'Indonesia', 'Pasirmukti', 'Ratchathewi', 'eepurl.com', 'M', 'pjanway29@apache.org', null, 2);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (83, 'Rohone', '2021-04-29', '10:13:56', 'China', 'Xianlin', 'Luojiaping', 'slate.com', 'M', 'hbraxton2a@sphinn.com', null, 4);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (84, 'Muhukk', '2021-05-20', '12:34:18', 'Syria', 'كاف الجاع', 'Moses', 'nsw.gov.au', 'F', 'bdur2b@histats.com', null, 7);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (85, 'Ltljcw', '2021-05-16', '6:16:01', 'Palestinian Territory', 'Aţ Ţaybah', 'Satsumasendai', 'noaa.gov', 'F', 'myitzovicz2c@utexas.edu', null, 8);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (86, 'Qicexv', '2021-05-05', '3:27:58', 'Panama', 'Veracruz', 'Balboa', 'census.gov', 'F', 'jquene2d@vimeo.com', null, 2);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (87, 'Yzmqdy', '2021-06-02', '21:02:20', 'Brazil', 'Juiz de Fora', 'Ta Phraya', 'a8.net', 'M', 'tklaessen2e@walmart.com', null, 3);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (88, 'Pxwcol', '2020-11-24', '18:39:05', 'Bolivia', 'Santa Cruz de la Sierra', 'Desakolot', 'qq.com', 'M', 'gpude2f@yelp.com', null, 8);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (89, 'Dlfokc', '2021-06-11', '5:03:04', 'China', 'Jielong', 'Dār an Naşr', 'plala.or.jp', 'M', 'ggolling2g@wufoo.com', null, 9);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (90, 'Ammmxk', '2021-02-01', '17:22:41', 'Poland', 'Purda', 'Onitsha', 'forbes.com', 'F', 'klowdeane2h@netscape.com', null, 7);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (91, 'Wkkjdp', '2021-06-23', '13:52:29', 'Albania', 'Cukalat', 'Selat', 'etsy.com', 'F', 'julyatt2i@fda.gov', null, 6);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (92, 'Fzkcgv', '2021-09-03', '10:45:50', 'Indonesia', 'Ngkiong', 'Umeå', 'merriam-webster.com', 'F', 'soffen2j@naver.com', null, 2);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (93, 'Ukupjc', '2021-07-13', '15:02:24', 'Pakistan', 'Athmuqam', 'Tangjiawan', 'dell.com', 'M', 'ldocksey2k@csmonitor.com', null, 5);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (94, 'Dzbsmd', '2021-10-05', '11:12:40', 'South Africa', 'Mthatha', 'Tangjiakou', 'nbcnews.com', 'F', 'jpeddersen2l@miibeian.gov.cn', null, 6);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (95, 'Ajcoxw', '2021-05-30', '7:15:07', 'Denmark', 'København', 'Rēzekne', 'drupal.org', 'F', 'wbowle2m@github.com', null, 5);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (96, 'Wdtpct', '2021-02-19', '12:10:08', 'China', 'Guoduwan', 'Zudun', 'whitehouse.gov', 'M', 'gquibell2n@bandcamp.com', null, 4);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (97, 'Hwejzi', '2021-09-29', '16:26:27', 'China', 'Xiache', 'Krasnogorskoye', 'intel.com', 'M', 'tchadd2o@si.edu', null, 2);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (98, 'Hkuiih', '2021-01-08', '4:17:55', 'Pakistan', 'Faruka', 'Dongshangen', 'nationalgeographic.com', 'M', 'jphilot2p@huffingtonpost.com', null, 7);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (99, 'Lkojva', '2021-06-21', '14:19:06', 'South Korea', 'Sindong', 'Rano', 'hubpages.com', 'M', 'soscollee2q@ycombinator.com', null, 5);
insert into Events (Event_ID, Event_name, Date_of_event, Time_of_the_event, Country, City, Venue_of_the_event, Result_link, Category, Contact_person_email, Additional_info, Previous_edition) values (100, 'Ycxotg', '2021-09-13', '13:38:33', 'Puerto Rico', 'San Juan', 'Chama', 'moonfruit.com', 'F', 'ksoldner2r@usnews.com', null, 2);

insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (1, 1, 'Moyra Lohoar', 'F', 'Ireland', 170, '2021-04-15', 48);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (2, 2, 'Perren Elverston', 'M', 'South Africa', 113, '2021-06-22', 80);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (3, 3, 'Karlie Hilland', 'F', 'China', 141, '2021-05-17', 53);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (4, 4, 'Genvieve Steedman', 'F', 'Peru', 129, '2021-04-10', 29);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (5, 5, 'Meredith Brosini', 'M', 'Vietnam', 177, '2021-06-08', 39);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (6, 6, 'Rutledge Wooddisse', 'M', 'Peru', 189, '2021-08-07', 44);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (7, 7, 'Herve Gallety', 'M', 'Ethiopia', 138, '2021-10-18', 60);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (8, 8, 'Harriette Angeli', 'F', 'China', 116, '2020-12-21', 77);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (9, 9, 'Dalli Calcutt', 'M', 'Ukraine', 194, '2020-11-07', 54);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (10, 10, 'Romy Cornell', 'F', 'Philippines', 85, '2021-07-05', 57);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (11, 11, 'Vivianna Middle', 'F', 'Sweden', 133, '2021-08-27', 30);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (12, 12, 'Hanson Nutbrown', 'M', 'Ukraine', 128, '2021-08-21', 49);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (13, 13, 'Sigrid Sammonds', 'F', 'China', 190, '2021-09-24', 34);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (14, 14, 'Sampson Deverale', 'M', 'Pakistan', 135, '2021-05-05', 72);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (15, 15, 'Concettina Coleborn', 'F', 'Dominican Republic', 109, '2021-01-02', 15);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (16, 16, 'Frederick Upson', 'M', 'Thailand', 183, '2020-12-24', 17);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (17, 17, 'Jae Vogt', 'M', 'Czech Republic', 124, '2020-11-15', 19);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (18, 18, 'Alvinia Gery', 'F', 'Indonesia', 132, '2021-06-06', 63);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (19, 19, 'Skyler Santostefano.', 'M', 'Brazil', 82, '2021-01-04', 63);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (20, 20, 'Emile Poppleston', 'M', 'Portugal', 140, '2021-06-01', 43);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (21, 21, 'Berty Sunnex', 'F', 'Indonesia', 86, '2021-06-06', 70);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (22, 22, 'Tymon Strewther', 'M', 'Philippines', 90, '2021-09-30', 42);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (23, 23, 'Bidget Dodds', 'F', 'Peru', 131, '2020-11-04', 67);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (24, 24, 'Lombard Penwarden', 'M', 'Brazil', 169, '2020-12-11', 69);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (25, 25, 'Merv Brunesco', 'M', 'Yemen', 93, '2021-07-10', 61);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (26, 26, 'Raimund Kittredge', 'M', 'Portugal', 127, '2021-09-18', 41);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (27, 27, 'Sarene Aleevy', 'F', 'Brazil', 176, '2020-12-25', 32);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (28, 28, 'Jeanette Thackham', 'F', 'Serbia', 96, '2021-07-02', 58);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (29, 29, 'Creight McGarry', 'M', 'Kazakhstan', 166, '2021-06-20', 77);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (30, 30, 'Alfy Maciaszek', 'M', 'Japan', 150, '2021-07-07', 38);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (31, 31, 'Maybelle Blincow', 'F', 'China', 177, '2021-05-28', 41);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (32, 32, 'Cristiano Kivelle', 'M', 'Russia', 127, '2021-02-26', 41);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (33, 33, 'Corina Attlee', 'F', 'Cyprus', 110, '2021-10-06', 55);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (34, 34, 'Michelina Beswetherick', 'F', 'Luxembourg', 86, '2021-05-29', 77);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (35, 35, 'Amanda Rolley', 'F', 'Sweden', 128, '2021-03-08', 61);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (36, 36, 'Tamera Gatland', 'F', 'Albania', 142, '2020-11-09', 61);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (37, 37, 'Gianni MacQueen', 'M', 'Russia', 150, '2021-08-07', 67);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (38, 38, 'Crichton Moulster', 'M', 'China', 142, '2021-03-15', 21);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (39, 39, 'Culver Patry', 'M', 'Philippines', 190, '2020-10-26', 52);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (40, 40, 'Velma Alsford', 'F', 'Russia', 138, '2021-07-07', 54);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (41, 41, 'Agnese Rabbage', 'F', 'Egypt', 174, '2020-11-13', 62);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (42, 42, 'Wilbert Bertl', 'M', 'Greece', 177, '2021-07-07', 32);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (43, 43, 'Annabelle Jozefowicz', 'F', 'China', 143, '2020-11-16', 15);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (44, 44, 'Kali Paynes', 'F', 'United States', 136, '2020-12-10', 34);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (45, 45, 'Mata Devonside', 'M', 'Colombia', 96, '2021-04-29', 31);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (46, 46, 'Grant Casetta', 'M', 'Thailand', 140, '2021-10-16', 75);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (47, 47, 'Barnaby Jonin', 'M', 'China', 172, '2021-07-19', 68);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (48, 48, 'Erhart Cordall', 'M', 'Philippines', 105, '2020-12-03', 25);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (49, 49, 'Johnny Robshaw', 'M', 'Portugal', 107, '2021-03-31', 79);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (50, 50, 'Nanni Shoppee', 'F', 'Portugal', 175, '2021-05-10', 58);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (51, 51, 'Kristal Midgley', 'F', 'Colombia', 119, '2021-03-14', 48);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (52, 52, 'Brnaby Murthwaite', 'M', 'Philippines', 124, '2020-10-28', 15);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (53, 53, 'Gilda Heigl', 'F', 'Mexico', 140, '2021-06-30', 46);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (54, 54, 'Lorita Spaduzza', 'F', 'China', 125, '2021-03-31', 16);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (55, 55, 'Joyann Gottschalk', 'F', 'Norway', 126, '2020-11-17', 59);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (56, 56, 'Erick McVey', 'M', 'Sweden', 148, '2020-11-07', 55);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (57, 57, 'Evelin Bramley', 'M', 'Philippines', 85, '2021-01-30', 55);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (58, 58, 'Helge Dobel', 'F', 'Peru', 168, '2021-07-20', 38);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (59, 59, 'Marci McPhillimey', 'F', 'Malaysia', 141, '2021-09-22', 48);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (60, 60, 'Hilary Twaits', 'F', 'Indonesia', 179, '2020-11-18', 30);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (61, 61, 'Brigham Scutts', 'M', 'South Africa', 86, '2021-04-28', 16);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (62, 62, 'Alidia Brager', 'F', 'Armenia', 198, '2020-12-30', 74);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (63, 63, 'Jeannine McKenzie', 'F', 'France', 145, '2021-03-31', 23);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (64, 64, 'Mick Macoun', 'M', 'Brazil', 140, '2021-08-21', 28);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (65, 65, 'Hendrick Mc Cahey', 'M', 'Canada', 118, '2021-03-13', 20);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (66, 66, 'Pieter Hastilow', 'M', 'Mali', 86, '2021-03-24', 78);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (67, 67, 'Maighdiln Aldrich', 'F', 'China', 142, '2020-12-22', 74);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (68, 68, 'Kaylil Cahn', 'F', 'Zambia', 162, '2021-06-02', 52);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (69, 69, 'Keelia Hucke', 'F', 'China', 117, '2021-07-31', 16);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (70, 70, 'Hanny Dunsmore', 'F', 'China', 189, '2020-11-29', 67);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (71, 71, 'Carr Todarello', 'M', 'Armenia', 197, '2021-08-26', 31);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (72, 72, 'Andrew Ilyas', 'M', 'Indonesia', 106, '2021-08-09', 40);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (73, 73, 'Evangeline Jantzen', 'F', 'Indonesia', 113, '2021-06-15', 71);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (74, 74, 'Eliot Casaccio', 'M', 'Russia', 136, '2021-06-09', 57);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (75, 75, 'Debera Tutchings', 'F', 'South Africa', 191, '2021-01-08', 43);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (76, 76, 'Romy Ambrodi', 'F', 'China', 103, '2020-12-17', 58);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (77, 77, 'Olly Pergens', 'F', 'Sweden', 139, '2021-07-24', 69);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (78, 78, 'Jorrie Bohler', 'F', 'Kosovo', 151, '2021-08-01', 57);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (79, 79, 'Glen Glason', 'M', 'Palau', 157, '2021-08-27', 60);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (80, 80, 'Clemens Acors', 'M', 'Canada', 179, '2021-09-17', 65);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (81, 81, 'Christopher Penright', 'M', 'Indonesia', 200, '2021-09-27', 68);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (82, 82, 'Tuesday Rumbold', 'F', 'Yemen', 128, '2021-10-04', 49);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (83, 83, 'Faith Winters', 'F', 'China', 111, '2020-11-24', 36);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (84, 84, 'Godfry Blazek', 'M', 'China', 183, '2020-11-01', 47);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (85, 85, 'Kate Ellacombe', 'F', 'Brazil', 173, '2021-01-10', 21);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (86, 86, 'Joycelin Kilgrew', 'F', 'Bangladesh', 106, '2021-07-12', 53);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (87, 87, 'Robby Hallatt', 'F', 'Italy', 182, '2021-07-21', 15);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (88, 88, 'Fraser Berrisford', 'M', 'Japan', 94, '2021-02-08', 30);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (89, 89, 'Gordon Tearney', 'M', 'Indonesia', 109, '2021-03-27', 21);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (90, 90, 'Gussie Greenside', 'F', 'Armenia', 120, '2021-01-13', 25);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (91, 91, 'Mag Felkin', 'F', 'China', 150, '2021-03-11', 28);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (92, 92, 'Lynna Jedrzaszkiewicz', 'F', 'Poland', 100, '2021-08-23', 45);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (93, 93, 'Smith Stonhewer', 'M', 'Portugal', 140, '2021-03-05', 42);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (94, 94, 'Allyn Vasquez', 'M', 'Japan', 87, '2021-08-02', 50);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (95, 95, 'Alethea Aish', 'F', 'China', 98, '2021-05-03', 25);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (96, 96, 'Ethelin Wreford', 'F', 'China', 145, '2021-01-21', 33);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (97, 97, 'Basil Doldon', 'M', 'China', 93, '2021-07-14', 42);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (98, 98, 'Elana Daout', 'F', 'Indonesia', 151, '2021-10-15', 70);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (99, 99, 'Flory Corradino', 'M', 'Brazil', 103, '2021-02-02', 78);
insert into Participants (Participant_ID, Team_ID, Participant_name, Gender_category, Country, Height, Date_of_birth, age) values (100, 100, 'Horatia Harmes', 'F', 'Poland', 149, '2021-06-18', 17);

insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('wcroston0@angelfire.com', 'Niki McKea');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('glangdridge1@purevolume.com', 'Hollyanne Whellans');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('jmarvin2@cyberchimps.com', 'Terrijo Storey');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('ctissington3@mac.com', 'Penny Vlach');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('csignore4@prlog.org', 'Stevy Wieprecht');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('olowell5@sogou.com', 'Petey Prettjohn');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('atheml6@hhs.gov', 'Aldrich Dulinty');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('lgrzesiewicz7@ycombinator.com', 'Thorsten Caddell');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('gruckledge8@scientificamerican.com', 'Martainn Fontanet');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('khanscombe9@networkadvertising.org', 'Matthiew Tanby');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('kmerrya@sciencedaily.com', 'Emmit Speachley');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('hconstantb@sphinn.com', 'Carlo Dennes');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('jscotfurthc@virginia.edu', 'Bethanne Gandrich');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('chainged@loc.gov', 'Shawn Charke');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('mnieasse@dell.com', 'Ariella Maleham');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('kpafff@gnu.org', 'Gallagher Elliman');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('cchappelleg@archive.org', 'Bette Beatson');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('rwelsbyh@digg.com', 'Imogene Dungay');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('properti@yelp.com', 'Currie Dammarell');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('hsnaryj@wufoo.com', 'Marline Antczak');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('halkerk@ocn.ne.jp', 'Myrtle Sewell');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('gpastorl@lulu.com', 'Granthem McGaughay');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('ewindowsm@intel.com', 'Joscelin Kynvin');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('smctavishn@imgur.com', 'Margalo Linstead');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('aattawello@51.la', 'Linzy Lampet');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('mscotsbrookp@cmu.edu', 'Brice Mullins');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('dholleworthq@nhs.uk', 'Tally Shapero');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('acurteisr@dedecms.com', 'Gerhardine Barkus');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('mrawsthornes@google.com', 'Jamesy Gonet');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('nstatet@jimdo.com', 'Ashlen Hillin');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('cfiggeu@merriam-webster.com', 'Gardener Copperwaite');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('awrightemv@about.me', 'Toddie Kingscote');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('hbraddonw@cdc.gov', 'Alisun Balint');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('cmeachx@i2i.jp', 'Ruth Exrol');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('hgouniny@blinklist.com', 'Xenos Sawrey');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('bshiltonz@java.com', 'Petronille Whittock');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('sstrike10@soundcloud.com', 'Cherise Jeske');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('gredwin11@tinyurl.com', 'Kit Valadez');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('mklement12@arstechnica.com', 'Meghan Stubbeley');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('gforan13@meetup.com', 'Faulkner Pinshon');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('gbampkin14@lycos.com', 'Yorgo Blemings');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('epitkaithly15@wikispaces.com', 'Bertha Dulling');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('abusen16@google.de', 'Alexine McMakin');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('adumphrey17@techcrunch.com', 'Constantine Coffin');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('fbaudrey18@mysql.com', 'Bax Fackrell');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('dscothorne19@columbia.edu', 'Morten Symers');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('mbranson1a@cbsnews.com', 'Fancy Norsworthy');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('hleetham1b@macromedia.com', 'Quentin Shuxsmith');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('vbertram1c@dmoz.org', 'Adolphe Fortin');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('jkunzelmann1d@netlog.com', 'Winni Sustins');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('lwoolstenholmes1e@amazon.de', 'Wittie Seivertsen');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('hlawrence1f@hexun.com', 'Niki Hurburt');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('odavenall1g@usnews.com', 'Aland Lintot');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('glavender1h@salon.com', 'Bette D''Onisi');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('epencott1i@nyu.edu', 'Corbin Meneux');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('cmccaughan1j@amazonaws.com', 'Aloysia Piperley');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('rkaysor1k@arizona.edu', 'Ardelis Banting');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('lbucktharp1l@cafepress.com', 'Lea Densell');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('ttollfree1m@indiatimes.com', 'Gertrudis Marns');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('afincken1n@ft.com', 'Carmen Rickertsen');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('crowbury1o@163.com', 'Myer Merioth');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('blowten1p@fotki.com', 'Vaughan Ives');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('pcaen1q@tripod.com', 'Carilyn Geator');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('bbalfe1r@paginegialle.it', 'Bellanca Hillborne');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('ecolerick1s@acquirethisname.com', 'Luce Janczyk');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('erodolfi1t@wiley.com', 'Alberta Withams');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('ssweeten1u@irs.gov', 'Saundra Sawell');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('pspybey1v@miitbeian.gov.cn', 'Ernesta Lundy');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('rburn1w@cargocollective.com', 'Andra Flanaghan');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('kcorsham1x@dailymail.co.uk', 'Ricard Ashpole');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('lbiscomb1y@uiuc.edu', 'Orsola Confait');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('rhuyche1z@senate.gov', 'Anatole Verling');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('lryland20@timesonline.co.uk', 'Dougie Casini');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('yoverell21@nature.com', 'Rutger Tapsfield');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('ggreenin22@diigo.com', 'Druci Gadsdon');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('gquartly23@loc.gov', 'Marje Hallad');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('mskipsey24@miibeian.gov.cn', 'Esmaria Cain');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('lakehurst25@pcworld.com', 'Isidro Hakes');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('ebaswall26@de.vu', 'Marilin Tabner');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('farmitage27@spotify.com', 'Joseito Ranking');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('rstreight28@photobucket.com', 'Rhiamon Dudson');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('pjanway29@apache.org', 'Frants Skinner');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('hbraxton2a@sphinn.com', 'Basile Lyons');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('bdur2b@histats.com', 'Ichabod Sproat');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('myitzovicz2c@utexas.edu', 'Netty Stonebanks');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('jquene2d@vimeo.com', 'Nicol Chave');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('tklaessen2e@walmart.com', 'Melvin Ugolotti');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('gpude2f@yelp.com', 'Zorine Phorsby');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('ggolling2g@wufoo.com', 'Emmalynne Congreve');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('klowdeane2h@netscape.com', 'Geno Loche');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('julyatt2i@fda.gov', 'Granville Caudrelier');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('soffen2j@naver.com', 'Danya Pretswell');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('ldocksey2k@csmonitor.com', 'Lindon Lattie');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('jpeddersen2l@miibeian.gov.cn', 'Sibylle Foxon');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('wbowle2m@github.com', 'Alvera Witheford');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('gquibell2n@bandcamp.com', 'Tome Tapton');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('tchadd2o@si.edu', 'Yurik Chstney');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('jphilot2p@huffingtonpost.com', 'Jean Narup');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('soscollee2q@ycombinator.com', 'Kassia Druett');
insert into Event_contact_person (Contact_person_email, Contact_person_name) values ('ksoldner2r@usnews.com', 'Jeth Sturges');

insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Hytvahv', 'Cardguard', 'General Emilio Aguinaldo', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Olqzguu', 'Voltsillam', 'Vilarinho', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Wvyczvh', 'Flowdesk', 'Zhili', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Fpkpypp', 'Domainer', 'Västra Frölunda', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Ywtdgld', 'Asoka', 'Beixiang', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Uwxlzji', 'Rank', 'Asopía', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Lvrmlwt', 'Vagram', 'Rasūlnagar', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Vtugzbg', 'Greenlam', 'Yag La', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Ijxlerx', 'Regrant', 'Cikajang', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Fxglzkm', 'Andalax', 'Tyvriv', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Xodxhvt', 'Toughjoyfax', 'Milwaukee', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Inoogar', 'Zaam-Dox', 'Xiadu', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Zelwrxk', 'Tin', 'Grati Satu', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Xworzor', 'Biodex', 'Kilifarevo', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Doaagrk', 'Konklux', 'Lamak', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Pbycpfa', 'Alpha', 'Fenggang', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Xiyhmht', 'Holdlamis', 'Taipa', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Sisojlm', 'Ventosanzap', 'Serra', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Eqkvojt', 'Andalax', 'Wasagu', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Yqokzlq', 'Kanlam', 'Chang’an', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Covitut', 'Y-Solowarm', 'Qinglung', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Oordbss', 'Keylex', 'Iwanai', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Pgjbvhl', 'Tampflex', 'Куклиш', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Hcebwrl', 'Wrapsafe', 'Pavlysh', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Mqsalto', 'Opela', 'Shaxi', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Evodqxo', 'Latlux', 'Santo Domingo', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Oklqqfj', 'Cookley', 'Guoduwan', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Gjenolh', 'Sonair', 'Ondores', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Ouupjws', 'Span', 'Kabo', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Hucqlyv', 'Voltsillam', 'El Ksour', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Kzqcwvr', 'Rank', 'Maranura', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Ovwxosp', 'Bigtax', 'Jilong', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Acbckkb', 'Konklux', 'Gadon', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Udorkwm', 'Regrant', 'Siruma', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Acquywj', 'Solarbreeze', 'Buur Gaabo', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Fbdhwkm', 'Otcom', 'Mölndal', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Qqojxhk', 'Vagram', 'Старо Нагоричане', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Fefpqvi', 'Holdlamis', 'Surenavan', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Xvfltgp', 'Tempsoft', 'Morcolla', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Rpkbsof', 'Tin', 'Utara', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Cmaeoab', 'Temp', 'Legok', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Oekjojb', 'Otcom', 'Birmingham', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Amxawmf', 'Zontrax', 'København', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Xjqoffa', 'Tempsoft', 'Shanxiahu', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Pgsxmoq', 'Tin', 'Magburaka', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Hchpycy', 'Alpha', 'Maunuri', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Cyrisdu', 'Vagram', 'Padang', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Lckspwc', 'Aerified', 'Duobagou', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Aefxldl', 'Bamity', 'Taxisco', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Azwldrt', 'Rank', 'Miyazu', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Ekvlhqp', 'Sub-Ex', 'Rogóźno', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Jcjnqsy', 'Voyatouch', 'Khu Khan', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Ncxmctl', 'Lotlux', 'Boshi', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Beevqui', 'Pannier', 'Cermee', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Tuwtsqr', 'Cardguard', 'Sebina', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Oojdkuh', 'Cardify', 'Karangtanjung', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Llyzvjn', 'Vagram', 'Shuanghe', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Xoljrwy', 'Tresom', 'Ābyek', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Chkcbwe', 'Cookley', 'Blawi', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Mxlyyvm', 'Keylex', 'Pontevedra', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Nxyzsku', 'Fix San', 'Cilongkrangpusaka', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Hevfeih', 'Kanlam', 'Yafran', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Ejfslyk', 'Fix San', 'Águas Formosas', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Hpcxayf', 'Treeflex', 'Klirou', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Jhoqxoe', 'Biodex', 'Zhongcun', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Pxvjbha', 'Viva', 'Obock', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Bcwtsoy', 'Redhold', 'Lubenia', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Jnoqxfo', 'Tresom', 'Czerniejewo', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Hwxcjkc', 'Bitchip', 'Dongguan', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Kpcuguy', 'Prodder', 'Debrecen', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Lrjtjtg', 'Wrapsafe', 'Cantoria', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Ksmijld', 'Bitwolf', 'Adrasmon', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Viexswq', 'Quo Lux', 'Vershino-Shakhtaminskiy', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Tafdlpe', 'Voltsillam', 'Al Maşdūr', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Jkrcvsr', 'Cardify', 'Krasnyy Oktyabr’', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Chhufsj', 'Biodex', 'Borok', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Qbrjqud', 'Bigtax', 'Nay Pyi Taw', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Ufzjpln', 'Subin', 'Hanyuan', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Zqbnkoy', 'Pannier', 'Eguia', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Mhcwups', 'Home Ing', 'Texistepeque', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Crucpmt', 'Cookley', 'Volgorechensk', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Vxfboak', 'Y-Solowarm', 'Gracias', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Cimegmw', 'Aerified', 'Stockholm', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Rvyhren', 'Lotstring', 'Butigui', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Mcmfjvl', 'Treeflex', 'Vällingby', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Hteduje', 'Y-Solowarm', 'Dzwola', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Fvgmjmi', 'Daltfresh', 'Gandara', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Rzvxcaa', 'Pannier', 'Pechersk', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Xbbjyrh', 'Bigtax', 'Bahía Blanca', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Hxgitfh', 'Aerified', 'Tríkeri', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Hdpfeli', 'Tres-Zap', 'Beichan', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Ivgqgiz', 'Quo Lux', 'San Felipe', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Rycozox', 'Voyatouch', 'Bokong Timur', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Ypqyatk', 'Sub-Ex', 'Parizh', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Zzmthfx', 'Regrant', 'Plataran', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Tzjmulr', 'Tin', 'Rāiwind', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Reaitcn', 'Flexidy', 'Cullhuas', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Kqedzyc', 'Bytecard', 'Goulmima', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Kuasavr', 'Span', 'Serra', null);
insert into Saunas_and_hot_tubs (Name, Theme, Location, Description) values ('Jzvmyuk', 'Bamity', 'Asempapan', null);

insert into Hotels (Website, Hotel_name, vacancy) values ('friendfeed.com', 'Nwzdfvy', 12);
insert into Hotels (Website, Hotel_name, vacancy) values ('ox.ac.uk', 'Lkvqunk', 17);
insert into Hotels (Website, Hotel_name, vacancy) values ('princeton.edu', 'Entcyxw', 23);
insert into Hotels (Website, Hotel_name, vacancy) values ('cisco.com', 'Tncepcq', 29);
insert into Hotels (Website, Hotel_name, vacancy) values ('trellian.com', 'Mkpymvc', 59);
insert into Hotels (Website, Hotel_name, vacancy) values ('hhs.gov', 'Pfummwf', 25);
insert into Hotels (Website, Hotel_name, vacancy) values ('jigsyy.com', 'Gltvubd', 90);
insert into Hotels (Website, Hotel_name, vacancy) values ('abc.net.au', 'Vhwpvjm', 87);
insert into Hotels (Website, Hotel_name, vacancy) values ('whitehouse.gov', 'Imaxyjn', 16);
insert into Hotels (Website, Hotel_name, vacancy) values ('issuu.com', 'Qtxqlpn', 15);
insert into Hotels (Website, Hotel_name, vacancy) values ('1688.com', 'Wzrxvqe', 39);
insert into Hotels (Website, Hotel_name, vacancy) values ('flickr.com', 'Goddbiv', 2);
insert into Hotels (Website, Hotel_name, vacancy) values ('wikispaces.com', 'Lpnufbe', 7);
insert into Hotels (Website, Hotel_name, vacancy) values ('jigsy.com', 'Vgptsyf', 48);
insert into Hotels (Website, Hotel_name, vacancy) values ('ustream.tv', 'Uakoewn', 43);
insert into Hotels (Website, Hotel_name, vacancy) values ('admin.ch', 'Fwvcodg', 49);
insert into Hotels (Website, Hotel_name, vacancy) values ('tumblr.com', 'Qbrzsyn', 33);
insert into Hotels (Website, Hotel_name, vacancy) values ('dagondesign.com', 'Mzyogmw', 23);
insert into Hotels (Website, Hotel_name, vacancy) values ('marketwatch.com', 'Xpkhdop', 14);
insert into Hotels (Website, Hotel_name, vacancy) values ('cbslocal.com', 'Iikbtwx', 34);
insert into Hotels (Website, Hotel_name, vacancy) values ('bigcartel.com', 'Zpswppm', 66);
insert into Hotels (Website, Hotel_name, vacancy) values ('scribd.com', 'Kgyihkz', 39);
insert into Hotels (Website, Hotel_name, vacancy) values ('fema.gov', 'Kpoxuoz', 26);
insert into Hotels (Website, Hotel_name, vacancy) values ('constantcontact.com', 'Wbfjlgo', 63);
insert into Hotels (Website, Hotel_name, vacancy) values ('nature.com', 'Lfnbsek', 76);
insert into Hotels (Website, Hotel_name, vacancy) values ('last.fm', 'Pwtlvfg', 61);
insert into Hotels (Website, Hotel_name, vacancy) values ('cnet.com', 'Hohguxq', 16);
insert into Hotels (Website, Hotel_name, vacancy) values ('businesswire.com', 'Pwhepoo', 54);
insert into Hotels (Website, Hotel_name, vacancy) values ('gnu.org', 'Syzduif', 71);
insert into Hotels (Website, Hotel_name, vacancy) values ('baidu.com', 'Eygrdgu', 27);
insert into Hotels (Website, Hotel_name, vacancy) values ('walmart.com', 'Zkqqnps', 23);
insert into Hotels (Website, Hotel_name, vacancy) values ('youtu.be', 'Hvrdfoy', 20);
insert into Hotels (Website, Hotel_name, vacancy) values ('multiply.com', 'Alxcngo', 45);
insert into Hotels (Website, Hotel_name, vacancy) values ('si.edu', 'Bqslmam', 56);
insert into Hotels (Website, Hotel_name, vacancy) values ('privacy.gov.au', 'Jogkavn', 38);
insert into Hotels (Website, Hotel_name, vacancy) values ('skype.com', 'Yelptie', 20);
insert into Hotels (Website, Hotel_name, vacancy) values ('google.ru', 'Mewplrn', 2);
insert into Hotels (Website, Hotel_name, vacancy) values ('diigo.com', 'Jlletgo', 89);
insert into Hotels (Website, Hotel_name, vacancy) values ('cnn.com', 'Vzavihl', 98);
insert into Hotels (Website, Hotel_name, vacancy) values ('java.com', 'Cwkfepl', 95);
insert into Hotels (Website, Hotel_name, vacancy) values ('shutterfly.com', 'Thfkxkl', 43);
insert into Hotels (Website, Hotel_name, vacancy) values ('mayoclinic.com', 'Gqbexxn', 67);
insert into Hotels (Website, Hotel_name, vacancy) values ('homestead.com', 'Vpiwpix', 75);
insert into Hotels (Website, Hotel_name, vacancy) values ('economist.com', 'Ledoxtp', 63);
insert into Hotels (Website, Hotel_name, vacancy) values ('ibm.com', 'Ifdyrcj', 83);
insert into Hotels (Website, Hotel_name, vacancy) values ('wikia.com', 'Cjhqgkt', 76);
insert into Hotels (Website, Hotel_name, vacancy) values ('shareasale.com', 'Ttjkeij', 26);
insert into Hotels (Website, Hotel_name, vacancy) values ('ca.gov', 'Wuleijp', 59);
insert into Hotels (Website, Hotel_name, vacancy) values ('blogs.com', 'Pqfoyuh', 51);
insert into Hotels (Website, Hotel_name, vacancy) values ('cam.ac.uk', 'Dhvkrqj', 100);
insert into Hotels (Website, Hotel_name, vacancy) values ('hugedomains.com', 'Ifcclpt', 33);
insert into Hotels (Website, Hotel_name, vacancy) values ('prlog.org', 'Yjifekm', 12);
insert into Hotels (Website, Hotel_name, vacancy) values ('biglobe.ne.jp', 'Wjpozhg', 76);
insert into Hotels (Website, Hotel_name, vacancy) values ('networkadvertising.org', 'Rfjyxwp', 24);
insert into Hotels (Website, Hotel_name, vacancy) values ('icq.com', 'Rdigmbp', 29);
insert into Hotels (Website, Hotel_name, vacancy) values ('yandex.ru', 'Pyygiia', 79);
insert into Hotels (Website, Hotel_name, vacancy) values ('godaddy.com', 'Gospitf', 95);
insert into Hotels (Website, Hotel_name, vacancy) values ('howstuffworks.com', 'Vmmgbbm', 61);
insert into Hotels (Website, Hotel_name, vacancy) values ('narod.ru', 'Edjpysw', 9);
insert into Hotels (Website, Hotel_name, vacancy) values ('va.gov', 'Ewxknww', 12);
insert into Hotels (Website, Hotel_name, vacancy) values ('sbwire.com', 'Paqzfvw', 99);
insert into Hotels (Website, Hotel_name, vacancy) values ('multiplys.com', 'Zhckybq', 59);
insert into Hotels (Website, Hotel_name, vacancy) values ('canalblog.com', 'Mlpinta', 46);
insert into Hotels (Website, Hotel_name, vacancy) values ('rediff.com', 'Ipbunwk', 4);
insert into Hotels (Website, Hotel_name, vacancy) values ('drupal.org', 'Lvynbhm', 22);
insert into Hotels (Website, Hotel_name, vacancy) values ('nytimes.com', 'Okgrtdf', 82);
insert into Hotels (Website, Hotel_name, vacancy) values ('parallels.com', 'Skjtrdk', 83);
insert into Hotels (Website, Hotel_name, vacancy) values ('example.com', 'Hztullv', 21);
insert into Hotels (Website, Hotel_name, vacancy) values ('liveinternet.ru', 'Fkewzqa', 81);
insert into Hotels (Website, Hotel_name, vacancy) values ('usa.gov', 'Adhssqy', 69);
insert into Hotels (Website, Hotel_name, vacancy) values ('blogger.com', 'Ckwsfxy', 74);
insert into Hotels (Website, Hotel_name, vacancy) values ('woothemes.com', 'Uafpovi', 29);
insert into Hotels (Website, Hotel_name, vacancy) values ('de.vu', 'Wievvin', 12);
insert into Hotels (Website, Hotel_name, vacancy) values ('blinklist.com', 'Mnqjnaf', 7);
insert into Hotels (Website, Hotel_name, vacancy) values ('jigsya.com', 'Nlbbvrc', 29);
insert into Hotels (Website, Hotel_name, vacancy) values ('hhss.gov', 'Usdtnlm', 78);
insert into Hotels (Website, Hotel_name, vacancy) values ('macromedia.com', 'Xpsqfno', 1);
insert into Hotels (Website, Hotel_name, vacancy) values ('zimbio.com', 'Vxwtzqt', 65);
insert into Hotels (Website, Hotel_name, vacancy) values ('soup.io', 'Mlhgpyg', 22);
insert into Hotels (Website, Hotel_name, vacancy) values ('cloudflare.com', 'Iaorqwl', 77);
insert into Hotels (Website, Hotel_name, vacancy) values ('sina.com.cn', 'Jjsbrhj', 12);
insert into Hotels (Website, Hotel_name, vacancy) values ('jiathis.com', 'Hmoogrv', 18);
insert into Hotels (Website, Hotel_name, vacancy) values ('weibo.com', 'Nqauobb', 34);
insert into Hotels (Website, Hotel_name, vacancy) values ('tinyurl.com', 'Ipeoqto', 50);
insert into Hotels (Website, Hotel_name, vacancy) values ('sciencedaily.com', 'Rpmvhhg', 43);
insert into Hotels (Website, Hotel_name, vacancy) values ('google.fr', 'Lnvxytq', 7);
insert into Hotels (Website, Hotel_name, vacancy) values ('harvard.edu', 'Pwdumuz', 27);
insert into Hotels (Website, Hotel_name, vacancy) values ('canalblogs.com', 'Hmmfime', 42);
insert into Hotels (Website, Hotel_name, vacancy) values ('narodu.ru', 'Jbmnhjj', 29);
insert into Hotels (Website, Hotel_name, vacancy) values ('vinaora.com', 'Itoftrg', 38);
insert into Hotels (Website, Hotel_name, vacancy) values ('altervista.org', 'Yxcxxyu', 95);
insert into Hotels (Website, Hotel_name, vacancy) values ('ibmin.com', 'Gqczztx', 54);
insert into Hotels (Website, Hotel_name, vacancy) values ('wix.com', 'Ventupp', 45);
insert into Hotels (Website, Hotel_name, vacancy) values ('femaa.gov', 'Hquhwkf', 12);
insert into Hotels (Website, Hotel_name, vacancy) values ('forbes.com', 'Uknzote', 84);
insert into Hotels (Website, Hotel_name, vacancy) values ('reverbnation.com', 'Wozzwyi', 73);
insert into Hotels (Website, Hotel_name, vacancy) values ('hao123.com', 'Pccijmo', 15);
insert into Hotels (Website, Hotel_name, vacancy) values ('theatlantic.com', 'Rxczpbt', 98);
insert into Hotels (Website, Hotel_name, vacancy) values ('bloggera.com', 'Lvifemv', 73);
insert into Hotels (Website, Hotel_name, vacancy) values ('wp.com', 'Wgwppgb', 88);

insert into Accomodation1 (Website, Telephone_no) values ('friendfeed.com', '690-394-5251');
insert into Accomodation1 (Website, Telephone_no) values ('ox.ac.uk', '426-557-5588');
insert into Accomodation1 (Website, Telephone_no) values ('princeton.edu', '813-260-7501');
insert into Accomodation1 (Website, Telephone_no) values ('cisco.com', '710-684-1929');
insert into Accomodation1 (Website, Telephone_no) values ('trellian.com', '496-773-9187');
insert into Accomodation1 (Website, Telephone_no) values ('hhs.gov', '552-779-2358');
insert into Accomodation1 (Website, Telephone_no) values ('jigsyy.com', '543-479-4715');
insert into Accomodation1 (Website, Telephone_no) values ('abc.net.au', '247-173-2911');
insert into Accomodation1 (Website, Telephone_no) values ('whitehouse.gov', '564-856-8375');
insert into Accomodation1 (Website, Telephone_no) values ('issuu.com', '863-992-3973');
insert into Accomodation1 (Website, Telephone_no) values ('1688.com', '943-693-0092');
insert into Accomodation1 (Website, Telephone_no) values ('flickr.com', '490-201-7323');
insert into Accomodation1 (Website, Telephone_no) values ('wikispaces.com', '893-998-8969');
insert into Accomodation1 (Website, Telephone_no) values ('jigsy.com', '590-866-5559');
insert into Accomodation1 (Website, Telephone_no) values ('ustream.tv', '275-425-6213');
insert into Accomodation1 (Website, Telephone_no) values ('admin.ch', '925-411-9275');
insert into Accomodation1 (Website, Telephone_no) values ('tumblr.com', '104-848-7422');
insert into Accomodation1 (Website, Telephone_no) values ('dagondesign.com', '641-885-9114');
insert into Accomodation1 (Website, Telephone_no) values ('marketwatch.com', '506-312-8886');
insert into Accomodation1 (Website, Telephone_no) values ('cbslocal.com', '950-548-6286');
insert into Accomodation1 (Website, Telephone_no) values ('bigcartel.com', '192-378-3790');
insert into Accomodation1 (Website, Telephone_no) values ('scribd.com', '705-132-1865');
insert into Accomodation1 (Website, Telephone_no) values ('fema.gov', '903-225-7248');
insert into Accomodation1 (Website, Telephone_no) values ('constantcontact.com', '864-304-3576');
insert into Accomodation1 (Website, Telephone_no) values ('nature.com', '199-929-8790');
insert into Accomodation1 (Website, Telephone_no) values ('last.fm', '764-404-4169');
insert into Accomodation1 (Website, Telephone_no) values ('cnet.com', '317-754-7847');
insert into Accomodation1 (Website, Telephone_no) values ('businesswire.com', '935-843-2604');
insert into Accomodation1 (Website, Telephone_no) values ('gnu.org', '466-362-0971');
insert into Accomodation1 (Website, Telephone_no) values ('baidu.com', '862-222-1835');
insert into Accomodation1 (Website, Telephone_no) values ('walmart.com', '379-202-5183');
insert into Accomodation1 (Website, Telephone_no) values ('youtu.be', '961-897-1643');
insert into Accomodation1 (Website, Telephone_no) values ('multiply.com', '139-130-4982');
insert into Accomodation1 (Website, Telephone_no) values ('si.edu', '387-836-6048');
insert into Accomodation1 (Website, Telephone_no) values ('privacy.gov.au', '601-598-5903');
insert into Accomodation1 (Website, Telephone_no) values ('skype.com', '190-173-7900');
insert into Accomodation1 (Website, Telephone_no) values ('google.ru', '409-250-0955');
insert into Accomodation1 (Website, Telephone_no) values ('diigo.com', '933-528-6628');
insert into Accomodation1 (Website, Telephone_no) values ('cnn.com', '601-897-5784');
insert into Accomodation1 (Website, Telephone_no) values ('java.com', '442-468-0672');
insert into Accomodation1 (Website, Telephone_no) values ('shutterfly.com', '435-809-3015');
insert into Accomodation1 (Website, Telephone_no) values ('mayoclinic.com', '235-549-2747');
insert into Accomodation1 (Website, Telephone_no) values ('homestead.com', '460-793-2212');
insert into Accomodation1 (Website, Telephone_no) values ('economist.com', '159-173-1006');
insert into Accomodation1 (Website, Telephone_no) values ('ibm.com', '872-267-4575');
insert into Accomodation1 (Website, Telephone_no) values ('wikia.com', '558-541-3387');
insert into Accomodation1 (Website, Telephone_no) values ('shareasale.com', '209-353-5553');
insert into Accomodation1 (Website, Telephone_no) values ('ca.gov', '648-940-4906');
insert into Accomodation1 (Website, Telephone_no) values ('blogs.com', '752-286-0585');
insert into Accomodation1 (Website, Telephone_no) values ('cam.ac.uk', '173-574-9681');
insert into Accomodation1 (Website, Telephone_no) values ('hugedomains.com', '792-163-2395');
insert into Accomodation1 (Website, Telephone_no) values ('prlog.org', '384-112-4172');
insert into Accomodation1 (Website, Telephone_no) values ('biglobe.ne.jp', '839-815-4768');
insert into Accomodation1 (Website, Telephone_no) values ('networkadvertising.org', '802-766-5830');
insert into Accomodation1 (Website, Telephone_no) values ('icq.com', '731-699-8584');
insert into Accomodation1 (Website, Telephone_no) values ('yandex.ru', '815-526-3279');
insert into Accomodation1 (Website, Telephone_no) values ('godaddy.com', '244-603-3780');
insert into Accomodation1 (Website, Telephone_no) values ('howstuffworks.com', '511-434-8823');
insert into Accomodation1 (Website, Telephone_no) values ('narod.ru', '755-481-0840');
insert into Accomodation1 (Website, Telephone_no) values ('va.gov', '267-462-7220');
insert into Accomodation1 (Website, Telephone_no) values ('sbwire.com', '195-361-3474');
insert into Accomodation1 (Website, Telephone_no) values ('multiplys.com', '480-140-7736');
insert into Accomodation1 (Website, Telephone_no) values ('canalblog.com', '558-448-1624');
insert into Accomodation1 (Website, Telephone_no) values ('rediff.com', '651-986-4168');
insert into Accomodation1 (Website, Telephone_no) values ('drupal.org', '896-975-1851');
insert into Accomodation1 (Website, Telephone_no) values ('nytimes.com', '311-370-7264');
insert into Accomodation1 (Website, Telephone_no) values ('parallels.com', '557-545-7165');
insert into Accomodation1 (Website, Telephone_no) values ('example.com', '256-960-4427');
insert into Accomodation1 (Website, Telephone_no) values ('liveinternet.ru', '610-275-8917');
insert into Accomodation1 (Website, Telephone_no) values ('usa.gov', '458-375-6728');
insert into Accomodation1 (Website, Telephone_no) values ('blogger.com', '784-385-1948');
insert into Accomodation1 (Website, Telephone_no) values ('woothemes.com', '119-946-9902');
insert into Accomodation1 (Website, Telephone_no) values ('de.vu', '811-853-2842');
insert into Accomodation1 (Website, Telephone_no) values ('blinklist.com', '869-709-5505');
insert into Accomodation1 (Website, Telephone_no) values ('jigsya.com', '943-384-6496');
insert into Accomodation1 (Website, Telephone_no) values ('hhss.gov', '623-503-9493');
insert into Accomodation1 (Website, Telephone_no) values ('macromedia.com', '596-342-7909');
insert into Accomodation1 (Website, Telephone_no) values ('zimbio.com', '499-312-4522');
insert into Accomodation1 (Website, Telephone_no) values ('soup.io', '275-551-0594');
insert into Accomodation1 (Website, Telephone_no) values ('cloudflare.com', '255-293-8905');
insert into Accomodation1 (Website, Telephone_no) values ('sina.com.cn', '860-453-1464');
insert into Accomodation1 (Website, Telephone_no) values ('jiathis.com', '754-172-2539');
insert into Accomodation1 (Website, Telephone_no) values ('weibo.com', '479-250-2370');
insert into Accomodation1 (Website, Telephone_no) values ('tinyurl.com', '873-958-3388');
insert into Accomodation1 (Website, Telephone_no) values ('sciencedaily.com', '966-284-2287');
insert into Accomodation1 (Website, Telephone_no) values ('google.fr', '719-697-7878');
insert into Accomodation1 (Website, Telephone_no) values ('harvard.edu', '308-151-9965');
insert into Accomodation1 (Website, Telephone_no) values ('canalblogs.com', '448-764-0647');
insert into Accomodation1 (Website, Telephone_no) values ('narodu.ru', '482-153-0680');
insert into Accomodation1 (Website, Telephone_no) values ('vinaora.com', '719-145-4118');
insert into Accomodation1 (Website, Telephone_no) values ('altervista.org', '939-479-3849');
insert into Accomodation1 (Website, Telephone_no) values ('ibmin.com', '756-306-0833');
insert into Accomodation1 (Website, Telephone_no) values ('wix.com', '943-466-8488');
insert into Accomodation1 (Website, Telephone_no) values ('femaa.gov', '485-769-0899');
insert into Accomodation1 (Website, Telephone_no) values ('forbes.com', '847-222-1625');
insert into Accomodation1 (Website, Telephone_no) values ('reverbnation.com', '809-915-6731');
insert into Accomodation1 (Website, Telephone_no) values ('hao123.com', '348-659-6581');
insert into Accomodation1 (Website, Telephone_no) values ('theatlantic.com', '221-384-1952');
insert into Accomodation1 (Website, Telephone_no) values ('bloggera.com', '612-786-4295');
insert into Accomodation1 (Website, Telephone_no) values ('wp.com', '961-294-3473');

insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Nwzdfvy', 'friendfeed.com', 'jmccart0@gov.uk', 133);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Lkvqunk', 'ox.ac.uk', 'cleyden1@nyu.edu', 104);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Entcyxw', 'princeton.edu', 'dberrey2@pcworld.com', 248);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Tncepcq', 'cisco.com', 'cscarrisbrick3@godaddy.com', 381);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Mkpymvc', 'trellian.com', 'rlaskey4@answers.com', 481);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Pfummwf', 'hhs.gov', 'dputson5@goo.ne.jp', 414);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Gltvubd', 'jigsyy.com', 'phurll6@trellian.com', 301);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Vhwpvjm', 'abc.net.au', 'ksingleton7@cisco.com', 259);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Imaxyjn', 'whitehouse.gov', 'bborrie8@freewebs.com', 384);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Qtxqlpn', 'issuu.com', 'bbretland9@blinklist.com', 237);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Wzrxvqe', '1688.com', 'fsloracha@sakura.ne.jp', 412);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Goddbiv', 'flickr.com', 'poubridgeb@bing.com', 67);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Lpnufbe', 'wikispaces.com', 'zkubanekc@friendfeed.com', 157);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Vgptsyf', 'jigsy.com', 'gballendined@opera.com', 496);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Uakoewn', 'ustream.tv', 'rmccaughene@dot.gov', 80);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Fwvcodg', 'admin.ch', 'rlambirthf@tumblr.com', 263);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Qbrzsyn', 'tumblr.com', 'ohuguenetg@google.pl', 262);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Mzyogmw', 'dagondesign.com', 'oharteh@odnoklassniki.ru', 381);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Xpkhdop', 'marketwatch.com', 'abosdeni@ifeng.com', 79);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Iikbtwx', 'cbslocal.com', 'koakleyj@bigcartel.com', 5);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Zpswppm', 'bigcartel.com', 'nsykesk@technorati.com', 360);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Kgyihkz', 'scribd.com', 'cdenseyl@4shared.com', 206);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Kpoxuoz', 'fema.gov', 'bqualtroughm@ask.com', 148);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Wbfjlgo', 'constantcontact.com', 'csackern@toplist.cz', 2);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Lfnbsek', 'nature.com', 'wcostelloeo@dropbox.com', 118);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Pwtlvfg', 'last.fm', 'asmyliep@1688.com', 222);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Hohguxq', 'cnet.com', 'afreeburnq@prnewswire.com', 78);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Pwhepoo', 'businesswire.com', 'mnickolsr@blogtalkradio.com', 249);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Syzduif', 'gnu.org', 'lfinlaisons@princeton.edu', 243);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Eygrdgu', 'baidu.com', 'jbrooksbiet@google.nl', 167);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Zkqqnps', 'walmart.com', 'gdisleeu@nydailynews.com', 263);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Hvrdfoy', 'youtu.be', 'tlippittv@yale.edu', 28);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Alxcngo', 'multiply.com', 'gjorckw@hhs.gov', 147);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Bqslmam', 'si.edu', 'aozannex@weather.com', 118);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Jogkavn', 'privacy.gov.au', 'hcripley@g.co', 300);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Yelptie', 'skype.com', 'svondrachz@rakuten.co.jp', 386);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Mewplrn', 'google.ru', 'dwakelin10@acquirethisname.com', 339);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Jlletgo', 'diigo.com', 'bocurrane11@slate.com', 156);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Vzavihl', 'cnn.com', 'fpabelik12@devhub.com', 3);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Cwkfepl', 'java.com', 'delintune13@livejournal.com', 484);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Thfkxkl', 'shutterfly.com', 'ahickisson14@cbslocal.com', 175);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Gqbexxn', 'mayoclinic.com', 'bboldero15@livejournal.com', 149);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Vpiwpix', 'homestead.com', 'tmacuchadair16@weibo.com', 238);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Ledoxtp', 'economist.com', 'rvela17@blogs.com', 149);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Ifdyrcj', 'ibm.com', 'avalerio18@examiner.com', 392);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Cjhqgkt', 'wikia.com', 'esetterington19@storify.com', 455);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Ttjkeij', 'shareasale.com', 'vrosenschein1a@whitehouse.gov', 96);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Wuleijp', 'ca.gov', 'scarrane1b@hostgator.com', 317);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Pqfoyuh', 'blogs.com', 'rhallowes1c@hexun.com', 134);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Dhvkrqj', 'cam.ac.uk', 'clicciardo1d@ehow.com', 297);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Ifcclpt', 'hugedomains.com', 'vthorp1e@blog.com', 106);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Yjifekm', 'prlog.org', 'kfessier1f@qq.com', 408);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Wjpozhg', 'biglobe.ne.jp', 'jmaccallam1g@census.gov', 128);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Rfjyxwp', 'networkadvertising.org', 'bgodding1h@pen.io', 264);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Rdigmbp', 'icq.com', 'scope1i@yelp.com', 110);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Pyygiia', 'yandex.ru', 'jmewrcik1j@blog.com', 34);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Gospitf', 'godaddy.com', 'zmctear1k@samsung.com', 329);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Vmmgbbm', 'howstuffworks.com', 'adayce1l@acquirethisname.com', 124);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Edjpysw', 'narod.ru', 'dorta1m@foxnews.com', 124);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Ewxknww', 'va.gov', 'ebarrat1n@nih.gov', 205);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Paqzfvw', 'sbwire.com', 'geastham1o@nsw.gov.au', 378);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Zhckybq', 'multiplys.com', 'fmacalister1p@imdb.com', 29);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Mlpinta', 'canalblog.com', 'pmorigan1q@businessweek.com', 292);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Ipbunwk', 'rediff.com', 'lrosenhaus1r@nbcnews.com', 470);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Lvynbhm', 'drupal.org', 'iduchan1s@soundcloud.com', 405);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Okgrtdf', 'nytimes.com', 'gmuffen1t@unesco.org', 31);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Skjtrdk', 'parallels.com', 'hgrayley1u@paypal.com', 500);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Hztullv', 'example.com', 'edureden1v@alexa.com', 341);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Fkewzqa', 'liveinternet.ru', 'vlutas1w@examiner.com', 312);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Adhssqy', 'usa.gov', 'rverrico1x@eepurl.com', 18);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Ckwsfxy', 'blogger.com', 'mmckinney1y@freewebs.com', 150);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Uafpovi', 'woothemes.com', 'jpiggins1z@unc.edu', 483);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Wievvin', 'de.vu', 'hrabbe20@com.com', 22);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Mnqjnaf', 'blinklist.com', 'afewtrell21@delicious.com', 255);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Nlbbvrc', 'jigsya.com', 'tyouster22@youtu.be', 192);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Usdtnlm', 'hhss.gov', 'hleek23@telegraph.co.uk', 115);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Xpsqfno', 'macromedia.com', 'cmerck24@archive.org', 482);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Vxwtzqt', 'zimbio.com', 'einsull25@angelfire.com', 121);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Mlhgpyg', 'soup.io', 'ojarrel26@list-manage.com', 216);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Iaorqwl', 'cloudflare.com', 'aparadin27@kickstarter.com', 321);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Jjsbrhj', 'sina.com.cn', 'bshambrooke28@statcounter.com', 402);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Hmoogrv', 'jiathis.com', 'ykearford29@tripadvisor.com', 341);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Nqauobb', 'weibo.com', 'vanslow2a@aboutads.info', 192);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Ipeoqto', 'tinyurl.com', 'wparsand2b@google.fr', 8);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Rpmvhhg', 'sciencedaily.com', 'wstonard2c@hibu.com', 418);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Lnvxytq', 'google.fr', 'scoggeshall2d@ca.gov', 105);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Pwdumuz', 'harvard.edu', 'bcranstoun2e@fastcompany.com', 351);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Hmmfime', 'canalblogs.com', 'epasek2f@bizjournals.com', 144);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Jbmnhjj', 'narodu.ru', 'vsturley2g@istockphoto.com', 370);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Itoftrg', 'vinaora.com', 'cheighway2h@ucla.edu', 472);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Yxcxxyu', 'altervista.org', 'afloyde2i@indiegogo.com', 18);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Gqczztx', 'ibmin.com', 'dwestover2j@4shared.com', 6);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Ventupp', 'wix.com', 'mcaughtry2k@qq.com', 404);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Hquhwkf', 'femaa.gov', 'flucks2l@nba.com', 30);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Uknzote', 'forbes.com', 'gbarley2m@dion.ne.jp', 169);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Wozzwyi', 'reverbnation.com', 'upert2n@myspace.com', 431);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Pccijmo', 'hao123.com', 'mwaber2o@tumblr.com', 462);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Rxczpbt', 'theatlantic.com', 'fassaf2p@state.gov', 440);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Lvifemv', 'bloggera.com', 'mguise2q@jiathis.com', 272);
insert into Accomodation2 (Hotel_name, Website, Email, Bookings) values ('Wgwppgb', 'wp.com', 'cbolmann2r@disqus.com', 473);

insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (1, 'Moyra Lohoar', 'F', 'Ireland');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (2, 'Perren Elverston', 'M', 'South Africa');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (3, 'Karlie Hilland', 'F', 'China');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (4, 'Genvieve Steedman', 'F', 'Peru');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (5, 'Meredith Brosini', 'M', 'Vietnam');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (6, 'Rutledge Wooddisse', 'M', 'Peru');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (7, 'Herve Gallety', 'M', 'Ethiopia');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (8, 'Harriette Angeli', 'F', 'China');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (9, 'Dalli Calcutt', 'M', 'Ukraine');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (10, 'Romy Cornell', 'F', 'Philippines');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (11, 'Vivianna Middle', 'F', 'Sweden');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (12, 'Hanson Nutbrown', 'M', 'Ukraine');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (13, 'Sigrid Sammonds', 'F', 'China');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (14, 'Sampson Deverale', 'M', 'Pakistan');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (15, 'Concettina Coleborn', 'F', 'Dominican Republic');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (16, 'Frederick Upson', 'M', 'Thailand');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (17, 'Jae Vogt', 'M', 'Czech Republic');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (18, 'Alvinia Gery', 'F', 'Indonesia');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (19, 'Skyler Santostefano.', 'M', 'Brazil');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (20, 'Emile Poppleston', 'M', 'Portugal');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (21, 'Berty Sunnex', 'F', 'Indonesia');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (22, 'Tymon Strewther', 'M', 'Philippines');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (23, 'Bidget Dodds', 'F', 'Peru');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (24, 'Lombard Penwarden', 'M', 'Brazil');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (25, 'Merv Brunesco', 'M', 'Yemen');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (26, 'Raimund Kittredge', 'M', 'Portugal');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (27, 'Sarene Aleevy', 'F', 'Brazil');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (28, 'Jeanette Thackham', 'F', 'Serbia');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (29, 'Creight McGarry', 'M', 'Kazakhstan');
insert into Winners (Participant_ID, Participant_name, Gender_category, Country) values (30, 'Alfy Maciaszek', 'M', 'Japan');

insert into Presidium1 (Employee_ID, Email_id) values (1, 'mmcdaid0@flavors.me');
insert into Presidium1 (Employee_ID, Email_id) values (2, 'gmcquin1@simplemachines.org');
insert into Presidium1 (Employee_ID, Email_id) values (3, 'dbasset2@cnet.com');
insert into Presidium1 (Employee_ID, Email_id) values (4, 'awycliff3@cdc.gov');
insert into Presidium1 (Employee_ID, Email_id) values (5, 'dconerding4@amazon.com');
insert into Presidium1 (Employee_ID, Email_id) values (6, 'rfoat5@vinaora.com');
insert into Presidium1 (Employee_ID, Email_id) values (7, 'rchristofle6@yahoo.co.jp');
insert into Presidium1 (Employee_ID, Email_id) values (8, 'jpaoletto7@wix.com');
insert into Presidium1 (Employee_ID, Email_id) values (9, 'sbrearton8@cmu.edu');
insert into Presidium1 (Employee_ID, Email_id) values (10, 'stokell9@a8.net');
insert into Presidium1 (Employee_ID, Email_id) values (11, 'bsibbea@plala.or.jp');
insert into Presidium1 (Employee_ID, Email_id) values (12, 'dcarefullb@github.io');
insert into Presidium1 (Employee_ID, Email_id) values (13, 'srivalantc@blogtalkradio.com');
insert into Presidium1 (Employee_ID, Email_id) values (14, 'vucchinod@slideshare.net');
insert into Presidium1 (Employee_ID, Email_id) values (15, 'mcashleye@canalblog.com');
insert into Presidium1 (Employee_ID, Email_id) values (16, 'mbardf@mysql.com');
insert into Presidium1 (Employee_ID, Email_id) values (17, 'mscalesg@vkontakte.ru');
insert into Presidium1 (Employee_ID, Email_id) values (18, 'bjoanh@simplemachines.org');
insert into Presidium1 (Employee_ID, Email_id) values (19, 'mmilletoni@yelp.com');
insert into Presidium1 (Employee_ID, Email_id) values (20, 'troycroftj@arstechnica.com');
insert into Presidium1 (Employee_ID, Email_id) values (21, 'jblankenshipk@sogou.com');
insert into Presidium1 (Employee_ID, Email_id) values (22, 'gtrahearl@uol.com.br');
insert into Presidium1 (Employee_ID, Email_id) values (23, 'edandom@nih.gov');
insert into Presidium1 (Employee_ID, Email_id) values (24, 'mouvern@sitemeter.com');
insert into Presidium1 (Employee_ID, Email_id) values (25, 'nshowero@altervista.org');
insert into Presidium1 (Employee_ID, Email_id) values (26, 'ssparep@hostgator.com');
insert into Presidium1 (Employee_ID, Email_id) values (27, 'rlonglandq@huffingtonpost.com');
insert into Presidium1 (Employee_ID, Email_id) values (28, 'droizr@oakley.com');
insert into Presidium1 (Employee_ID, Email_id) values (29, 'cpettingalls@odnoklassniki.ru');
insert into Presidium1 (Employee_ID, Email_id) values (30, 'hpeegremt@bigcartel.com');

insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (1, 'Goldarina Guitte', 'Project Manager', 'https://robohash.org/veletaccusamus.png?size=50x50&set=set1', 'nfdo jcrr xeej');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (2, 'Correy Martinelli', 'Subcontractor', 'https://robohash.org/temporibusdolorvelit.png?size=50x50&set=set1', 'bcvc cbhz dhbo');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (3, 'Curry Viel', 'Engineer', 'https://robohash.org/etdoloresenim.png?size=50x50&set=set1', 'ruin ehva bfip');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (4, 'Joyous Todarello', 'Construction Foreman', 'https://robohash.org/accusantiumcorporisducimus.png?size=50x50&set=set1', 'adco mfwi ctow');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (5, 'Malcolm Lound', 'Architect', 'https://robohash.org/vitaererumillum.png?size=50x50&set=set1', 'hjwp dsss udlt');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (6, 'Alissa L''Episcopio', 'Construction Manager', 'https://robohash.org/doloremprovidentomnis.png?size=50x50&set=set1', 'spat ftfd wafv');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (7, 'Mar Gounod', 'Engineer', 'https://robohash.org/occaecatisaepeearum.png?size=50x50&set=set1', 'evhs njii swpv');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (8, 'Dur Ickovic', 'Construction Manager', 'https://robohash.org/aututdistinctio.png?size=50x50&set=set1', 'dnos dhnw dglt');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (9, 'Karil Humes', 'Engineer', 'https://robohash.org/deseruntaquas.png?size=50x50&set=set1', 'rkqv thnb etai');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (10, 'Ode Jeune', 'Subcontractor', 'https://robohash.org/providentetsaepe.png?size=50x50&set=set1', 'zjis xnhw woqd');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (11, 'Shelli Yandle', 'Construction Foreman', 'https://robohash.org/aveniamnihil.png?size=50x50&set=set1', 'mjlh afmo mqqq');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (12, 'Annelise Benford', 'Engineer', 'https://robohash.org/expeditalaboriosamcum.png?size=50x50&set=set1', 'kjgo znro ejxs');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (13, 'Anna Cammomile', 'Architect', 'https://robohash.org/repudiandaeadipsum.png?size=50x50&set=set1', 'jkvg vsnw mkhm');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (14, 'Salvador Degue', 'Construction Foreman', 'https://robohash.org/doloremqueomnisvoluptas.png?size=50x50&set=set1', 'nvsx psgu urex');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (15, 'Lorain Bendon', 'Engineer', 'https://robohash.org/etasperioresdoloribus.png?size=50x50&set=set1', 'rkem fdxj trhk');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (16, 'Vernon Beardshaw', 'Construction Expeditor', 'https://robohash.org/doloremsintnon.png?size=50x50&set=set1', 'qezz xhcm uhnd');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (17, 'Suzanne McMennum', 'Construction Foreman', 'https://robohash.org/etfacilisquis.png?size=50x50&set=set1', 'ciqr xmqe dxgk');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (18, 'Loren Shulver', 'Construction Foreman', 'https://robohash.org/eumerrorat.png?size=50x50&set=set1', 'schm wyjw psae');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (19, 'Cristiano Mullaly', 'Construction Expeditor', 'https://robohash.org/hicutipsam.png?size=50x50&set=set1', 'fkkr mbaj nkwg');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (20, 'Arlee Girardengo', 'Construction Manager', 'https://robohash.org/oditvoluptaset.png?size=50x50&set=set1', 'djeh otjc skht');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (21, 'Valentino Triplet', 'Subcontractor', 'https://robohash.org/atveritatisnon.png?size=50x50&set=set1', 'vuld ormx elsv');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (22, 'Timothee Middlewick', 'Project Manager', 'https://robohash.org/quieavoluptate.png?size=50x50&set=set1', 'zdzb xfzw dkpo');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (23, 'Marvin Broscombe', 'Project Manager', 'https://robohash.org/utminusvoluptas.png?size=50x50&set=set1', 'pdjf culd lxfg');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (24, 'Natassia Roofe', 'Architect', 'https://robohash.org/etevenieteum.png?size=50x50&set=set1', 'ngku bzck ljvx');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (25, 'Nichole Drewes', 'Subcontractor', 'https://robohash.org/cumqueataspernatur.png?size=50x50&set=set1', 'jgbi cxbq zdhq');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (26, 'Jonathan Lasseter', 'Engineer', 'https://robohash.org/quaeratfacilisest.png?size=50x50&set=set1', 'sogg bhpf gjbv');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (27, 'Joana August', 'Electrician', 'https://robohash.org/voluptatibusvoluptatemsequi.png?size=50x50&set=set1', 'eied bwzv matj');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (28, 'Arlyn Sunock', 'Engineer', 'https://robohash.org/repellatbeataeveniam.png?size=50x50&set=set1', 'sqpg eqat wkxr');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (29, 'Wilbur Sim', 'Construction Worker', 'https://robohash.org/velitcumquequidem.png?size=50x50&set=set1', 'eluu mbwb hmcu');
insert into Presidium2 (Employee_ID, Name, Position, Photo, Quote) values (30, 'Athena Minchenton', 'Construction Expeditor', 'https://robohash.org/vitaequirerum.png?size=50x50&set=set1', 'ojby ngwy jxzd');

