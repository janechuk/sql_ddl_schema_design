DROP DATABASE IF EXISTS  medical;

CREATE DATABASE medical;

\c medical

CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  dr_firstname TEXT NOT NULL,
  dr_lastname TEXT NOT NULL,
  specialization TEXT NOT NULL  
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  p_firstname TEXT NOT NULL,
  p_lastname TEXT NOT NULL,
  health_card INTEGER NOT NULL,
  doctor_id INTEGER REFERENCES doctors(id)
);


CREATE TABLE diagnosis (
  id SERIAL PRIMARY KEY,
  disease TEXT,
  requires_hospitalization BOOLEAN NOT NULL 
);


CREATE TABLE patients_diagnosis (
  id SERIAL PRIMARY KEY,
  patient_id INTEGER REFERENCES patients (id),
  diagnosis_id INTEGER REFERENCES diagnosis (id)
);


INSERT INTO doctors (dr_firstname, dr_lastname, specialization) VALUES ('Bob', 'McMorris', 'Cardiologist');

INSERT INTO patients (p_firstname, p_lastname, health_card, doctor_id) VALUES ('Julies', 'Paterson', 65835, 1)

INSERT INTO diagnosis (disease, requires_hospitalization) VALUES ('Boredom', yes)

INSERT INTO patients_diagnosis (patient_id, diagnosis_id) VALUES (1, 1)