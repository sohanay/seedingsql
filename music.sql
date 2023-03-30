-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT
);

CREATE TABLE info
(
  id SERIAL PRIMARY KEY,
  duration_in_seconds INTEGER,
  release_date DATE
);

CREATE TABLE talent
(
  id SERIAL PRIMARY KEY,
  artists TEXT,
  album TEXT,
  producers TEXT
);

INSERT INTO songs
  (title)
VALUES
  ('MMMBop'),
  ('Bohemian Rhapsody'),
  ('One Sweet Day'),
  ('Shallow'),
  ('How You Remind Me'),
  ('New York State of Mind'),
  ('Dark Horse'),
  ('Moves Like Jagger'),
  ('Complicated'),
  ('Say My Name');

INSERT INTO info
  (duration_in_seconds, release_date)
VALUES
  (238, '04-15-1997'),
  (355, '10-31-1975'),
  (282, '11-14-1995'),
  (216, '09-27-2018'),
  (223, '08-21-2001'), 
  (276, '10-20-2009'), 
  (215, '12-17-2013'), 
  (201, '06-21-2011'), 
  (244, '05-14-2002'), 
  (240, '11-07-1999');

INSERT INTO talent
  (artists, album, producers)
VALUES
  ('{"Hanson"}', 'Middle of Nowhere', '{"Dust Brothers", "Stephen Lironi"}'),
  ('{"Queen"}', 'A Night at the Opera', '{"Roy Thomas Baker"}'),
  ('{"Mariah Cary", "Boyz II Men"}', 'Daydream', '{"Walter Afanasieff"}'),
  ('{"Lady Gaga", "Bradley Cooper"}', 'A Star Is Born', '{"Benjamin Rice"}'),
  ('{"Nickelback"}', 'Silver Side Up', '{"Rick Parashar"}'),
  ('{"Jay Z", "Alicia Keys"}', 'The Blueprint 3', '{"Al Shux"}'),
  ('{"Katy Perry", "Juicy J"}', 'Prism', '{"Max Martin", "Cirkut"}'),
  ('{"Maroon 5", "Christina Aguilera"}', 'Hands All Over', '{"Shellback", "Benny Blanco"}'),
  ('{"Avril Lavigne"}', 'Let Go', '{"The Matrix"}'),
  ('{"Destiny''s Child"}', 'The Writing''s on the Wall', '{"Darkchild"}');

