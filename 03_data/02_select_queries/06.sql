/**
 * Launch School Book Exercises
 * Introduction to SQL
 *
 * Your First Database: Data
 * Chapter 2: Select Queries
 * Exercise 6
 *
 * https://launchschool.com/books/sql/read/select_queries#exercises
 *
 * Write a query on the `animals` table, using `ORDER BY`, that will return the
 * following output:
 *
 *        name       |      binomial_name       | max_weight_kg | max_age_years
 * ------------------+--------------------------+---------------+---------------
 *  Peregrine Falcon | Falco Peregrinus         |        1.5000 |            15
 *  Pigeon           | Columbidae Columbiformes |        2.0000 |            15
 *  Dove             | Columbidae Columbiformes |        2.0000 |            15
 *  Golden Eagle     | Aquila Chrysaetos        |        6.3500 |            24
 *  Kakapo           | Strigops habroptila      |        4.0000 |            60
 * (5 rows)
 */

-- for encyclopedia db
SELECT name, binomial_name, max_weight_kg, max_age_years FROM animals
  ORDER BY max_age_years, max_weight_kg, name DESC;
