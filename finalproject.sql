-- Create database
CREATE DATABASE IF NOT EXISTS ClinicBookingSystem;
USE ClinicBookingSystem;

-- Table: Specializations
CREATE TABLE Specializations (
    specialization_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Table: Doctors
CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(20) NOT NULL UNIQUE,
    specialization_id INT NOT NULL,
    FOREIGN KEY (specialization_id) REFERENCES Specializations(specialization_id)
);

-- Table: Patients
CREATE TABLE Patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20) UNIQUE
);

-- Table: Appointments
CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    reason TEXT,
    status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    UNIQUE(patient_id, doctor_id, appointment_date)
);

-- Table: Prescriptions
CREATE TABLE Prescriptions (
    prescription_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL UNIQUE,
    medication TEXT NOT NULL,
    dosage TEXT NOT NULL,
    notes TEXT,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

-- Insert data into Specializations
INSERT INTO Specializations (name) VALUES
('General Practitioner'),
('Cardiologist'),
('Dermatologist'),
('Pediatrician');

-- Insert data into Doctors
INSERT INTO Doctors (full_name, email, phone_number, specialization_id) VALUES
('Dr. John Smith', 'john.smith@clinic.com', '0712345678', 1),
('Dr. Lisa Ray', 'lisa.ray@clinic.com', '0723456789', 2),
('Dr. Ahmed Musa', 'ahmed.musa@clinic.com', '0734567890', 3),
('Dr. Mary Njeri', 'mary.njeri@clinic.com', '0745678901', 4);

-- Insert data into Patients
INSERT INTO Patients (full_name, date_of_birth, gender, email, phone_number) VALUES
('Alice Johnson', '1990-05-20', 'Female', 'alice.johnson@gmail.com', '0765432109'),
('Brian Kim', '1985-11-10', 'Male', 'brian.kim@gmail.com', '0754321098'),
('Christine Mwangi', '2001-07-15', 'Female', 'christine.mwangi@gmail.com', '0787654321');

-- Insert data into Appointments
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, reason, status) VALUES
(1, 1, '2025-05-15 09:00:00', 'Regular Checkup', 'Completed'),
(2, 2, '2025-05-16 10:30:00', 'Chest pain', 'Completed'),
(3, 3, '2025-05-17 11:00:00', 'Skin rash', 'Completed'),
(1, 4, '2025-05-20 14:00:00', 'Child vaccination', 'Scheduled');

-- Insert data into Prescriptions
INSERT INTO Prescriptions (appointment_id, medication, dosage, notes) VALUES
(1, 'Paracetamol', '500mg twice daily', 'Take after meals'),
(2, 'Aspirin', '100mg once daily', 'Take in the morning'),
(3, 'Hydrocortisone Cream', 'Apply twice daily', 'Avoid sunlight on area');
-- Create database
CREATE DATABASE IF NOT EXISTS ClinicBookingSystem;
USE ClinicBookingSystem;

-- Table: Specializations
CREATE TABLE Specializations (
    specialization_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Table: Doctors
CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(20) NOT NULL UNIQUE,
    specialization_id INT NOT NULL,
    FOREIGN KEY (specialization_id) REFERENCES Specializations(specialization_id)
);

-- Table: Patients
CREATE TABLE Patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20) UNIQUE
);

-- Table: Appointments
CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    reason TEXT,
    status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    UNIQUE(patient_id, doctor_id, appointment_date)
);

-- Table: Prescriptions
CREATE TABLE Prescriptions (
    prescription_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL UNIQUE,
    medication TEXT NOT NULL,
    dosage TEXT NOT NULL,
    notes TEXT,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

-- Insert data into Specializations
INSERT INTO Specializations (name) VALUES
('General Practitioner'),
('Cardiologist'),
('Dermatologist'),
('Pediatrician');

-- Insert data into Doctors
INSERT INTO Doctors (full_name, email, phone_number, specialization_id) VALUES
('Dr. John Smith', 'john.smith@clinic.com', '0712345678', 1),
('Dr. Lisa Ray', 'lisa.ray@clinic.com', '0723456789', 2),
('Dr. Ahmed Musa', 'ahmed.musa@clinic.com', '0734567890', 3),
('Dr. Mary Njeri', 'mary.njeri@clinic.com', '0745678901', 4);

-- Insert data into Patients
INSERT INTO Patients (full_name, date_of_birth, gender, email, phone_number) VALUES
('Alice Johnson', '1990-05-20', 'Female', 'alice.johnson@gmail.com', '0765432109'),
('Brian Kim', '1985-11-10', 'Male', 'brian.kim@gmail.com', '0754321098'),
('Christine Mwangi', '2001-07-15', 'Female', 'christine.mwangi@gmail.com', '0787654321');

-- Insert data into Appointments
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, reason, status) VALUES
(1, 1, '2025-05-15 09:00:00', 'Regular Checkup', 'Completed'),
(2, 2, '2025-05-16 10:30:00', 'Chest pain', 'Completed'),
(3, 3, '2025-05-17 11:00:00', 'Skin rash', 'Completed'),
(1, 4, '2025-05-20 14:00:00', 'Child vaccination', 'Scheduled');

-- Insert data into Prescriptions
INSERT INTO Prescriptions (appointment_id, medication, dosage, notes) VALUES
(1, 'Paracetamol', '500mg twice daily', 'Take after meals'),
(2, 'Aspirin', '100mg once daily', 'Take in the morning'),
(3, 'Hydrocortisone Cream', 'Apply twice daily', 'Avoid sunlight on area');
