USE parsu_appointment_queue;

INSERT INTO students (student_no, full_name, email, program, year_level) VALUES
('2023-0001','Juan Dela Cruz','juan.delacruz@parsu.edu.ph','BS Information Technology',3),
('2023-0002','Maria Santos','maria.santos@parsu.edu.ph','BS Accountancy',3),
('2023-0003','Carlo Reyes','carlo.reyes@parsu.edu.ph','BS Accountancy',2),
('2024-0004','Ana Villanueva','ana.villanueva@parsu.edu.ph','BS Education',2),
('2022-0005','Liza Cruz','liza.cruz@parsu.edu.ph','BS Psychology',4);

INSERT INTO staff (staff_no, full_name, email, role) VALUES
('ST002','Pedro Lim','pedro.lim@parsu.edu.ph','staff'),
('ST003','Liza Cruz','liza.cruz@parsu.edu.ph','staff'),
('AD001','Ramon Garcia','ramon.garcia@parsu.edu.ph','admin');

INSERT INTO offices (office_code, office_name, location, description) VALUES
('REG','Registrar''s Office','Administration Building, Ground Floor','Academic records, enrollment, registration, and credentials.'),
('ADM','Administration','Administration Building, First Floor','General university requests, signatures, and facilities.'),
('GUD','Guidance and Counseling','Library Annex, Room 105','Guidance appointments, counseling, and testing.'),
('OSA','Student Affairs / OSAS','Student Center, Second Floor','Student assistance, organizations, and campus life.'),
('CLN','University Clinic','Student Center, Ground Floor','Medical, dental, health records, and certificates.');

INSERT INTO services (office_id, service_code, service_name, description, audience) VALUES
(1,'SV001','Transcript of Records (TOR)','Request an official copy of an academic transcript.','Graduates and eligible students'),
(2,'SV002','General Inquiry','Get help with a university-wide concern or referral.','All students'),
(3,'SV003','Guidance Appointment','Book a private guidance and counseling session.','All students'),
(4,'SV004','Student Assistance','Ask for help with student support and campus concerns.','All students'),
(5,'SV005','Basic Dental Check-up','Schedule a basic dental consultation.','Currently enrolled students');

INSERT INTO schedules (service_id, schedule_date, start_time, end_time, capacity) VALUES
(1,'2026-10-04','09:00:00','11:00:00',20),
(2,'2026-10-04','10:00:00','12:00:00',15),
(3,'2026-10-05','13:00:00','15:00:00',10),
(4,'2026-10-04','10:00:00','12:00:00',15),
(5,'2026-10-06','08:00:00','10:00:00',8);

INSERT INTO appointments (student_id, service_id, schedule_id, purpose, status, reviewed_by) VALUES
(1,2,2,'Request guidance about enrollment clearance.','confirmed',1),
(2,3,3,'Discuss academic and personal concerns.','serving',2),
(3,4,4,'Ask about student assistance requirements.','pending',NULL),
(4,1,1,'Request an official transcript for scholarship application.','completed',1),
(5,5,5,'Request a basic dental check-up.','cancelled',2);

INSERT INTO queue_entries (appointment_id, queue_number) VALUES
(1,1),(2,2),(4,3);
