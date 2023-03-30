-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space

\c outer_space

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  planet TEXT NOT NULL,
  moons TEXT,
);

CREATE TABLE orbits 
(
  id SERIAL PRIMARY KEY,
  orbital_period_in_years INTEGER,
  orbits_around TEXT, 
  galaxy TEXT
);


INSERT INTO planets
  (planet, moons)
VALUES
  ('Earth', '{"The Moon"}'),
  ('Mars', '{"Phobos", "Deimos"}'),
  ('Venus', '{}'),
  ('Neptune', '{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}'),
  ('Proxima Centauri b','{}'),
  ('Gliese 876 b', '{}');

INSERT INTO orbits
  (orbital_period_in_years, orbits_around, galaxy)
VALUES
  ( 1.00, 'The Sun', 'Milky Way'),
  ( 1.88, 'The Sun', 'Milky Way'), 
  ( 0.62, 'The Sun', 'Milky Way'),
  ( 164.8, 'The Sun', 'Milky Way'),
  ( 0.03, 'Proxima Centauri', 'Milky Way'),
  ( 0.23, 'Gliese 876', 'Milky Way'),
