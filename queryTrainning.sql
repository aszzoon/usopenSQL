

create database june;
use june;

create table
(
    id char(10) primary key

);

create database study;

use study;

CREATE TABLE tCity
(
    name CHAR(10) PRIMARY KEY,
    area INT NULL ,
    popu INT NULL ,
    metro CHAR(1) NOT NULL,
    region CHAR(6) NOT NULL
);

show tables;

INSERT INTO tCity VALUES ('서울',605,974,'y','경기');
INSERT INTO tCity VALUES ('부산',765,342,'y','경상');
INSERT INTO tCity VALUES ('오산',42,21,'n','경기');
INSERT INTO tCity VALUES ('청주',940,83,'n','충청');
INSERT INTO tCity VALUES ('전주',205,65,'n','전라');
INSERT INTO tCity VALUES ('순천',910,27,'n','전라');
INSERT INTO tCity VALUES ('춘천',1116,27,'n','강원');
INSERT INTO tCity VALUES ('홍천',1819,7,'n','강원');

select * from tCity;

CREATE TABLE tStaff
(
    name CHAR (15) PRIMARY KEY,
    depart CHAR (10) NOT NULL,
    gender CHAR(3) NOT NULL,
    joindate DATE NOT NULL,
    grade CHAR(10) NOT NULL,
    salary INT NOT NULL,
    score DECIMAL(5,2) NULL
);

INSERT INTO tStaff VALUES ('김유신','총무부','남','2000-2-3','이사',420,88.8);
INSERT INTO tStaff VALUES ('유관순','영업부','여','2009-3-1','과장',380,NULL);
INSERT INTO tStaff VALUES ('안중근','인사과','남','2012-5-5','대리',256,76.5);
INSERT INTO tStaff VALUES ('윤봉길','영업부','남','2015-8-15','과장',350,71.25);
INSERT INTO tStaff VALUES ('강감찬','영업부','남','2018-10-9','사원',320,56.0);
INSERT INTO tStaff VALUES ('정몽주','총무부','남','2010-9-16','대리',370,89.5);
INSERT INTO tStaff VALUES ('허난설헌','인사과','여','2020-1-5','사원',285,44.5);
INSERT INTO tStaff VALUES ('신사임당','영업부','여','2013-6-19','부장',400,92.0);
INSERT INTO tStaff VALUES ('성삼문','영업부','남','2014-6-8','대리',285,87.75);
INSERT INTO tStaff VALUES ('논개','인사과','여','2010-9-16','대리',340,46.2);
INSERT INTO tStaff VALUES ('황진이','인사과','여','2012-5-5','사원',275,52.5);
INSERT INTO tStaff VALUES ('이율곡','총무부','남','2016-3-8','과장',385,65.4);
INSERT INTO tStaff VALUES ('이사부','총무부','남','2000-2-3','대리',375,50);
INSERT INTO tStaff VALUES ('안창호','영업부','남','2015-8-15','사원',370,74.2);
INSERT INTO tStaff VALUES ('을지문덕','영업부','남','2019-6-29','사원',330,NULL);
INSERT INTO tStaff VALUES ('정약용','총무부','남','2020-3-14','과장',380,69.8);
INSERT INTO tStaff VALUES ('홍길동','인사과','남','2019-8-8','차장',380,77.7);
INSERT INTO tStaff VALUES ('대조영','총무부','남','2020-7-7','차장',290,49.9);
INSERT INTO tStaff VALUES ('장보고','인사과','남','2005-4-1','부장',440,58.3);
INSERT INTO tStaff VALUES ('선덕여왕','인사과','여','2017-8-3','사원',315,45.1);

SELECT * FROM tStaff;

select name, salary from tstaff;

select name AS '존함(이름)', salary * 10.3 from tstaff;

select name, area, popu, popu* 10000 / area AS '인구밀도' from tCity;

select 60 * 60 * 24 AS '하루' from dual;

select 24 - 22;

select * from tCity where area > 1000;
-- area 1000 이상 select

select *
from tStaff;

select name, area from tCity where area > 500;

select * from tStaff where score = NULL;

select * from tCity where name like '%천%';
select * from tCity where name not like '%천%';