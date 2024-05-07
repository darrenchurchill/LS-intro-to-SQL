# Launch School Introduction to SQL

These are my solutions to the exercises at the end of each chapter in the
[_Introduction to SQL_](https://launchschool.com/books/sql/read/introduction) book.
__Note__: The book link will only work if you're signed into your Launch School
account.

## Requirements

- `postgresql`

I installed `postgresql@16` with Homebrew.

```shell
brew install postgresql@16
```

## Setup

Clone repository, create any necessary databases with `createdb`. Many of the
exercises insert data or alter tables. Therefore, I wouldn't expect any
particular file's statements to execute without first executing all previous
exercise files.

For example, the `singers` table started as `famous_people`, and was also
renamed to `celebrities`.

The exception is the `sql_book` database. All of its creation and modification
statements are in `sql_book.sql`. You can run the file's statements from top to
bottom in sequence.

## Sections

### Getting Started

1. SQL Basics Tutorial

    ```shell
    createdb ls_burger
    ```

    ```shell
    psql ls_burger < ls_burger.sql
    ```

### Your First Database: Schema

1. Create and View Databases

    ```shell
    createdb sql_book
    ```

2. Create and View Tables
3. Alter a Table

### Your First Database: Data

1. Add Data with `INSERT`
2. Select Queries
3. More on Select
4. Update Data in a Table

### Working with Multiple Tables

1. Create Multiple Tables
2. SQL Joins

### Conclusion
