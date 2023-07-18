/*Queries that provide answers to the questions from all projects.*/

/*Queries that provide answers to the questions.*/
SELECT * FROM animals;
SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;



---RollBack the changes
BEGIN;
UPDATE animals
SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;


---COMMIT the updated changes
BEGIN;
UPDATE animals
SET  species = 'digimon'
WHERE  name LIKE '%mon';
SELECT * FROM animals WHERE name like '%mon';

UPDATE animals
SET  species = 'pokemon'
WHERE  species IS NULL;
SELECT * FROM animals WHERE species ='pokemon';
	
COMMIT;

SELECT * FROM animals;

---ROLLBACK after the delete function
BEGIN;
DELETE  FROM animals;

ROLLBACK;
SELECT * FROM animals;


---SAVEPOINT and ROLLBACK
 BEGIN;

 DELETE FROM animals WHERE date_of_birth > '2022-01-01';

 SAVEPOINT SP1;
 UPDATE animals
 SET weight_kg =weight_kg * -1;
 ROLLBACK TO SP1;

 UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
 COMMIT;

---All Queriers for animals table


SELECT COUNT(*) AS animal_count FROM animals;

SELECT COUNT(*) AS no_escape_count FROM animals WHERE escape_attempts = 0;

SELECT AVG(weight_kg) AS average_weight FROM animals;

SELECT name, escape_attempts
FROM animals
WHERE escape_attempts = (SELECT MAX(escape_attempts) FROM animals);

SELECT species, MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight
FROM animals
GROUP BY species;

SELECT species, AVG(escape_attempts) AS average_escape_attempts
FROM animals
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;