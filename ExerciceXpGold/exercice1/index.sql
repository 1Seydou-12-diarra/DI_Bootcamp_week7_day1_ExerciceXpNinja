CREATE TABLE students (
  id serial PRIMARY KEY,
  first_name varchar(255),
  last_name varchar(255),
  birth_date date
);

INSERT INTO students (first_name, last_name, birth_date)
VALUES ('Marc', 'Benichou', to_date('02/11/1998', 'DD/MM/YYYY')),
('Yoan', 'Cohen', to_date('03/12/2010', 'DD/MM/YYYY')),
('Lea', 'Benichou', to_date('27/07/1987', 'DD/MM/YYYY')),
 ('Amelia', 'Dux', to_date('07/04/1996', 'DD/MM/YYYY')),
 ('David', 'Grez', to_date('14/06/2003', 'DD/MM/YYYY')),
 ('Omer', 'Simpson', to_date('03/10/1980', 'DD/MM/YYYY')),
('Yao', 'Yann', to_date('22/10/2002', 'DD/MM/YYYY'));

-- Fetch all of the data from the table
SELECT * FROM students;

-- Fetch all of the students first_names and last_names
SELECT first_name, last_name FROM students;

-- Fetch the student which id is equal to 2
SELECT first_name, last_name FROM students
WHERE id = 2;

-- Fetch the student whose last_name is Benichou AND first_name is Marc
SELECT first_name, last_name FROM students
WHERE last_name = 'Benichou' AND first_name = 'Marc';

-- Fetch the students whose last_names are Benichou OR first_names are Marc
SELECT first_name, last_name FROM students
WHERE last_name = 'Benichou' OR first_name = 'Marc';

-- Fetch the students whose first_names contain the letter a
SELECT first_name, last_name FROM students
WHERE first_name LIKE '%a%';

-- Fetch the students whose first_names start with the letter a
SELECT first_name, last_name FROM students
WHERE first_name LIKE 'a%';

-- Fetch the students whose first_names end with the letter a
SELECT first_name, last_name FROM students
WHERE first_name LIKE '%a';

-- Fetch the students whose second to last letter of their first_names are a (Example: Leah)
SELECT first_name, last_name FROM students
WHERE first_name LIKE '_a%';

-- Fetch the students whose id’s are equal to 1 AND 3
SELECT first_name, last_name FROM students
WHERE id IN (1, 3);

-- Fetch the students whose birth_dates are equal to or come after 1/01/2000
SELECT * FROM students
WHERE birth_date >= to_date('01/01/2000', 'DD/MM/YYYY');
