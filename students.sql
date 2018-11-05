-- create a table to store information about students
CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  last_name TEXT,
  first_name TEXT,
  cohort TEXT,
  age INTEGER,
  grad_status TEXT
);

--if I had a csv if students, this is the command I would run to load my students data
\copy students(last_name,first_name,cohort,age,grad_status) FROM 'data/students.csv' WITH (FORMAT csv, HEADER true)

-- retrieve info about students
SELECT person, COUNT(*)
FROM students
GROUP BY cohort;

-- delete a student
DELETE FROM person WHERE student = 'Felicia';
