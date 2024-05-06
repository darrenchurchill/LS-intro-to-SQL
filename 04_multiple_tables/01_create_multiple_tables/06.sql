/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 1: Create Multiple Tables
 * Exercise 6
 *
 * https://launchschool.com/books/sql/read/table_relationships#exercises
 *
 * To associate customers with products, we need to do 2 more things:
 *
 * 1. Alter or replace `orders` so we can associate a customer with 1 or more
 *    orders. We also want to record an `order_status` in this table.
 * 2. Create an `order_items` table so an order can have 1 or more products
 *    associated with it.
 *
 * Based on the orders descriptions below, amend/create tables and populate them
 * with the appropriate data:
 *
 * - James has 1 order:
 *   - Chicken Burger
 *   - Fries
 *   - Onion Rings
 *   - Lemonade
 *   - Status: 'In Progress'
 * - Natasha has 2 orders:
 *   1.
 *   - Cheeseburger
 *   - Fries
 *   - Cola
 *   - Status: 'Placed'
 *   2.
 *   - Double Deluxe Burger
 *   - Cheeseburger
 *   - Fries x 2
 *   - Onion Rings
 *   - Chocolate Shake
 *   - Vanilla Shake
 *   - Status: 'Complete'
 * - Aaron has 1 order:
 *   - LS Burger
 *   - Fries
 *   - Status: 'Placed'
 *
 * Assume `order_status` can hold strings up to 20 characters.
 */
-- @block
-- @conn ls_burger
-- @label reset -- drop views from Exercise 4
-- these reference orders
DROP VIEW IF EXISTS unique_customers_ordered_by_id,
customer_id_customer_email
;

-- @label reset -- drop tables
DROP TABLE IF EXISTS orders,
order_statuses,
order_items
;

-- @block
-- @conn ls_burger
-- @label create orders, order_items & insert data
-- @label create order_statuses table
CREATE TABLE order_statuses (id serial PRIMARY KEY, "status" varchar(20) NOT NULL)
;

-- @label insert into order_statuses
INSERT INTO
  order_statuses ("status")
VALUES
  ('Placed'),
  ('In Progress'),
  ('Complete')
;

-- @label view order_statuses
SELECT
  *
FROM
  order_statuses
;

-- @label create orders table
CREATE TABLE orders (
  id serial PRIMARY KEY,
  customer_id int,
  order_status_id int,
  FOREIGN KEY (customer_id) REFERENCES customers (id) ON DELETE CASCADE,
  FOREIGN KEY (order_status_id) REFERENCES order_statuses (id) ON DELETE CASCADE
)
;

-- @label view customers
SELECT
  *
FROM
  customers
;

-- @label insert into orders
INSERT INTO
  orders (customer_id, order_status_id)
VALUES
  (1, 2),
  (2, 1),
  (2, 3),
  (3, 1)
;

-- @label view customer order id & status
SELECT
  customers.customer_name,
  orders.id AS order_id,
  order_statuses.status
FROM
  customers
  JOIN orders ON customers.id = orders.customer_id
  JOIN order_statuses ON orders.order_status_id = order_statuses.id
;

-- @label create order_items table
CREATE TABLE order_items (
  id serial PRIMARY KEY,
  order_id int,
  product_id int,
  quantity int DEFAULT 1,
  FOREIGN KEY (order_id) REFERENCES orders (id) ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES products (id) ON DELETE CASCADE
)
;

-- @label view products
SELECT
  *
FROM
  products
ORDER BY
  id
;

-- @label insert into order_items
INSERT INTO
  order_items (order_id, product_id, quantity)
VALUES
  (1, 3, 1),
  (1, 5, 1),
  (1, 6, 1),
  (1, 8, 1),
  (2, 2, 1),
  (2, 5, 1),
  (2, 7, 1),
  (3, 4, 1),
  (3, 2, 1),
  (3, 5, 2),
  (3, 6, 1),
  (3, 10, 1),
  (3, 9, 1),
  (4, 1, 1),
  (4, 5, 1)
;

-- @label view customers and orders
SELECT
  customers.customer_name,
  orders.id AS order_id,
  order_statuses.status,
  products.product_name,
  order_items.quantity
FROM
  customers
  JOIN orders ON customers.id = orders.customer_id
  JOIN order_statuses ON orders.order_status_id = order_statuses.id
  JOIN order_items ON orders.id = order_items.order_id
  JOIN products ON order_items.product_id = products.id
;
