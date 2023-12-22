DROP TABLE patient;
DROP TABLE medicine;
DROP TABLE employ;
DROP TABLE doctor;
DROP TABLE disease;
DROP TABLE hospital;

CREATE TABLE disease
(
    disease_id number(20),
    disease_name varchar(30),
    disease_type varchar(20),
    primary key(disease_id)
);

CREATE TABLE doctor
(
    doctor_id number(20),
    disease_id number(20) NOT NULL,
    doctor_name varchar(30),
    doctor_cntc number(11),
    doctor_city varchar(20),
    primary key(doctor_id),
    foreign key(disease_id) references disease(disease_id)
    on delete cascade
);

CREATE TABLE patient
(
    patient_id number(20),
    doctor_id number(20),
    disease_id number(20) NOT NULL,
    patient_name varchar(30),
    patient_dob DATE,
    patient_city varchar(20),
    primary key(patient_id),
    foreign key(doctor_id) references doctor(doctor_id)
    on delete cascade ,
    foreign key(disease_id) references disease(disease_id)
    on delete cascade 
);

CREATE TABLE hospital
(
    hospital_id number(20),
    hospital_name varchar(30),
    hospital_capacity number(4),
    hospital_city varchar(20),
    primary key(hospital_id)
);

CREATE TABLE employ
(
    doctor_id number(20),
    hospital_id number(20),
    primary key(doctor_id),
    foreign key(doctor_id) references doctor(doctor_id)
    on delete cascade,
    foreign key(hospital_id) references hospital(hospital_id)
    on delete cascade
);

CREATE TABLE medicine
(
    medicine_id number(20),
    medicine_name varchar(30),
    disease_id number(20),
    price number(6),
    primary key(medicine_id),
    foreign key(disease_id) references disease(disease_id)
    on delete cascade
);


--Alter TABLE

--Add column in the TABLE
alter table medicine add manufac_date char(20);

--Modify column in the TABLE
alter table medicine modify manufac_date DATE;

--Rename Column NAME
alter table medicine rename column manufac_date to manf_date;

--Drop Column NAME
alter table medicine drop column manf_date;



--setting the line size and pize size

set pagesize 100
set linesize 200