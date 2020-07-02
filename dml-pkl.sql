-- 1. **Create table city**
create table city(
id NUMBER (11)PRIMARY KEY,
name varchar(50)not null
);
-- 2. **Create table referee**
create table referee(
id NUMBER (11)PRIMARY KEY,
name varchar(50)
);
-- 3. **Create table innings**
create table innings(
id NUMBER (11) PRIMARY KEY,
innings_number NUMBER(11) NOT NULL
);
-- 4. **Create table extra_type**
create table extra_type(
id number (11) primary key,
name varchar(50) not null
);
-- 5. **Create table skill**
create table skill(
id number (11)  primary key,
name varchar (50) not null
);

-- 6. **Create table team**
CREATE TABLE TEAM(ID NUMBER(11) PRIMARY KEY,NAME VARCHAR(50) NOT NULL,COACH VARCHAR(50) NOT NULL,HOME_CITY NUMBER(11) NOT NULL,FOREIGN KEY(HOME_CITY)REFERENCES CITY(ID));
-- 7. **Create table player**
CREATE TABLE PLAYER(ID NUMBER(11) PRIMARY KEY,NAME VARCHAR(50) NOT NULL,COUNTRY VARCHAR(50) NOT NULL,SKILL_ID NUMBER(11) NOT NULL,TEAM_ID NUMBER(11) NOT NULL,FOREIGN KEY(SKILL_ID) REFERENCES SKILL(ID),FOREIGN KEY(TEAM_ID) REFERENCES TEAM(ID));
-- 8. **Create table venue**
CREATE TABLE VENUE(ID NUMBER(11) PRIMARY KEY,STADIUM_NAME VARCHAR(50) NOT NULL,CITY_ID NUMBER(11) NOT NULL,FOREIGN KEY(CITY_ID) REFERENCES CITY(ID)); 
-- 9. **Create table event**
CREATE TABLE EVENT(ID NUMBER(11) PRIMARY KEY,INNINGS_ID NUMBER(11) NOT NULL,EVENT_NO NUMBER(11) NOT NULL,RAIDER_ID NUMBER(11) NOT NULL,RAID_POINTS NUMBER(11) NOT NULL,DEFENDING_POINTS NUMBER(11) NOT NULL,CLOCK_IN_SECONDS NUMBER(11) NOT NULL,TEAM_ONE_SCORE NUMBER(11) NOT NULL,TEAM_TWO_SCORE NUMBER(11) NOT NULL,FOREIGN KEY(INNINGS_ID) REFERENCES INNINGS(ID),FOREIGN KEY(RAIDER_ID) REFERENCES PLAYER(ID));
-- 10. **Create table extra_event**
CREATE TABLE EXTRA_EVENT(ID NUMBER(11) PRIMARY KEY,EVENT_ID NUMBER(11) NOT NULL,EXTRA_TYPE_ID NUMBER(11),POINTS NUMBER(11) NOT NULL,SCORING_TEAM_ID NUMBER(11),FOREIGN KEY(EVENT_ID) REFERENCES EVENT(ID),FOREIGN KEY(EXTRA_TYPE_ID) REFERENCES EXTRA_TYPE(ID),FOREIGN KEY(SCORING_TEAM_ID) REFERENCES TEAM(ID));
-- 11. **Create table outcome**
create TABLE OUTCOME(ID NUMBER(11) PRIMARY KEY,STATUS VARCHAR(100) NOT NULL,WINNER_TEAM_ID NUMBER(11),SCORE NUMBER(11),PLAYER_OF_MATCH NUMBER(11));
-- 12. **Create table game**
create TABLE GAME(ID NUMBER(11),GAME_DATE DATE NOT NULL,TEAM_ID_1 NUMBER(11) NOT NULL,TEAM_ID_2 NUMBER(11) NOT NULL,VENUE_ID NUMBER(11) NOT NULL,OUTCOME_ID NUMBER(11) NOT NULL,REFEREE_ID_1 NUMBER(11) NOT NULL,REFEREE_ID_2 NUMBER(11) NOT NULL,FIRST_INNINGS_ID NUMBER(11) NOT NULL,SECOND_INNINGS_ID NUMBER(11) NOT NULL,FOREIGN KEY(TEAM_ID_1) REFERENCES TEAM(ID),FOREIGN KEY(TEAM_ID_2) REFERENCES TEAM(ID),FOREIGN KEY(VENUE_ID) REFERENCES VENUE(ID),FOREIGN KEY(OUTCOME_ID) REFERENCES OUTCOME(ID),FOREIGN KEY(REFEREE_ID_1) REFERENCES REFEREE(ID),FOREIGN KEY(REFEREE_ID_2) REFERENCES REFEREE(ID),FOREIGN KEY(FIRST_INNINGS_ID) REFERENCES INNINGS(ID),FOREIGN KEY(SECOND_INNINGS_ID) REFERENCES INNINGS(ID));
-- 13. **Drop table city**
alter table team
drop column home_city;

alter table venue
drop column city_id;

drop table city;



























-- PROGRESSION 1:

--1. Insert into city
insert into city(id,name)values(105,'CHAKDAHA');
--2. Insert into referee
insert into referee(id,name)values(105,'ME');
insert into referee(id,name)values(106,'ce');
--3. Insert into innings
insert into innings(id,innings_number)values(105,5444);
insert into innings(id,innings_number)values(109,55);
--4. Insert into extra_type
insert into innings(id,innings_number)values(105,5444);
insert into innings(id,innings_number)values(130,5444);
--5. Insert into skill
insert into skill(id,name)values(105,'CODER');
insert into skill(id,name)values(199,'designer');
--6. Insert into team
Insert into team values (60, 'Raj', 'Aditya', 105);
Insert into team values (61, 'Rb', 'SEN', 105); --105 from city id and one column i misssed
--7. Insert into player
Insert into player values (100, 'Tendulkar', 'India', 105, 60); -- 105 , 60 are from skill id & team id
INSERT INTO PLAYER(ID,NAME,COUNTRY,SKILL_ID,TEAM_ID)VALUES(3,'DAS','SA',199,61);
--8. Insert into venue
Insert into venue values (1, 'Eden', 105);
--9. Insert into event
Insert into event values (5,105, 45,100,9,12,13,14,15);
--10. Insert into extra_event
Insert into extra_event values (85,5,105,42,60);
--11. Insert into outcome
insert into outcome VALUES(56,'done','111',999,0);
--12. Insert into game
INSERT INTO GAME VALUES(29,'04-04-1997',60,61,1,56,105,106,105,109);
--13. Update player table
UPDATE PLAYER SET NAME='ROUNAK' WHERE SKILL_ID=105;
--14. Update player table


--15. Update player table

--16. Update player table

--17. Delete from extra_type
delete from extra_type where id=105;
--18. Delete from referee
DELETE FROM REFEREE WHERE ID=105;
--19. Delete from player
delete from event where raider_id = 100

delete from player where id = 100
--20. Delete from outcome
delete from outcome where id=56;