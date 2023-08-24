CREATE DATABASE test;
DROP DATABASE test;
CREATE DATABASE re_comp;
USE re_comp;
CREATE TABLE test( col1 INT);
ALTER TABLE test ADD a_col VARCHAR(25);
DROP TABLE test;
CREATE TABLE bands(name VARCHAR(255) NOT NULL,id INT NOT NULL AUTO_INCREMENT,PRIMARY KEY(id));
CREATE TABLE ALBUMS( id INT NOT NULL AUTO_INCREMENT,name VARCHAR(25) NOT NULL,release_year INT,band_id INT NOT NULL,PRIMARY KEY(id), FOREIGN KEY(band_id) REFERENCES bands(id));
INSERT INTO bands (name) VALUES ('Iron Maiden');
INSERT INTO bands (name) VALUES ('Deuce'),('LOL'),('Ring');
SELECT * FROM bands;
SELECT * FROM bands LIMIT 2;
SELECT name FROM bands;
SELECT id AS 'ID' name AS 'Band Name' FROM bands ;
SELECT * FROM bands ORDER BY name DESC;
INSERT INTO albums (name, release_year,band_id) VALUES ('The Number ',1985,1),('LOLP',2009,1)
SELECT DISTINCT name FROM albums;
UPDATE albums SET release_year=1982 WHERE id=1;
SELECT * FROM albums WHERE release_year<2000;
SELECT *FROM albums WHERE name LIKE '%er%' OR band_id=2;
SELECT * FROM albums WHERE release_year BETWEEN 2000 AND 2018;
SELECT * FROM albums WHERE release_year IS NULL;
DELETE FROM albums WHERE id=5;
SELECT * FROM bands JOIN albums ON bands.id=albums.band_id;
SELECT AVG (release_year) FROM albums;
SELECT band_id , COUNT(band_id) FROM albums GROUP BY band_id;
SELECT b.name AS band_name,COUNT(a.id) AS num_albums FROM bands AS a ON b.id=a.band_id GROUP BY b.id HAVING num_albums=1;

