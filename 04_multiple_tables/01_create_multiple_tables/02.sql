/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Working with Multiple Tables
 * Chapter 1: Create Multiple Tables
 * Exercise 2
 *
 * https://launchschool.com/books/sql/read/table_relationships#exercises
 *
 * Write statements to add data to the `countries` and `continents` tables so the
 * data below is correctly represented across the 2 tables. Add both the
 * countries and the continents to their respective tables in **alphabetical
 * order**.
 *
 * Name    | Capital         | Population  | Continent
 * ----    | ----            | ----        | ----
 * France  | Paris           | 67,158,000  | Europe
 * USA     | Washington D.C. | 325,365,189 | North America
 * Germany | Berlin          | 82,349,400  | Europe
 * Japan   | Tokyo           | 126,672,000 | Asia
 * Egypt   | Cairo           | 96,308,900  | Africa
 * Brazil  | Brasilia        | 208,385,000 | South America
 */
-- @block
-- @conn encyclopedia
-- @label insert into continents
INSERT INTO
  continents (continent_name)
VALUES
  ('Africa'), -- 1
  ('Asia'), -- 2
  ('Europe'), -- 3
  ('North America'), -- 4
  ('South America') -- 5
;

-- @label insert into countries
INSERT INTO
  countries (name, capital, population, continent_id)
VALUES
  ('Brazil', 'Brasilia', 208385000, 5),
  ('Egypt', 'Cairo', 96308900, 1),
  ('France', 'Paris', 67158000, 3),
  ('Germany', 'Berlin', 82349400, 3),
  ('Japan', 'Tokyo', 126672000, 2),
  ('USA', 'Washington D.C.', 325365189, 4)
;

-- @block
-- @conn encyclopedia
-- @label view continents
SELECT
  *
FROM
  continents
;

-- @label view countries
SELECT
  *
FROM
  countries
;
