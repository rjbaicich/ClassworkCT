-- Create Tables for Car Dealership.

CREATE TABLE salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    name VARCHAR(50)
    );

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(50)
    );

CREATE TABLE car (
    car_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    salesperson_id INT REFERENCES salesperson(salesperson_id),
    customer_id INT REFERENCES customer(customer_id)
    );

CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY,
    car_id INT REFERENCES car(car_id),
    salesperson_id INT REFERENCES salesperson(salesperson_id)
    );

CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    name VARCHAR(50)
    );

CREATE TABLE service_ticket (
    ticket_id SERIAL PRIMARY KEY,
    car_id INT REFERENCES car(car_id),
    mechanic_id INT REFERENCES mechanic(mechanic_id)
    );

CREATE TABLE service_history (
    service_id SERIAL PRIMARY KEY,
    car_id INT REFERENCES car(car_id),
    service_description TEXT
    );

-- Insert statements for the each table
INSERT INTO salesperson (name)
VALUES ('David Brown'),
       ('Emily Wilson');

INSERT INTO customer (name)
VALUES ('Olivia Thompson'),
       ('Henry Davis');

INSERT INTO car (name, salesperson_id, customer_id)
VALUES ('Car A', 1, 1),
       ('Car B', 2, 2);

INSERT INTO invoice (car_id, salesperson_id)
VALUES (1, 1),
       (2, 2);

INSERT INTO service_ticket (car_id, mechanic_id)
VALUES (1, 1),
       (2, 2);

INSERT INTO service_history (car_id, service_description)
VALUES (1, 'Performed tire rotation'),
       (2, 'Repaired transmission');

INSERT INTO mechanic (name)
VALUES ('Daniel Clark'),
       ('Sophia Adams');

