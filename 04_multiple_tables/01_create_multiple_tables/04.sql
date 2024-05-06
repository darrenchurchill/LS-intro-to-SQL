/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 1: Create Multiple Tables
 * Exercise 4
 *
 * https://launchschool.com/books/sql/read/table_relationships#exercises
 *
 * Connect to the `ls_burger` database. If you run a `SELECT` query on the
 * `orders` table, you'll see it is very un-normalized. We have repetition of
 * item names/costs and of customer data.
 *
 * We want to break `orders` into multiple tables.
 *
 * 1. create a `customers` table to hold customer name data, and an
 *    `email_addresses` table to hold the customer email data.
 * 2. Create a 1-to-1 relationship between them, ensuring if a customer record
 *    is deleted, the associated email is also deleted.
 * 3. Populate the tables with the appropriate data from the `orders` table.
 */
-- @block
-- @conn ls_burger
-- @label reset-- drop tables/views
-- @label reset -- drop views
DROP VIEW IF EXISTS unique_customers_ordered_by_id,
customer_id_customer_email
;

-- @label reset -- drop tables
DROP TABLE IF EXISTS email_addresses,
customers
;

-- @block
-- @conn ls_burger
-- @label create customers table & insert data
-- @label create customers table
CREATE TABLE customers (id serial PRIMARY KEY, customer_name varchar(100) NOT NULL)
;

-- @label view orders
SELECT
  *
FROM
  orders
ORDER BY
  id
;

-- @label create view unique_customers_ordered_by_id
CREATE VIEW unique_customers_ordered_by_id AS
SELECT
  customer_name,
  min(id) AS first_order_id
FROM
  orders
GROUP BY
  customer_name
ORDER BY
  first_order_id
;

-- @label preview customer_names before insert
SELECT
  *
FROM
  unique_customers_ordered_by_id
;

-- @label insert unique customers from orders
INSERT INTO
  customers (customer_name)
SELECT
  customer_name
FROM
  unique_customers_ordered_by_id
;

-- @label view customers table
SELECT
  *
FROM
  customers
;

-- @block
-- @conn ls_burger
-- @label customer emails table & data
-- @label create email_addresses table
CREATE TABLE email_addresses (
  customer_id int PRIMARY KEY,
  customer_email varchar(50),
  FOREIGN KEY (customer_id) REFERENCES customers (id) ON DELETE CASCADE
)
;

-- @label view emails in orders
SELECT
  id,
  customer_name,
  customer_email
FROM
  orders
ORDER BY
  id
;

/*
Select customers (id), orders (customer_email)
where orders (customer_name) == customers (customer_name)
*/
-- @label create view customers.id, orders.customer_email
CREATE VIEW customer_id_customer_email AS
SELECT DISTINCT
  customers.id AS customer_id,
  orders.customer_email
FROM
  customers
  JOIN orders ON customers.customer_name = orders.customer_name
WHERE
  orders.customer_email IS NOT NULL
ORDER BY
  customer_id
;

-- @label preview customers.id, orders.customer_email
SELECT
  customer_id,
  customer_email
FROM
  customer_id_customer_email
;

-- @label insert into email_addresses
INSERT INTO
  email_addresses (customer_id, customer_email)
SELECT
  customer_id,
  customer_email
FROM
  customer_id_customer_email
;

-- @label view email_addresses
SELECT
  *
FROM
  email_addresses
;
