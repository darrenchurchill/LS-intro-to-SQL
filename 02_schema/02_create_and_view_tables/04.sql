/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Schema
 * Chapter 2: Create and View Tables
 * Exercise 4
 *
 * https://launchschool.com/books/sql/read/create_table#exercises
 *
 * Create a table called `animals` that should contain the sample data below:
 *
 * Name         | Binomial Name     | Max Weight (kg) | Max Age (years) | Conservation Status
 * ----         | ----              | ----            | ----            | ----
 * Lion         | Pantera leo       | 250             | 20              | VU
 * Killer Whale | Orcinus orca      | 6,000           | 60              | DD
 * Golden Eagle | Aquila chrysaetos | 6.35            | 24              | LC
 *
 * - The database table should also contain an auto-incrementing `id` column
 * - Each animal should always have a name and a binomial name
 * - Names and binomial names vary in length but never exceed 100 characters
 * - The max weight column should be able to hold data in the range 0.001 kg -
 *   40,000 kg
 * - Conservation state is denoted by a combination of two letters (CR, EN, VU,
 *   etc.)
 */

-- for encyclopedia db
DROP TABLE IF EXISTS animals;

CREATE TABLE animals(
  id serial,
  name varchar(100) NOT NULL,
  binomial_name varchar(100) NOT NULL,
  max_weight_kg decimal(8, 3),
  max_age_years integer,
  conservation_status char(2)
);
