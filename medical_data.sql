DROP DATABASE IF EXISTS  medical;

CREATE DATABASE medical;

\c medical

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  p_firstname TEXT NOT NULL,
  p_lastname TEXT NOT NULL,
  health_card TEXT NOT NULL,
  doctors_id INTEGER REFERENCES doctors
);


CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  dr_firstname TEXT NOT NULL,
  dr_lastname TEXT NOT NULL,
  specialization TEXT NOT NULL  
);


CREATE TABLE diagnosis (
  id SERIAL PRIMARY KEY,
  disease TEXT,
  requires_hospitalization BOOLEAN NOT NULL 
);


CREATE TABLE patients_diagnosis (
  id SERIAL PRIMARY KEY,
  patients_id INTEGER REFERENCES patients,
  diagnosis_id INTEGER REFERENCES diagnosis 
);