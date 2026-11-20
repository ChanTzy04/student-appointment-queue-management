CREATE DATABASE IF NOT EXISTS parsu_appointment_queue;
USE parsu_appointment_queue;

CREATE TABLE students (
  student_id INT AUTO_INCREMENT PRIMARY KEY,
  student_no VARCHAR(20) NOT NULL UNIQUE,
  full_name VARCHAR(120) NOT NULL,
  email VARCHAR(120) NOT NULL UNIQUE,
  program VARCHAR(100) NOT NULL,
  year_level TINYINT NOT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE staff (
  staff_id INT AUTO_INCREMENT PRIMARY KEY,
  staff_no VARCHAR(20) NOT NULL UNIQUE,
  full_name VARCHAR(120) NOT NULL,
  email VARCHAR(120) NOT NULL UNIQUE,
  role ENUM('staff','admin') NOT NULL DEFAULT 'staff',
  is_active TINYINT(1) NOT NULL DEFAULT 1
);

CREATE TABLE offices (
  office_id INT AUTO_INCREMENT PRIMARY KEY,
  office_code VARCHAR(10) NOT NULL UNIQUE,
  office_name VARCHAR(120) NOT NULL,
  location VARCHAR(160) NOT NULL,
  description TEXT,
  is_active TINYINT(1) NOT NULL DEFAULT 1
);

CREATE TABLE services (
  service_id INT AUTO_INCREMENT PRIMARY KEY,
  office_id INT NOT NULL,
  service_code VARCHAR(12) NOT NULL UNIQUE,
  service_name VARCHAR(140) NOT NULL,
  description TEXT,
  audience VARCHAR(120) NOT NULL,
  is_active TINYINT(1) NOT NULL DEFAULT 1,
  FOREIGN KEY (office_id) REFERENCES offices(office_id)
);

CREATE TABLE schedules (
  schedule_id INT AUTO_INCREMENT PRIMARY KEY,
  service_id INT NOT NULL,
  schedule_date DATE NOT NULL,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL,
  capacity INT NOT NULL,
  status ENUM('open','closed') NOT NULL DEFAULT 'open',
  FOREIGN KEY (service_id) REFERENCES services(service_id)
);

CREATE TABLE appointments (
  appointment_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  service_id INT NOT NULL,
  schedule_id INT NOT NULL,
  purpose TEXT NOT NULL,
  status ENUM('pending','confirmed','serving','completed','cancelled') NOT NULL DEFAULT 'pending',
  reviewed_by INT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (student_id) REFERENCES students(student_id),
  FOREIGN KEY (service_id) REFERENCES services(service_id),
  FOREIGN KEY (schedule_id) REFERENCES schedules(schedule_id),
  FOREIGN KEY (reviewed_by) REFERENCES staff(staff_id)
);

CREATE TABLE queue_entries (
  queue_id INT AUTO_INCREMENT PRIMARY KEY,
  appointment_id INT NOT NULL UNIQUE,
  queue_number INT NOT NULL,
  called_at DATETIME NULL,
  completed_at DATETIME NULL,
  FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);
