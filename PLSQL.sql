--Calculate the average price of medicines for each disease.
SET SERVEROUTPUT ON
DECLARE
    CURSOR c_diseases IS
        SELECT disease_id, disease_name FROM disease;
    v_disease_id disease.disease_id%TYPE;
    v_disease_name disease.disease_name%TYPE;
    v_avg_price NUMBER(8,2);
BEGIN
    FOR disease_rec IN c_diseases LOOP;
    .3
        v_disease_id := disease_rec.disease_id;
        v_disease_name := disease_rec.disease_name;

        SELECT AVG(price) INTO v_avg_price
        FROM medicine
        WHERE disease_id = v_disease_id;

        DBMS_OUTPUT.PUT_LINE('Average price of medicines for ' || v_disease_name || ': ' || v_avg_price);
    END LOOP;
END;
/

-- Insert a new patient record with default values for the doctor and disease.
SET SERVEROUTPUT ON
DECLARE
    v_patient_id patient.patient_id%TYPE := 21;
    v_patient_name patient.patient_name%TYPE := 'John Doe';
    v_patient_dob patient.patient_dob%TYPE := TO_DATE('1990-01-01', 'YYYY-MM-DD');
    v_patient_city patient.patient_city%TYPE := 'New York';
    v_patient_disease patient. disease_id%TYPE := 2;
BEGIN
    INSERT INTO patient (patient_id, patient_name, disease_id, patient_dob, patient_city)
    VALUES (v_patient_id, v_patient_name, v_patient_disease, v_patient_dob, v_patient_city);

    DBMS_OUTPUT.PUT_LINE('New patient inserted with ID: ' || v_patient_id);
END;
/


--Fetch and display all doctors and their corresponding hospitals using a cursor.
SET SERVEROUTPUT ON
DECLARE
    CURSOR c_doctors IS
        SELECT d.doctor_id, d.doctor_name, h.hospital_name
        FROM doctor d
        JOIN employ e ON d.doctor_id = e.doctor_id
        JOIN hospital h ON e.hospital_id = h.hospital_id;
    v_doctor_id doctor.doctor_id%TYPE;
    v_doctor_name doctor.doctor_name%TYPE;
    v_hospital_name hospital.hospital_name%TYPE;
BEGIN
    OPEN c_doctors;
    LOOP
        FETCH c_doctors INTO v_doctor_id, v_doctor_name, v_hospital_name;
        EXIT WHEN c_doctors%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Doctor: ' || v_doctor_name || ', Hospital: ' || v_hospital_name);
    END LOOP;
    CLOSE c_doctors;
END;
/

--Array
set serveroutput on
declare 
  counter number;
  med_name medicine.medicine_name%type;
  TYPE ARRA IS VARRAY(5) OF medicine.medicine_name%type; 
  ARR_NAME ARRA:=ARRA();
begin
  counter:=1;
  for x in 8..12 
  loop
    select medicine_name into med_name from medicine where medicine_id=x;
    ARR_NAME.EXTEND();
    ARR_NAME(counter):=med_name;
    counter:=counter+1;
  end loop;
  counter:=1;
  WHILE counter<=ARR_NAME.COUNT 
    LOOP 
    DBMS_OUTPUT.PUT_LINE(ARR_NAME(counter)); 
    counter:=counter+1;
  END LOOP;
end;
/

--Increase the hospital capacity by 10% for hospitals with a capacity less than 100.
SET SERVEROUTPUT ON
BEGIN
    UPDATE hospital
    SET hospital_capacity = hospital_capacity * 1.1
    WHERE hospital_capacity < 100;

    DBMS_OUTPUT.PUT_LINE('Hospital capacities updated.');
END;
/

-- Categorize patient into three categories
SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE categorize_patients AS
BEGIN
  FOR patient_rec IN (SELECT patient_name, patient_dob FROM patient) LOOP
    DECLARE
      patient_age NUMBER;
      patient_category VARCHAR2(10);
    BEGIN
      -- Calculate the patient's age based on the DOB
      patient_age := TRUNC(MONTHS_BETWEEN(SYSDATE, patient_rec.patient_dob) / 12);

      -- Categorize the patient based on age
      IF patient_age < 25 THEN
        patient_category := 'Group A';
      ELSIF patient_age < 40 THEN
        patient_category := 'Group B';
      ELSE
        patient_category := 'Group C';
      END IF;

      -- Print the patient name and category
      DBMS_OUTPUT.PUT_LINE('Patient: ' || patient_rec.patient_name || ', Category: ' || patient_category);
    END;
  END LOOP;
END;
/

--Running the previous procedure
BEGIN
  categorize_patients;
END;
/


--Dropping the procedure 
drop procedure categorize_patients;