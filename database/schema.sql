CREATE DATABASE post_office;

USE post_office;

#--1.Customer Table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50)
);

#-- 2. Branches Table
CREATE TABLE branches (
    branch_id INT AUTO_INCREMENT PRIMARY KEY,
    branch_name VARCHAR(100),
    city VARCHAR(50)
);

#-- 3. Delivery Staff
CREATE TABLE staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_name VARCHAR(100),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

#-- 4. Parcels
CREATE TABLE parcels (
    parcel_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    branch_id INT,
    weight DECIMAL(5,2),
    booking_date DATE,
    delivery_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

#-- 5. Tracking Status (events)
CREATE TABLE tracking (
    tracking_id INT AUTO_INCREMENT PRIMARY KEY,
    parcel_id INT,
    location VARCHAR(100),
    status VARCHAR(50),
    updated_at DATETIME,
    FOREIGN KEY (parcel_id) REFERENCES parcels(parcel_id)
);
