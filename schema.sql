/* Database schema to keep the structure of the entire database. */

-- Create the vet_clinic database
CREATE DATABASE vet_clinic;

-- Create the animals' table
 CREATE TABLE animals(
 id BIGSERIAL NOT NULL PRIMARY KEY,
 name VARCHAR(50) NOT NULL,
date_of_birth DATE NOT NULL,
escape_attempts SERIAL NOT NULL,
neutered BOOLEAN NOT NULL,
 weight_kg DECIMAL(10, 2) NOT NULL);


 --- Add new column on the animals table
 ALTER TABLE animals
ADD COLUMN species VARCHAR(100);

---Create owners table
 CREATE TABLE owners (
 id BIGSERIAL PRIMARY KEY,
full_name VARCHAR (100),
age BIGINT);
CREATE TABLE

---- Create species table	   
CREATE TABLE species (
 id BIGSERIAL PRIMARY KEY,
name VARCHAR (100) NOT NULL);
		   
----Remove species column from animals table
ALTER TABLE animals
 DROP species;

----referencing species
ALTER TABLE animals
ADD COLUMN species_id INTEGER REFERENCES species (id);
ALTER TABLE

--------referencing the owners
 ALTER TABLE animals
 ADD COLUMN owner_id INTEGER REFERENCES owners (id);
ALTER TABLE

--- create vet table
CREATE TABLE vets (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  age INTEGER,
  date_of_graduation DATE
);

-- Create the specializations join table
CREATE TABLE specializations (
  vet_id INTEGER REFERENCES vets(id),
  species_id INTEGER REFERENCES species(id),
  PRIMARY KEY (vet_id, species_id)
);

-- Create the visits join table
CREATE TABLE visits (
  animal_id INTEGER REFERENCES animals(id),
  vet_id INTEGER REFERENCES vets(id),
  visit_date DATE,
  PRIMARY KEY (animal_id, vet_id, visit_date)
);