-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT,
  seat TEXT
);

CREATE TABLE airport
(
  id SERIAL PRIMARY KEY,
  departure INTEGER NOT NULL,
  arrival INTEGER,
  airline TEXT
);

CREATE TABLE inital destination
( 
  id SERIAL PRIMARY KEY,
  from_city TEXT,
  from_country TEXT
);

CREATE TABLE final destination
( 
  id SERIAL PRIMARY KEY,
  to_city TEXT,
  to_country TEXT
);

INSERT INTO tickets
  (first_name, last_name, seat)
VALUES
  ('Jennifer', 'Finch', '33B'),
  ('Thadeus', 'Gathercoal', '8A'),
  ('Sonja', 'Pauley', '12F'),
  ('Jennifer', 'Finch', '20A'),
  ('Waneta', 'Skeleton', '23D'), 
  ('Thadeus', 'Gathercoal', '18C'),
  ('Berkie', 'Wycliff', '9E'),
  ('Alvin', 'Leathes', '1A'),
  ('Berkie', 'Wycliff', '32B'), 
  ('Cory', 'Squibbes', '10D');

  INSERT INTO airport
  (departure, arrival, airline)
VALUES
  ('2018-04-08 09:00:00', '2018-04-08 12:00:00', 'United'),
  ('2018-12-19 12:45:00', '2018-12-19 16:15:00', 'British Airways'),
  ('2018-01-02 07:00:00', '2018-01-02 08:03:00', 'Delta'), 
  ('2018-04-15 16:50:00', '2018-04-15 21:00:00', 'Delta'), 
  ('2018-08-01 18:30:00', '2018-08-01 21:50:00', 'TUI Fly Belgium'), 
  ('2018-10-31 01:15:00', '2018-10-31 12:55:00', 'Air China'), 
  ('2019-02-06 06:00:00', '2019-02-06 07:47:00', 'United'), 
  ('2018-12-22 14:42:00', '2018-12-22 15:56:00', 'American Airlines'), 
  ('2019-02-06 16:28:00', '2019-02-06 19:18:00', 'American Airlines'), 
  ('2019-01-20 19:30:00', '2019-01-20 22:45:00', 'Avianca Brasil'); 

INSERT INTO initial destination
  (from_city, from_country, to_city, to_country)
VALUES
  ('Washington DC', 'United States'),
  ('Tokyo', 'Japan'),
  ('Los Angeles', 'United States'),
  ('Seattle', 'United States'),
  ('Paris', 'France'),
  ('Dubai', 'UAE'),
  ('New York', 'United States'),
  ('Cedar Rapids', 'United States'),
  ('Charlotte', 'United States'),
  ('Sao Paolo', 'Brazil');

  INSERT INTO final destination
  (to_city, to_country)
VALUES
  ('Seattle', 'United States'),
  ('London', 'United Kingdom'),
  ('Las Vegas', 'United States'),
  ('Mexico City', 'Mexico'),
  ('Casablanca', 'Morocco'),
  ('Beijing', 'China'),
  ('Charlotte', 'United States'),
  ('Chicago', 'United States'),
  ('New Orleans', 'United States'),
  ('Santiago', 'Chile');