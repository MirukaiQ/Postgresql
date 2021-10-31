DROP TABLE "workers";

CREATE TABLE "workers"(
    id serial PRIMARY KEY,
    birthday date NOT NULL,
    worker_name varchar(30) NOT NULL UNIQUE,
    salary integer NOT NULL
);

-- INSERT  
INSERT INTO workers(worker_name, birthday, salary) 
VALUES 
('Nickita', '1990/1/1', 500),
('Svetlana', '2000/5/7', 500),
('Yaroslav', '1980/2/5', 1200),
('Vasya', '1995/12/3', 1500),
('Petr', '1993/10/10', 1000),
('Kolya', '1957/2/5',3000),
('Vera', '1995/4/23',2000);

-- UPDATE 
UPDATE workers
SET salary = 200
WHERE worker_name = 'Vasya';

UPDATE workers
SET birthday = '1987/4/4'
WHERE id = 4;

UPDATE workers
SET salary = 700
WHERE salary = 500;

UPDATE workers
SET birthday = '1999/2/6'
WHERE id > 2 and id < 5;

UPDATE workers 
SET worker_name = 'Evgeniy' 
WHERE worker_name = 'Vasya';

UPDATE workers 
SET salary = salary + 900 
WHERE worker_name = 'Evgeniy';

-- SELECT
SELECT * 
FROM workers
WHERE id = 3;

SELECT *
FROM workers
WHERE salary > 400;

SELECT *
FROM workers
WHERE salary != 500;

SELECT salary, birthday
FROM workers
WHERE worker_name = 'Evgeniy';

SELECT * 
FROM workers
WHERE worker_name = 'Petr';

SELECT * 
FROM workers
WHERE worker_name != 'Petr';

SELECT *
FROM workers
WHERE age(birthday) = make_interval(27) OR salary = 1000;

SELECT *
FROM workers
WHERE age(birthday) > make_interval(25) AND age(birthday) <= make_interval(28); 

SELECT *
FROM workers
WHERE age(birthday) > make_interval(23) AND age(birthday) <= make_interval(27) OR salary > 400 AND salary <= 1000;

SELECT *
FROM workers
WHERE age(birthday) = make_interval(27) OR salary != 400;

-- DELETE
DELETE FROM workers
WHERE id = 7;

DELETE FROM workers
WHERE worker_name = 'Kolya';

DELETE FROM workers
WHERE age(birthday) = make_interval(23);