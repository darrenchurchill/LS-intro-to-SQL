/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 1: Create Multiple Tables
 * Exercise 5
 *
 * https://launchschool.com/books/sql/read/table_relationships#exercises
 *
 * We want to make our ordering system more flexible, so that customers can
 * orders any combination of burgers, sides and drinks. Create a `products`
 * table and populate it with the following data:
 *
 * Product Name            | Product Cost | Product Type | Product Loyalty Points
 * ----                    | ----         | ----         | ----
 * LS Burger               | 3.00         | Burger       | 10
 * LS Cheeseburger         | 3.50         | Burger       | 15
 * LS Chicken Burger       | 4.50         | Burger       | 20
 * LS Double Deluxe Burger | 6.00         | Burger       | 30
 * Fries                   | 1.20         | Side         | 3
 * Onion Rings             | 1.50         | Side         | 5
 * Cola                    | 1.50         | Drink        | 5
 * Lemonade                | 1.50         | Drink        | 5
 * Vanilla Shake           | 2.00         | Drink        | 7
 * Chocolate Shake         | 2.00         | Drink        | 7
 * Strawberry Shake        | 2.00         | Drink        | 7
 *
 * The table should also have an auto-incrementing `id` column acting as its
 * `PRIMARY KEY`. The `product_type` column should hold strings up to 20
 * characters. The other column data types should match the corresponding
 * columns from the `orders` table.
 */
-- @block
-- @conn ls_burger
-- @label reset-- drop tables
DROP TABLE IF EXISTS products,
product_types
;

-- @block
-- @conn ls_burger
-- @label create product_types, products & insert data
-- @label create product_types table
CREATE TABLE product_types (id serial PRIMARY KEY, product_type varchar(20) NOT NULL)
;

-- @label insert product types
INSERT INTO
  product_types (product_type)
VALUES
  ('Burger'),
  ('Side'),
  ('Drink')
;

-- @label view product types
SELECT
  *
FROM
  product_types
;

-- @label create products table
CREATE TABLE products (
  id serial PRIMARY KEY,
  product_name varchar(50) NOT NULL,
  product_cost decimal(4, 2) NOT NULL,
  product_type_id int,
  product_loyalty_points int NOT NULL,
  FOREIGN KEY (product_type_id) REFERENCES product_types (id) ON DELETE CASCADE
)
;

-- @label insert into products
INSERT INTO
  products (product_name, product_cost, product_type_id, product_loyalty_points)
VALUES
  ('LS Burger', 3.00, 1, 10),
  ('LS Cheeseburger', 3.50, 1, 15),
  ('LS Chicken Burger', 4.50, 1, 20),
  ('LS Double Deluxe Burger', 6.00, 1, 30),
  ('Fries', 1.20, 2, 3),
  ('Onion Rings', 1.50, 2, 5),
  ('Cola', 1.50, 3, 5),
  ('Lemonade', 1.50, 3, 5),
  ('Vanilla Shake', 2.00, 3, 7),
  ('Chocolate Shake', 2.00, 3, 7),
  ('Strawberry Shake', 2.00, 3, 7)
;

-- @label view products
SELECT
  *
FROM
  products
;

-- @label products join product_types
SELECT
  products.id,
  products.product_name,
  products.product_cost,
  product_types.product_type,
  products.product_loyalty_points
FROM
  products
  JOIN product_types ON products.product_type_id = product_types.id
;
