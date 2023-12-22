-- Inserting dummy data into the "disease" table
INSERT INTO disease (disease_id, disease_name, disease_type) VALUES (1, 'Flu', 'Viral');
INSERT INTO disease (disease_id, disease_name, disease_type) VALUES (2, 'Diabetes', 'Chronic');
INSERT INTO disease (disease_id, disease_name, disease_type) VALUES (3, 'Dementia', 'Neurological');
INSERT INTO disease (disease_id, disease_name, disease_type) VALUES (4, 'Common Cold', 'Viral');
INSERT INTO disease (disease_id, disease_name, disease_type) VALUES (5, 'Hypertension', 'Chronic');
INSERT INTO disease (disease_id, disease_name, disease_type) VALUES (6, 'Asthma', 'Respiratory');
INSERT INTO disease (disease_id, disease_name, disease_type) VALUES (7, 'Malaria', 'Infectious');
INSERT INTO disease (disease_id, disease_name, disease_type) VALUES (8, 'Arthritis', 'Musculoskeletal');
INSERT INTO disease (disease_id, disease_name, disease_type) VALUES (9, 'Depression', 'Mental');
INSERT INTO disease (disease_id, disease_name, disease_type) VALUES (10, 'Bronchitis', 'Respiratory');


-- Inserting dummy data into the "doctor" table
INSERT INTO doctor (doctor_id, disease_id, doctor_name, doctor_cntc, doctor_city) VALUES (1, 1, 'Dr. Thibo', 1234567890, 'New York');
INSERT INTO doctor (doctor_id, disease_id, doctor_name, doctor_cntc, doctor_city) VALUES(2, 2, 'Dr. Lunin', 9876543210, 'Los Angeles');
INSERT INTO doctor (doctor_id, disease_id, doctor_name, doctor_cntc, doctor_city) VALUES(3, 3, 'Dr. Navas', 5555555555, 'Chicago');
INSERT INTO doctor (doctor_id, disease_id, doctor_name, doctor_cntc, doctor_city) VALUES(4, 4, 'Dr. Carvjal', 9998887777, 'Dhaka');
INSERT INTO doctor (doctor_id, disease_id, doctor_name, doctor_cntc, doctor_city) VALUES(5, 5, 'Dr. Odriozola', 1112223333, 'Houston');
INSERT INTO doctor (doctor_id, disease_id, doctor_name, doctor_cntc, doctor_city) VALUES(6, 6, 'Dr. Vinicius', 4445556666, 'Miami');
INSERT INTO doctor (doctor_id, disease_id, doctor_name, doctor_cntc, doctor_city) VALUES(7, 7, 'Dr. Neymar', 7778889999, 'Seattle');
INSERT INTO doctor (doctor_id, disease_id, doctor_name, doctor_cntc, doctor_city) VALUES(8, 8, 'Dr. Casemiro', 6667778888, 'Boston');
INSERT INTO doctor (doctor_id, disease_id, doctor_name, doctor_cntc, doctor_city) VALUES(9, 9, 'Dr. Ceballos', 2223334444, 'Denver');
INSERT INTO doctor (doctor_id, disease_id, doctor_name, doctor_cntc, doctor_city) VALUES(10, 10, 'Dr. Valvarde', 8889990000, 'Dallas');
INSERT INTO doctor (doctor_id, disease_id, doctor_name, doctor_cntc, doctor_city) VALUES(11, 1, 'Dr. Clark', 4444444444, 'New York');
INSERT INTO doctor (doctor_id, disease_id, doctor_name, doctor_cntc, doctor_city) VALUES(12, 1, 'Dr. Martinez', 5555555555, 'Los Angeles');
INSERT INTO doctor (doctor_id, disease_id, doctor_name, doctor_cntc, doctor_city) VALUES(13, 1, 'Dr. Turner', 6666666666, 'Chicago');
INSERT INTO doctor (doctor_id, disease_id, doctor_name, doctor_cntc, doctor_city) VALUES(14, 1, 'Dr. Taylor', 7777777777, 'Dhaka');
INSERT INTO doctor (doctor_id, disease_id, doctor_name, doctor_cntc, doctor_city) VALUES(15, 1, 'Dr. Marcelo', 8888888888, 'Houston');

