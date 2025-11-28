USE post_office;

INSERT INTO customers (name, phone, city) VALUES
('Amit Sharma', '9876543210', 'Delhi'),
('Priya Sinha', '9871112222', 'Patna'),
('Rohit Verma', '9758432100', 'Mumbai');

INSERT INTO branches (branch_name, city) VALUES
('Delhi GPO', 'Delhi'),
('Patna City PO', 'Patna'),
('Mumbai Central PO', 'Mumbai');

INSERT INTO staff (staff_name, branch_id) VALUES
('Rajesh Kumar', 1),
('Suman Singh', 2),
('Imran Khan', 3);

INSERT INTO parcels (customer_id, branch_id, weight, booking_date, delivery_date, status) VALUES
(1, 1, 2.5, '2025-01-10', '2025-01-13', 'Delivered'),
(2, 2, 1.2, '2025-01-11', NULL, 'In Transit'),
(3, 3, 4.0, '2025-01-09', '2025-01-12', 'Delivered');

INSERT INTO tracking (parcel_id, location, status, updated_at) VALUES
(1, 'Delhi Sorting Center', 'Out for Delivery', '2025-01-12 09:00'),
(1, 'Delhi GPO', 'Delivered', '2025-01-13 14:30'),
(2, 'Patna Hub', 'In Transit', '2025-01-12 12:00'),
(3, 'Mumbai Hub', 'Delivered', '2025-01-12 16:00');
