CREATE DATABASE Hospital;

/* SIDE NOTE for foreign keys */
/* FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
 */
USE Hospital;
/* Current Patient */
CREATE TABLE current_patient(
  current_patient_id INT AUTO_INCREMENT NOT NULL,
  current_patient_name VARCHAR(45) NOT NULL,
  checked_in BOOLEAN default false,
  primary key(current_patient_id),
  foreign key(diagnosis) REFERENCES Diagnosis (diagnosis_id)
);
/* Patient */
CREATE TABLE Patient(
  patient_id INT AUTO_INCREMENT NOT NULL,
  patient_name VARCHAR(45) NOT NULL,
  patient_weight INT AUTO_INCREMENT NOT NULL,
  blood_type VARCHAR(4) NOT NULL,
  primary key(patient_id)
   foreign key((Diagnosis) REFERENCES Diagnosis (diagnosis_id), (Disease) REFERENCES Disease (disease_id))
);
/* Diagnosis */
CREATE TABLE Diagnosis(
  diagnosis_id INT AUTO_INCREMENT NOT NULL,
  doctor_id INT AUTO_INCREMENT NOT NULL,
  date INT AUTO_INCREMENT NOT NULL,
  procedure VARCHAR(150) NOT NULL,
  primary key(patient_id)
   foreign key(Employee) REFERENCES Employee (employee_id)
);
/*  Disease*/
CREATE TABLE Disease(
  disease_id INT AUTO_INCREMENT NOT NULL,
  disease_name VARCHAR(45) NOT NULL,
 treatable BOOLEAN,
  primary key(disease_id)
   foreign key(Employee) REFERENCES Employee(employee_id), (Diagnosis) REFERENCES Diagnosis(diagnosis_id)
);
/* Employee */
CREATE TABLE Employee(
  employee_id INT AUTO_INCREMENT NOT NULL,
  employee_name VARCHAR(45) NOT NULL,
  phone_number INT AUTO_INCREMENT NOT NULL,
  primary key(employee_id)
   foreign key(Role) REFERENCES Role(role_id)
);
/*  Role */
CREATE TABLE Role(
  role_id INT AUTO_INCREMENT NOT NULL,
  role_name VARCHAR(45) NOT NULL,
  department_name VARCHAR(20) NOT NULL,
  primary key(role_id)
   foreign key(Employee) REFERENCES Employee(employee_id)
);
/* Room */
CREATE TABLE Room(
  room_id INT AUTO_INCREMENT NOT NULL,
  room_number INT AUTO_INCREMENT NOT NULL,
  primary key(room_id)
   foreign key(Patient) REFERENCES Patient(patient_id), (Employee) REFERENCES Employee(employee_id), (Diagnosis) REFERENCES Diagnosis(diagnosis_id), (Disease) REFERENCES Disease(disease_id)
);
/* Room type */
CREATE TABLE Room_Type(
  room_type_id INT AUTO_INCREMENT NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  primary key(room-type_id)
   foreign key(Patient) REFERENCES Patient(patient_id), (Employee) REFERENCES Empl
);