-- Inserting dummy data into the "patient" table
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (1, 1, 1, 'Cristiano Ronaldo', TO_DATE('2001-05-16', 'YYYY-MM-DD'), 'New York');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (2, 2, 2, 'Toni Kroos',TO_DATE('1900-05-10', 'YYYY-MM-DD'), 'Los Angeles');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (3, 3, 3, 'Michael Johnson',TO_DATE('1978-12-15', 'YYYY-MM-DD'), 'Chicago');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (4, 4, 4, 'Emily Williams',TO_DATE('1995-08-20', 'YYYY-MM-DD'), 'Dhaka');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (5, 5, 5, 'Dan Brown',TO_DATE('1982-04-05', 'YYYY-MM-DD'), 'Houston');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (6, 6, 6, 'Luke Modric',TO_DATE('1992-11-30', 'YYYY-MM-DD'), 'Miami');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (7, 7, 7, 'Alphonso Davias',TO_DATE('1975-07-18', 'YYYY-MM-DD'), 'Seattle');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (8, 8, 8, 'Jaoa Felix',TO_DATE('1988-03-25', 'YYYY-MM-DD'), 'Boston');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (9, 9, 9, 'Declan Rice', TO_DATE('2005-06-12', 'YYYY-MM-DD'), 'Denver');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (10, 10, 10, 'Lionel Messi', TO_DATE('1994-09-08', 'YYYY-MM-DD'), 'Dallas');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (11, 11, 1, 'Emilia Clark', TO_DATE('1993-02-14', 'YYYY-MM-DD'), 'New York');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (12, 12, 1, 'Harry Kane', TO_DATE('1979-11-27', 'YYYY-MM-DD'), 'Los Angeles');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (13, 13, 1, 'Taylor Swift', TO_DATE('1987-07-07', 'YYYY-MM-DD'), 'Chicago');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (14, 14, 1, 'Paul Pogba', TO_DATE('1991-04-18', 'YYYY-MM-DD'), 'Dhaka');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (15, 15, 1, 'Jude Bellingham', TO_DATE('1927-09-30', 'YYYY-MM-DD'), 'Houston');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (16, 1, 1, 'Oliver Johnson', TO_DATE('1997-12-08', 'YYYY-MM-DD'), 'New York');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (17, 2, 2, 'James Rodriguez', TO_DATE('1984-06-22', 'YYYY-MM-DD'), 'Los Angeles');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (18, 3, 3, 'Lucas Anderson', TO_DATE('1990-03-16', 'YYYY-MM-DD'), 'Chicago');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (19, 4, 4, 'Harry Kane', TO_DATE('1981-08-11', 'YYYY-MM-DD'), 'Dhaka');
INSERT INTO patient (patient_id, doctor_id, disease_id, patient_name, patient_dob, patient_city) VALUES (20, 5, 5, 'Jon Snow', TO_DATE('1996-05-05', 'YYYY-MM-DD'), 'Houston');

-- Inserting dummy data into the "hospital" table
INSERT INTO hospital (hospital_id, hospital_name, hospital_capacity, hospital_city) VALUES (1, 'ABC Hospital', 200, 'New York');
INSERT INTO hospital (hospital_id, hospital_name, hospital_capacity, hospital_city) VALUES(2, 'XYZ Medical Center', 150, 'Los Angeles');
INSERT INTO hospital (hospital_id, hospital_name, hospital_capacity, hospital_city) VALUES(3, 'City General Hospital', 300, 'Chicago');
INSERT INTO hospital (hospital_id, hospital_name, hospital_capacity, hospital_city) VALUES(4, 'Sunset Medical Center', 100, 'Dhaka');

-- Inserting dummy data into the "employ" table
INSERT INTO employ (doctor_id, hospital_id) VALUES (1, 1);
INSERT INTO employ (doctor_id, hospital_id) VALUES (2, 2);
INSERT INTO employ (doctor_id, hospital_id) VALUES (3, 3);
INSERT INTO employ (doctor_id, hospital_id) VALUES (4, 4);
INSERT INTO employ (doctor_id, hospital_id) VALUES (5, 1);
INSERT INTO employ (doctor_id, hospital_id) VALUES (6, 2);
INSERT INTO employ (doctor_id, hospital_id) VALUES (7, 3);
INSERT INTO employ (doctor_id, hospital_id) VALUES (8, 4);
INSERT INTO employ (doctor_id, hospital_id) VALUES (9, 1);
INSERT INTO employ (doctor_id, hospital_id) VALUES (10, 2);
INSERT INTO employ (doctor_id, hospital_id) VALUES (11, 3);
INSERT INTO employ (doctor_id, hospital_id) VALUES (12, 4);
INSERT INTO employ (doctor_id, hospital_id) VALUES (13, 1);
INSERT INTO employ (doctor_id, hospital_id) VALUES (14, 2);
INSERT INTO employ (doctor_id, hospital_id) VALUES (15, 3);

