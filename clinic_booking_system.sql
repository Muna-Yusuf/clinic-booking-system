-- ================================================
-- Clinic Appointment Booking System - SQL Schema
-- Author: Muna Yusuf Jimale
-- ================================================

-- Drop tables if they already exist (reset environment)
DROP TABLE IF EXISTS Payment, Appointment, Doctor_Clinic, Insurance, Patient, Doctor, User, Clinic, Specialty;

-- ================================
-- Table 1: User
-- System login users (doctors, admins)
-- ================================
CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    role ENUM('admin', 'doctor', 'staff') DEFAULT 'staff'
);

-- ================================
-- Table 2: Specialty
-- Each doctor has one specialty (1:M)
-- ================================
CREATE TABLE Specialty (
    specialty_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- ================================
-- Table 3: Clinic
-- Clinic info
-- ================================
CREATE TABLE Clinic (
    clinic_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    UNIQUE(name, address)
);

-- ================================
-- Table 4: Doctor
-- Doctor profile data (linked to user login)
-- ================================
CREATE TABLE Doctor (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL UNIQUE,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    gender ENUM('Male', 'Female'),
    phone_number VARCHAR(20),
    specialty_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (specialty_id) REFERENCES Specialty(specialty_id)
);

-- ================================
-- Table 5: Patient
-- Patient personal details
-- ================================
CREATE TABLE Patient (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    gender ENUM('Male', 'Female'),
    date_of_birth DATE NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20)
);

-- ================================
-- Table 6: Insurance
-- One-to-one with Patient
-- ================================
CREATE TABLE Insurance (
    insurance_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL UNIQUE,
    provider_name VARCHAR(100) NOT NULL,
    policy_number VARCHAR(50) NOT NULL UNIQUE,
    coverage_percent DECIMAL(5,2) DEFAULT 80.00,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

-- ================================
-- Table 7: Doctor_Clinic
-- Many-to-Many relationship
-- ================================
CREATE TABLE Doctor_Clinic (
    doctor_id INT NOT NULL,
    clinic_id INT NOT NULL,
    PRIMARY KEY (doctor_id, clinic_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id),
    FOREIGN KEY (clinic_id) REFERENCES Clinic(clinic_id)
);

-- ================================
-- Table 8: Appointment
-- Patients book appointments with doctors
-- ================================
CREATE TABLE Appointment (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    doctor_id INT NOT NULL,
    patient_id INT NOT NULL,
    clinic_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    status ENUM('scheduled', 'completed', 'cancelled') DEFAULT 'scheduled',
    reason TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (clinic_id) REFERENCES Clinic(clinic_id),
    UNIQUE(doctor_id, appointment_date, appointment_time) -- Avoid double bookings
);

-- ================================
-- Table 9: Payment
-- Optional payment info per appointment
-- ================================
CREATE TABLE Payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL UNIQUE,
    amount DECIMAL(10,2) NOT NULL,
    method ENUM('cash', 'credit_card', 'insurance') NOT NULL,
    paid_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id)
);
