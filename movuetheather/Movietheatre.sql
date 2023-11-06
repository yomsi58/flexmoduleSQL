--movie table
create table movies(
    film_id serial primary keys,
    film_title VARCHAR(100),
    film_duration INTEGER,
    rating  VARCHAR(10),
);

--Customer table
create table customer (
customer_id SERIAL primary key,
first_name VARCHAR(100),
last_name VARCHAR(100),
Phone_number INTEGER,
);
--Inventory table
create table inventory(
item_id SERIAL,
item_name VARCHAR(100),
Amount INTEGER,
Feld  type,
);

--create table employees
create table employees(
employee_id SERIAL primary key,
first_name  VARCHAR(100),
Last_name   VARCHAR(100),
Address   VARCHAR(100),
);
-- create concession table
create table concession(
    item_cost NUMERIC(5,2),
    Total_cost NUMERIC(5,2),
    employee_id INTEGER NOT NULL,
    item_id INTEGEER NOT NULL,
    FOREIGN KEY(employee_id) references employees (employee_id) ,
    Foreign key ( item_id) references inventory(item_id)
);

-- create table tickets
create table tickets(
ticket_number INTEGER primary key,
tickets_date DATE default current_date,
film_id INTEGER NON NU ,
FOREIGN KEY ( film_id) references movies(film_id),
);

-- Create table transaction

create table transaction(
    transaction_id SERIAL,
    Customer_id INTEGER NOT NULL,
    Ticket_numberINTEGER NOT NULL,
    Ticket_cost numeric(5,2)
);