-- Sample data for Event Management System

-- Insert categories
INSERT INTO categories (name, description)
VALUES
('Conference', 'Professional conferences and seminars'),
('Workshop', 'Hands-on training workshops'),
('Networking', 'Networking and social events'),
('Concert', 'Music and performance events');

-- Insert venues
INSERT INTO venues (name, address, capacity, contact_phone, contact_email)
VALUES
('Grand Ballroom', '123 Main St, Anytown', 500, '555-1001', 'events@grandballroom.com'),
('Tech Hub', '456 Innovation Dr, Anytown', 200, '555-1002', 'info@techhub.org'),
('Community Center', '789 Park Ave, Anytown', 150, '555-1003', 'contact@communitycenter.org'),
('Symphony Hall', '321 Arts Blvd, Anytown', 1000, '555-1004', 'bookings@symphonyhall.com');

-- Insert staff users
INSERT INTO staff_users (username, password_hash, first_name, last_name, email, role)
VALUES
('admin', 'hashed_admin_password', 'John', 'Smith', 'john.smith@events.com', 'admin'),
('event1', 'hashed_event_password', 'Sarah', 'Johnson', 'sarah.johnson@events.com', 'event_manager'),
('finance1', 'hashed_finance_password', 'Michael', 'Williams', 'michael.williams@events.com', 'finance'),
('support1', 'hashed_support_password', 'Emily', 'Brown', 'emily.brown@events.com', 'support');

-- Insert events
INSERT INTO events (title, description, category_id, venue_id, start_datetime, end_datetime, registration_deadline, max_attendees, base_price)
VALUES
('Tech Conference 2023', 'Annual technology conference featuring the latest innovations', 1, 2, '2023-11-15 09:00:00', '2023-11-17 17:00:00', '2023-11-10 23:59:59', 200, 299.99),
('Digital Marketing Workshop', 'Hands-on workshop for digital marketing professionals', 2, 3, '2023-10-05 10:00:00', '2023-10-05 16:00:00', '2023-10-03 23:59:59', 50, 149.99),
('Business Networking Mixer', 'Networking event for local business professionals', 3, 1, '2023-09-20 18:00:00', '2023-09-20 21:00:00', '2023-09-19 23:59:59', 150, 25.00),
('Summer Music Festival', 'Outdoor music festival featuring local artists', 4, 4, '2023-08-12 12:00:00', '2023-08-12 22:00:00', '2023-08-10 23:59:59', 800, 49.99);

-- Insert event sessions (for the conference)
INSERT INTO event_sessions (event_id, title, description, start_time, end_time, speaker)
VALUES
(1, 'Keynote: Future of AI', 'Opening keynote on artificial intelligence trends', '2023-11-15 09:00:00', '2023-11-15 10:30:00', 'Dr. Alan Turing'),
(1, 'Web Development Best Practices', 'Modern approaches to web development', '2023-11-15 11:00:00', '2023-11-15 12:30:00', 'Sarah Developer'),
(1, 'Cloud Computing Panel', 'Expert panel on cloud computing strategies', '2023-11-16 14:00:00', '2023-11-16 15:30:00', 'Multiple Speakers');

-- Insert discount codes
INSERT INTO discount_codes (code, description, discount_type, discount_value, start_date, end_date, max_uses)
VALUES
('EARLYBIRD20', 'Early bird registration discount', 'percentage', 20.00, '2023-01-01 00:00:00', '2023-06-30 23:59:59', 100),
('STUDENT50', 'Student discount', 'fixed', 50.00, '2023-01-01 00:00:00', '2023-12-31 23:59:59', NULL),
('GROUP10', 'Group discount (min 5 people)', 'percentage', 10.00, '2023-01-01 00:00:00', '2023-12-31 23:59:59', NULL);

-- Insert attendees
INSERT INTO attendees (first_name, last_name, email, phone, address, organization)
VALUES
('David', 'Miller', 'david.miller@example.com', '555-2001', '123 Oak St, Anytown', 'Tech Corp'),
('Jennifer', 'Taylor', 'jennifer.taylor@example.com', '555-2002', '456 Pine Ave, Anytown', 'Digital Solutions'),
('Robert', 'Anderson', 'robert.anderson@example.com', '555-2003', '789 Maple Rd, Anytown', 'State University'),
('Jessica', 'Thomas', 'jessica.thomas@example.com', '555-2004', '321 Elm Ln, Anytown', 'Marketing Pros');

-- Insert registrations
INSERT INTO registrations (event_id, attendee_id, status, special_requirements, discount_code, final_price)
VALUES
(1, 1, 'confirmed', 'Vegetarian meal requested', 'EARLYBIRD20', 239.99),
(1, 2, 'confirmed', NULL, NULL, 299.99),
(2, 3, 'confirmed', 'Student ID will be presented', 'STUDENT50', 99.99),
(3, 4, 'pending', NULL, NULL, 25.00),
(4, 1, 'confirmed', NULL, NULL, 49.99);

-- Insert payments
INSERT INTO payments (registration_id, amount, payment_date, payment_method, transaction_reference, status, processed_by)
VALUES
(1, 239.99, '2023-06-15 10:30:45', 'credit_card', 'CC-123456789', 'completed', 3),
(2, 299.99, '2023-07-20 14:15:22', 'credit_card', 'CC-987654321', 'completed', 3),
(3, 99.99, '2023-09-01 09:05:33', 'debit_card', 'DC-456123789', 'completed', 3),
(5, 49.99, '2023-07-30 16:45:18', 'bank_transfer', 'BT-789456123', 'completed', 3);
