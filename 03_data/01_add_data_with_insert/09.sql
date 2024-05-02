/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 1: Add Data with INSERT
 * Exercise 9
 *
 * https://launchschool.com/books/sql/read/add_data#exercises
 *
 * Alter the `animals` table so the data can be entered as shown below, and then
 * insert the data.
 *
 * Name             | Binomial Name            | Max Weight (kg) | Max Age (years) | Conservation Status
 * ----             | ----                     | ----            | ----            | ----
 * Dove             | Columbidae Columbiformes | 2               | 15              | LC
 * Golden Eagle     | Aquila Chrysaetos        | 6.35            | 24              | LC
 * Peregrine Falcon | Falco Peregrinus         | 1.5             | 15              | LC
 * Pigeon           | Columbidae Columbiformes | 2               | 15              | LC
 * Kakapo           | Strigops habroptila      | 4               | 60              | CR
 */

-- for encyclopedia db
ALTER TABLE animals DROP CONSTRAINT unique_binomial_name;

INSERT INTO animals
  (name, binomial_name, max_weight_kg, max_age_years, conservation_status)
  VALUES
  ('Dove', 'Columbidae Columbiformes', 2, 15, 'LC'),
  ('Golden Eagle', 'Aquila Chrysaetos', 6.35, 24, 'LC'),
  ('Peregrine Falcon', 'Falco Peregrinus', 1.5, 15, 'LC'),
  ('Pigeon', 'Columbidae Columbiformes', 2, 15, 'LC'),
  ('Kakapo', 'Strigops habroptila', 4, 60, 'CR');
