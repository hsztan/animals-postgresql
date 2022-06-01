/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (1, 'Agumon', '2020-02-03', 0, TRUE, 10.23);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (2, 'Gabumon', '2018-11-15', 2, TRUE, 8.0);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (3, 'Pikachu', '2021-01-07', 1, FALSE, 15.04);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (4, 'Devimon', '2017-05-12', 5, TRUE, 11.00);

INSERT INTO animals (id, name, date_of_birth, weight_kg, neutered,escape_attempts, species)
VALUES (5, 'Charmander', '2020-02-08', -11.0, FALSE, 0, 'cat');

INSERT INTO animals (id, name, date_of_birth, weight_kg, neutered,escape_attempts, species)
VALUES (6, 'Plantmon', '2021-11-15', -5.0, TRUE, 2, 'cat');

INSERT INTO animals (id, name, date_of_birth, weight_kg, neutered,escape_attempts, species)
VALUES (7, 'Squirtle', '1993-4-2', -12.3, FALSE, 3, 'cat');

INSERT INTO animals (id, name, date_of_birth, weight_kg, neutered,escape_attempts, species)
VALUES (8, 'Angemon', '2005-06-12', -45.0, TRUE, 1, 'cat');

INSERT INTO animals (id, name, date_of_birth, weight_kg, neutered,escape_attempts, species)
VALUES (9, 'Boarmon', '2005-06-07', 20.4, TRUE, 7, 'cat');

INSERT INTO animals (id, name, date_of_birth, weight_kg, neutered,escape_attempts, species)
VALUES (10, 'Blossom', '1998-10-13', 17.0, TRUE, 3, 'cat');

INSERT INTO animals (id, name, date_of_birth, weight_kg, neutered,escape_attempts, species)
VALUES (11, 'Ditto', '2022-05-14', 22.0, TRUE, 4, 'cat');

/* Data for owners table */

INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34);

INSERT INTO owners (full_name, age)
VALUES ('Jennifer Orwell', 19);

INSERT INTO owners (full_name, age)
VALUES ('Bob', 45);

INSERT INTO owners (full_name, age)
VALUES ('Melody Pond', 77);

INSERT INTO owners (full_name, age)
VALUES ('Dean Winchester', 14);

INSERT INTO owners (full_name, age)
VALUES ('Jodie Whittaker', 38);

/* Data for species table */

INSERT INTO species (name)
VALUES ('Pokemon');

INSERT INTO species (name)
VALUES ('Digimon');

/* Animal owner relationship */

UPDATE animals
SET species_id = 2
WHERE name LIKE '%mon';

UPDATE animals
SET species_id = 1
WHERE species_id IS NULL;

UPDATE animals
SET owner_id = 1
WHERE name = 'Agumon';

UPDATE animals
SET owner_id = 2
WHERE name = 'Pikachu' OR name = 'Gabumon';

UPDATE animals
SET owner_id = 3
WHERE name = 'Devimon' OR name = 'Plantmon';

UPDATE animals
SET owner_id = 4
WHERE name = 'Charmander' OR name = 'Squirtle'
OR name = 'Blossom';

UPDATE animals
SET owner_id = 5
WHERE name = 'Angemon' OR name = 'Boarmon';

-- Insertions for many to many relationships

-- Insert Vets data

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('William Tatcher', 45, '2000-04-23');

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('Maisy Smith', 26, '2019-01-17');

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('Stephanie Mendez', 64, '1981-05-04');

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('Jack Harkness', 38, '2008-06-08');

-- Insert Specialties data

INSERT INTO specializations (vet_id, species_id)
VALUES (4, 1);

INSERT INTO specializations (vet_id, species_id)
VALUES (6, 2);

INSERT INTO specializations (vet_id, species_id)
VALUES (6, 1);

INSERT INTO specializations (vet_id, species_id)
VALUES (7, 2);

-- Insert Visits data

INSERT INTO visits (animal_id, vet_id, date)
VALUES (2, 4, '2020-05-24');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (2, 6, '2020-07-22');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (3, 7, '2021-02-02');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (6, 5, '2020-01-05');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (6, 5, '2020-03-08');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (6, 5, '2020-05-14');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (4, 6, '2021-05-04');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (10, 7, '2021-02-24');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (8, 5, '2019-12-21');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (8, 4, '2020-08-10');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (8, 5, '2021-04-07');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (11, 6, '2019-09-29');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (9, 7, '2020-10-03');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (9, 7, '2020-11-04');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (5, 5, '2019-01-24');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (5, 5, '2019-05-15');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (5, 5, '2020-02-27');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (5, 5, '2020-08-03');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (7, 6, '2020-05-24');

INSERT INTO visits (animal_id, vet_id, date)
VALUES (7, 4, '2021-01-11');