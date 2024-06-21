use assignments

--Create a view named ‘customer_san_jose’ which comprises of onlythosecustomers who are from San Jose

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    zip INT
);

INSERT INTO Customer (customer_id, first_name, last_name, email, address, city, state, zip) VALUES
(1, 'John', 'Doe', 'john.doe@gmail.com', '123 Main St', 'San Jose', 'CA', 95123),
(2, 'Jane', 'Smith', 'jane.smith@gmail.com', '456 Elm St', 'San Francisco', 'CA', 94101),
(3, 'Alice', 'Johnson', 'alice.johnson@gmail.com', '789 Oak St', 'San Jose', 'CA', 95124),
(4, 'Bob', 'Brown', 'bob.brown@gmail.com', '321 Pine St', 'Los Angeles', 'CA', 90001),
(5, 'Charlie', 'Davis', 'charlie.davis@gmail.com', '654 Maple St', 'San Jose', 'CA', 95125);

create view customer_san_jose as
select * from Customer
where city = 'San Jose'

SELECT * FROM customer_san_jose;

--2 . Inside a transaction, update the first name of the customer to Franciswhere the last name is Jordan:
              --a. Rollback the transaction
              --b. Set the first name of customer to Alex, where the last nameisJordan

CREATE TABLE customer_info(
C_name varchar (30),
c_lastname varchar (30)
);

insert into customer_info values ('sidhant', 'jordan'), ('Rahul', 'sai');

begin transaction
update customer_info
set C_name = 'jordan'
where c_lastname = 'sai'

select*from customer_info

