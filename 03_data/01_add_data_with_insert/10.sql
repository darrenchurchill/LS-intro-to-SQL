/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 1: Add Data with INSERT
 * Exercise 10
 *
 * https://launchschool.com/books/sql/read/add_data#exercises
 *
 * Connect to the `ls_burger` database and examine the schema for the `orders`
 * table.
 *
 * Based on the table schema and following information, write and execute an
 * `INSERT` statement to add the appropriate data to the `orders` table.
 *
 * There are three customers -- James Bergman, Natasha O'Shea, Aaron Muller.
 * James' email address is james1998@gmail.com. Natasha's email address is
 * natasha@osheafamily.com. Aaron doesn't supply an email address.
 *
 * James orders a LS Chicken Burger, Fries and a Cola. Natasha has two orders --
 * an LS Cheeseburger with Fries but no drink, and an LS Double Deluxe Burger
 * with Onion Rings and a Chocolate Shake. Aaron orders an LS Burger with no
 * side or drink.
 *
 * The item costs and loyalty points are listed below:
 *
 * Item                    | Cost ($) | Loyalty Points
 * ----                    | ----     | ----
 * LS Burger               | 3.00     | 10
 * LS Cheeseburger         | 3.50     | 15
 * LS Chicken Burger       | 4.50     | 20
 * LS Double Deluxe Burger | 6.00     | 30
 * Fries                   | 0.99     | 3
 * Onion Rings             | 1.50     | 5
 * Cola                    | 1.50     | 5
 * Lemonade                | 1.50     | 5
 * Vanilla Shake           | 2.00     | 7
 * Chocolate Shake         | 2.00     | 7
 * Strawberry Shake        | 2.00     | 7
 */

-- for ls_burger db
INSERT INTO orders
  (customer_name, customer_email, burger, burger_cost, side, side_cost, drink, drink_cost, customer_loyalty_points)
  VALUES
  ('James Bergman', 'james1998@gmail.com', 'LS Chicken Burger', 4.50, 'Fries', 0.99, 'Cola', 1.50, 20+3+5),
  ('Natasha O''Shea', 'natasha@osheafamily.com', 'LS Cheeseburger', 3.50, 'Fries', 0.99, NULL, NULL, 15+3),
  ('Natasha O''Shea', 'natasha@osheafamily.com', 'LS Double Deluxe Burger', 6.00, 'Onion Rings', 1.50, 'Chocolate Shake', 2.00, 30+5+7),
  ('Aaron Muller', NULL, 'LS Burger', 3.00, NULL, NULL, NULL, NULL, 10);