-- Inserting dummy data into the "medicine" table
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES (1, 'Medicine A', 1, 10.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(2, 'Medicine B', 1, 15.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(3, 'Medicine C', 3, 8.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(4, 'Medicine D', 4, 12.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(5, 'Medicine E', 5, 9.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(6, 'Medicine F', 6, 11.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(7, 'Medicine G', 7, 14.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(8, 'Medicine H', 8, 7.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(9, 'Medicine I', 9, 16.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(10, 'Medicine J', 10, 13.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(11, 'Medicine K', 1, 11.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(12, 'Medicine L', 2, 13.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(13, 'Medicine M', 2, 9.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(14, 'Medicine N', 2, 14.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(15, 'Medicine O', 4, 12.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(16, 'Medicine P', 6, 8.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(17, 'Medicine Q', 7, 11.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(18, 'Medicine R', 8, 10.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(19, 'Medicine S', 9, 15.99);
INSERT INTO medicine (medicine_id, medicine_name, disease_id, price) VALUES(20, 'Medicine T', 10, 9.99);

--  QUERY ---



-- Retrieve the count of patients for each disease from the "patient" table using the GROUP BY clause.
SELECT disease_id, COUNT(patient_id) AS patient_count
FROM patient
GROUP BY disease_id;

--Retrieve the diseases with more than 5 patients from the "patient" table using the HAVING clause.
SELECT disease_id, COUNT(patient_id) AS patient_count
FROM patient
GROUP BY disease_id
HAVING COUNT(patient_id) > 5;

--Retrieve the names of patients who have a disease that is of type "Chronic" from the "patient" and "disease" tables using a nested subquery.
SELECT patient_name
FROM patient
WHERE disease_id IN (SELECT disease_id FROM disease WHERE disease_type = 'Chronic');

--Retrieve the names of patients who have a disease either of type "Chronic" or "Viral" from the "patient" and "disease" tables using the OR set membership operator.
SELECT patient_name
FROM patient
WHERE disease_id IN (SELECT disease_id FROM disease WHERE disease_type = 'Chronic')
   OR disease_id IN (SELECT disease_id FROM disease WHERE disease_type = 'Viral');

--Retrieve the names of patients who do not have a disease of type "Chronic" from the "patient" and "disease" tables using the NOT set membership operator.
SELECT patient_name
FROM patient
WHERE disease_id NOT IN (SELECT disease_id FROM disease WHERE disease_type = 'Chronic');

--Retrieve the names of patients who have at least one medicine that can be prescribed for their disease from the "patient" and "medicine" tables using the EXISTS operator.
SELECT p.patient_name
FROM patient p
WHERE EXISTS (SELECT * FROM medicine m WHERE p.disease_id = m.disease_id);

--Retrieve the names of patients who have all the medicines prescribed for their disease from the "patient" and "medicine" tables using the ALL operator
SELECT p.patient_name
FROM patient p
WHERE p.disease_id = ALL (SELECT m.disease_id FROM medicine m WHERE m.disease_id = p.disease_id); --only dementia has no medicine registered 



--Retrieve the name of patients and the city name whose city starts with 'D' from the "patient" table using string operations.
SELECT patient_name,patient_city
FROM patient
WHERE patient_city LIKE 'D%';

--Retrieve the patient name, doctor name, and disease name for patients who are treated by the doctor and have the disease from the "patient", "doctor", and "disease" tables using a join operation.
SELECT p.patient_name, d.doctor_name, di.disease_name
FROM patient p
JOIN doctor d ON p.doctor_id = d.doctor_id
JOIN disease di ON p.disease_id = di.disease_id;


--Retrieve the patient name, doctor name, and hospital name for patients who are treated by a doctor working at the same hospital from the "patient", "doctor", and "employ" tables using a join operation.Retrieve the patient name, doctor name, and hospital name for patients who are treated by a doctor working at the same hospital from the "patient", "doctor", and "employ" tables using a join operation.
SELECT p.patient_name, d.doctor_name, h.hospital_name
FROM patient p
JOIN doctor d ON p.doctor_id = d.doctor_id
JOIN employ e ON d.doctor_id = e.doctor_id
JOIN hospital h ON e.hospital_id = h.hospital_id;


--Retrieve the patient name, doctor name, and medicine name for patients who are prescribed medicine for their disease from the "patient", "doctor", and "medicine" tables using a join operation.
SELECT p.patient_name, d.doctor_name, m.medicine_name
FROM patient p
JOIN doctor d ON p.doctor_id = d.doctor_id
JOIN medicine m ON p.disease_id = m.disease_id;

--Retrieve the names of patients along with the total count of patients treated by each doctor from the "patient" and "doctor" tables using a join operation and the GROUP BY clause.
SELECT d.doctor_name, COUNT(p.patient_id) AS patient_count
FROM patient p
JOIN doctor d ON p.doctor_id = d.doctor_id
GROUP BY d.doctor_name;



--Create a view named "patient_view" that retrieves the patient ID, patient name, doctor name, and disease name from the "patient", "doctor", and "disease" tables.
CREATE VIEW patient_view AS
SELECT p.patient_id, p.patient_name, d.doctor_name, di.disease_name
FROM patient p
JOIN doctor d ON p.doctor_id = d.doctor_id
JOIN disease di ON p.disease_id = di.disease_id;

--Retrieve data from the "patient_view" view.
SELECT * FROM patient_view;

--Update the "patient_view" view to include only patients who have a disease of type "Chronic".
CREATE OR REPLACE VIEW patient_view AS
SELECT p.patient_id, p.patient_name, d.doctor_name, di.disease_name
FROM patient p
JOIN doctor d ON p.doctor_id = d.doctor_id
JOIN disease di ON p.disease_id = di.disease_id
WHERE di.disease_type = 'Chronic';

--Delete the "patient_view" view.
DROP VIEW patient_view;

commit;