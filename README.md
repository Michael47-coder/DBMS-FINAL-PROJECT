# 📝PROJECT TITTLE: CLINIK BOOKING SYSTEM


# ✅ Use Case: Clinic Booking System
Entities:
.Patients
.Doctors
.Appointments
.Specializations
.Prescriptions

# Relationships:
One doctor can have one specialization → 1-M
One patient can have many appointments → 1-M
One doctor can have many appointments → 1-M
One appointment can have one prescription → 1-1

## 🏥 Clinic Booking System – Project Description
The Clinic Booking System is a MySQL-based database management project designed to streamline the management of clinical operations. It helps clinics efficiently handle patient appointments, doctor schedules, medical specializations, and prescription records.

## 🔧 Key Features:
Doctor Management: Stores doctor profiles with contact information and their medical specialties.

Patient Records: Maintains a patient database with personal details, contact information, and medical visit history.

Appointment Scheduling: Enables booking, updating, and tracking of appointments between doctors and patients, ensuring no conflicts.

Prescription Tracking: Links prescriptions directly to completed appointments, including medication details and dosage instructions.

Data Integrity: Enforces relational integrity using primary keys, foreign keys, and unique constraints to prevent data duplication and maintain consistency.

🗃️ Technical Details:
- Built entirely using MySQL.

- Implements relational database design with one-to-one, one-to-many, and many-to-many relationships where applicable.

# ⚙️ How to Run / Set Up the Clinic Booking System (Import SQL)
✅ Option 1: Using MySQL Workbench
1.Open MySQL Workbench

2.Connect to your local MySQL server

3.Go to File > Open SQL Script…

4.Select the file: clinic_booking_full.sql

5.Click Execute (lightning icon) to run the script

6.The database ClinicBookingSystem will be created with all tables and data.