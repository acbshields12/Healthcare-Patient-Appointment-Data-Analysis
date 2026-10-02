create database patient_appointmentDB;
use patient_appointmentDB;

Create table patients (
patient_id varchar(50) Primary Key,
full_name varchar(100),
age int,
gender varchar(50),
city varchar(50),
birthdate date,
age_group varchar(50)
);

create table appointments (
appointment_id varchar(50) Primary Key,
patient_id varchar(50),
doctor varchar(100),
department varchar(100),
appointment_date date,
status varchar(50),
fee int,
Foreign key (patient_id) references patients(patient_id)
);

select *
from patients
;

select *
from appointments
;