/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Agumon', '2020-02-03', 0, true, 10.23),
       ('Gabumon', '2018-11-15', 2, true, 8),
       ('Pikachu', '2021-01-07', 1, false, 15.04),
       ('Devimon', '2017-05-12', 5, true, 11),
       ('Charmander', '2020-02-08', 0, false, 11),
----------------------------insert new values for animals table----------------------------------------
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES 
  ('Charmander', '2020-02-08', 0, FALSE, -11),
  ('Plantmon', '2021-11-15', 2, TRUE, -5.7),
  ('Squirtle', '1993-04-02', 3, FALSE, -12.13),
  ('Angemon', '2005-06-12', 1, TRUE, -45),
  ('Boarmon', '2005-06-07', 7, TRUE, 20.4),
  ('Blossom', '1998-10-13', 3, TRUE, 17),
  ('Ditto', '2022-05-14', 4, TRUE, 22);

-----Insert values for owners table
INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
 ('Dean Winchester', 14),
('Jodie Whithaker', 38);

-----Insert values for species table
INSERT INTO species(name)
VALUES ('Pokemon'),
('Digimon');
INSERT 0 2

-----update species_id on animals table
 UPDATE animals
 SET species_id = CASE
 WHEN name LIKE '%mon' THEN 1
 ELSE 2
 END;
UPDATE 10

------ update owner_id on animals table	   
 UPDATE animals
 SET owner_id = (
 SELECT o.id
 FROM owners o
 WHERE o.full_name= (
 CASE
 WHEN animals.name = 'Agumon' THEN 'Sam Smith'
 WHEN animals.name IN ('Gabumon', 'Pikachu') THEN 'Jennifer Orwell'
 WHEN animals.name IN ('Devimon', 'Plantmon') THEN 'Bob'
 WHEN animals.name IN ('Charmander', 'Squirtle', 'Blossom') THEN 'Melody Pond'
WHEN animals.name IN ('Angemon', 'Boarmon') THEN 'Dean Winchester'
 END));
UPDATE 10



-- Insert values into the vets' table
INSERT INTO vets (name, age, date_of_graduation) VALUES
  ('Vet William Tatcher', 45, '2000-04-23'),
  ('Vet Maisy Smith', 26, '2019-01-17'),
  ('Vet Stephanie Mendez', 64, '1981-05-04'),
  ('Vet Jack Harkness', 38, '2008-06-08');

-- Insert the values for specialties:
INSERT INTO specializations (vet_id, species_id)
VALUES ((SELECT id FROM vets WHERE name = 'Vet William Tatcher'), (SELECT id FROM species WHERE name = 'Pokemon')),
       ((SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), (SELECT id FROM species WHERE name = 'Digimon')),
       ((SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), (SELECT id FROM species WHERE name = 'Pokemon')),
       ((SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), (SELECT id FROM species WHERE name = 'Digimon'));

-- Insert the values for visits:
INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = 'Vet William Tatcher'), '2020-05-24'),
      ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2020-07-22'),
      ((SELECT id FROM animals WHERE name = 'Gabumon'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2021-02-02'),
      ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-01-05'),
       ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-03-08'),
       ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-05-14'),
      ((SELECT id FROM animals WHERE name = 'Devimon'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2021-05-04'),
      ((SELECT id FROM animals WHERE name = 'Charmander'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2021-02-24'),
      ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2019-12-21'),
       ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Vet William Tatcher'), '2020-08-10'),
       ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2021-04-07'),
       ((SELECT id FROM animals WHERE name = 'Squirtle'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2019-09-29'),
      ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2020-10-03'),
       ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2020-11-04'),
      ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2019-01-24'),
       ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2019-05-15'),
       ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-02-27'),
       ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-08-03'),
      ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2020-05-24'),
      ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'Vet William Tatcher'), '2021-01-11');