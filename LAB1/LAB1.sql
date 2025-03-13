CREATE DATABASE IF NOT EXISTS DENEME;
USE DENEME;
CREATE TABLE IF NOT EXISTS KANALLAR(
	Sıra INT AUTO_INCREMENT PRIMARY KEY,
    İsim varchar(30),
    Tip varchar(30),
    Kanal varchar(30),
    Değerleme float
);

INSERT INTO KANALLAR(İsim,Tip,Kanal,Değerleme) VALUES('COLD CASE','Serial','CNBC-E',8.9);
INSERT INTO KANALLAR(İsim,Tip,Kanal,Değerleme) VALUES('SEKSENLER','Serial','TRT 1',7.5);
INSERT INTO KANALLAR(İsim,Tip,Kanal,Değerleme) VALUES('STADYUM','Sport','TRT 1',6.6);
INSERT INTO KANALLAR(İsim,Tip,Kanal,Değerleme) VALUES('ATV ANA HABER','Newscast','ATV',6.5);
INSERT INTO KANALLAR(İsim,Tip,Kanal,Değerleme) VALUES('KANAL D HABER','Newscast','KANAL D',5.2);

SELECT * FROM KANALLAR;
