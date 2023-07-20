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


-----What animals belong to Melody Pond?
SELECT a.name AS animal_name
FROM animals a
JOIN owners o ON a.owner_id = o.id
WHERE o.full_name = 'Melody Pond';

------List of all animals that are pokemon (their type is Pokemon)
SELECT a.name AS animal_name
FROM animals a
JOIN species s ON a.species_id = s.id
WHERE s.name = 'Pokemon';

-----List all owners and their animals, including those who don't own any animal.
SELECT o.full_name AS owner_name, COALESCE(a.name, 'No animal') AS animal_name
FROM owners o
LEFT JOIN animals a ON o.id = a.owner_id
ORDER BY o.full_name, a.name;


-----How many animals are there per species?
SELECT s.name AS species_name, COUNT(*) AS animal_count
FROM animals a
JOIN species s ON a.species_id = s.id
GROUP BY s.name;

-----List all Digimon owned by Jennifer Orwell.
SELECT a.name AS animal_name
FROM animals a
JOIN species s ON a.species_id = s.id
JOIN owners o ON a.owner_id = o.id
WHERE o.full_name = 'Jennifer Orwell' AND s.name = 'Digimon';


-----List all animals owned by Dean Winchester that haven't tried to escape
SELECT a.name AS animal_name
FROM animals a
JOIN owners o ON a.owner_id = o.id
WHERE o.full_name = 'Dean Winchester' AND a.escape_attempts = 0;


----Who owns the most animals?
SELECT o.full_name AS owner_name, COUNT(a.id) AS animal_count
FROM owners o
LEFT JOIN animals a ON o.id = a.owner_id
GROUP BY o.full_name
ORDER BY COUNT(a.id) DESC
LIMIT 1;
