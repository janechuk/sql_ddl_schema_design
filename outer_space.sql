-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;


CREATE TABLE moons
(
  id SERIAL PRIMARY KEY,
  name TEXT 
);


CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL,
  galaxy TEXT NOT NULL
);


CREATE TABLE planets_moons
(
    id SERIAL PRIMARY KEY,
    moon_id INTEGER REFERENCES moons (id),
    planet_id INTEGER REFERENCES planets (id)
);


INSERT INTO planets
  (name, orbital_period_in_years, orbits_around, galaxy)
VALUES
  ('Earth', 1.00, 'The Sun', 'Milky Way'),
  ('Mars', 1.88, 'The Sun', 'Milky Way'),
  ('Venus', 0.62, 'The Sun', 'Milky Way'),
  ('Neptune', 164.8, 'The Sun', 'Milky Way'),
  ('Proxima Centauri b', 0.03, 'Proxima Centauri', 'Milky Way'),
  ('Gliese 876 b', 0.23, 'Gliese 876', 'Milky Way');

INSERT INTO moons
  (name)
VALUES
  ('The Moon'),
  ('Phobos'),
  ('Deimos'),
  ('Naiad'),
  ('Thalassa'),
  ('Despina'),
  ('Galatea'),
  ('Larissa'),
  ('S/2004 N 1'),
  ('Proteus'),
  ('Triton'),
  ('Nereid'),
  ('Halimede'),
  ('Sao'),
  ('Laomedeia'),
  ('Psamathe'),
  ('Neso');

 INSERT INTO planets_moons
   (planet_id, moon_id) 
 VALUES 
 (1, 1),
 (2, 2),
 (2, 3),
 (4, 4),
 (4, 5),
 (4, 6),
 (4, 7),
 (4, 8),
 (4, 9),
 (4, 10);




--     ('Earth', 1.00, 'The Sun', 'Milky Way', '{"The Moon"}'),
--   ('Mars', 1.88, 'The Sun', 'Milky Way', '{"Phobos", "Deimos"}'),
--   ('Venus', 0.62, 'The Sun', 'Milky Way', '{}'),
--   ('Neptune', 164.8, 'The Sun', 'Milky Way', '{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}'),
--   ('Proxima Centauri b', 0.03, 'Proxima Centauri', 'Milky Way', '{}'),
--   ('Gliese 876 b', 0.23, 'Gliese 876', 'Milky Way', '{}');