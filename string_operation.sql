SHOW DATABASES;
USE School;
CREATE TABLE Students2(ID INT NOT NULL AUTO_INCREMENT,namess varchar(20),dept varchar(10),years int,PRIMARY KEY (ID));
INSERT INTO Students2 (namess,dept,years) VALUES ('Vedant','IT',2021),('Vedantq','IT',2023),('Vedantw','COMP',2020),('Vedante','MEC',2019),('Vedantr','ENTC',2021),('Vedantt','COMP',2022);
-- SELECT * FROM Students2 GROUP BY dept;
SELECT count(dept),dept,years FROM Students2 GROUP BY dept,years;
SELECT * FROM Students2 WHERE dept LIKE 'COM%';
SELECT * FROM Students2 WHERE namess LIKE '%w%' OR namess LIKE '%r%';
SELECT CONCAT(namess, " ", dept, " ", years) AS Info FROM Students2;
SELECT dept,MAX(years) as Latest_Admission FROM Students2 GROUP BY dept;
SELECT dept,MIN(years) as Oldest_Admission FROM Students2 GROUP BY dept;
SELECT * FROM Students2 WHERE dept= 'COMP' AND years NOT IN (2022);
SELECT * FROM Students2 WHERE dept= 'COMP' AND years IN (2022,2020);
SELECT dept,years,namess FROM Students2 GROUP BY namess HAVING years>=2021;
SELECT * FROM Students2;
