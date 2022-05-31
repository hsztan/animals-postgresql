/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name like '%mon';
SELECT * from animals WHERE date_of_birth >= '2016-01-01' AND date_of_birth < '2020-01-01';
SELECT * from animals WHERE escape_attempts > 3 AND neutered = TRUE;
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT (name, escape_attempts) FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = TRUE;
SELECT * FROM animals WHERE name NOT LIKE 'Gabumon';
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

/*Queries that that alter the table.*/
BEGIN;

ALTER TABLE animals
RENAME species TO unspecified;
ROLLBACK;

UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon';

UPDATE animals
SET species = 'pokemon'
WHERE species IS NULL;

BEGIN;

DELETE FROM animals
WHERE date_of_birth > '2022-01-01';

SAVEPOINT SP1;

UPDATE animals
SET weight_kg = weight_kg * -1;

ROLLBACK TO SP1;

UPDATE animals
SET weight_kg = weight_kg * -1
WHERE weight_kg < 0;

COMMIT;

/*Queries to get results.*/

SELECT COUNT(*) FROM animals;

SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

SELECT AVG(weight_kg) FROM animals;

SELECT neutered FROM animals
WHERE escape_attempts = (SELECT MAX(escape_attempts) FROM animals);

SELECT MAX(weight_kg), MIN(weight_kg), species FROM animals
GROUP BY species;

SELECT AVG(escape_attempts), species FROM animals
WHERE date_of_birth > '1990-01-01' AND date_of_birth < '2000-01-01'
GROUP BY species;
