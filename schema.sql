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