
CREATE DATABASE IF NOT EXISTS HumanFriends; 
SHOW DATABASES;
USE HumanFriends;

DROP TABLE IF EXISTS Cats;
CREATE TABLE Cats (
  id INT UNSIGNED PRIMARY KEY NOT NULL,
  name VARCHAR(20) NOT NULL,
  birthday Date,
  commands VARCHAR(50)
);	

DROP TABLE IF EXISTS Dogs, Hamsters, Horses, Camels, Donkeys;
CREATE TABLE Dogs LIKE Cats;
CREATE TABLE Hamsters LIKE Cats;
CREATE TABLE Horses LIKE Cats;
CREATE TABLE Camels LIKE Cats;
CREATE TABLE Donkeys LIKE Cats;

SET @i = 0;  

INSERT INTO Cats 
  (id, name, birthday, commands)  
VALUES 
  ((@i := @i + 1), 'Oliver', '2020-06-30', 'Meow, Scratch, Jump'),
  ((@i := @i + 1), 'Smudge', '2020-02-20', 'Sit, Pounce, Scratch'),
  ((@i := @i + 1), 'Whiskers', '2019-05-15', 'Sit, Pounce');
  
SELECT * FROM Cats;

INSERT INTO Dogs 
  (id, name, birthday, commands)  
VALUES 
  ((@i := @i + 1), 'Bella', '2019-11-11', 'Sit, Stay, Roll'),
  ((@i := @i + 1), 'Buddy', '2018-12-10', 'Sit, Paw, Bark'),
  ((@i := @i + 1), 'Fido', '2020-01-01', 'Sit, Stay, Fetch');

SELECT * FROM Dogs;

INSERT INTO Hamsters 
  (id, name, birthday, commands)  
VALUES 
  ((@i := @i + 1), 'Peanut', '2021-08-01', 'Roll, Spin'),
  ((@i := @i + 1), 'Hammy', '2021-03-10', 'Roll, Hide');
  
SELECT * FROM Hamsters;

CREATE VIEW Pets AS
  SELECT id, name, 'Cat' AS type, birthday, commands FROM Cats
    UNION
  SELECT id, name, 'Dog' AS type, birthday, commands FROM Dogs
    UNION
  SELECT id, name, 'Hamster' AS type, birthday, commands FROM Hamsters;
  
SELECT * FROM Pets;
