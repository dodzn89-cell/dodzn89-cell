CREATE TABLE employees
(id INTEGER PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
position VARCHAR(100),
salary DECIMAL(10,2));


INSERT INTO employees(name,position,salary) VALUES 
('혜린','PM', 90000), 
('은우','Frontend', 80000),
('가을','Backend', 92000),
('지수','Frontend', 7800),
('민혁','Frontend', 96000),
('하온','Backend', 130000);


SELECT name AS 이름,salary AS 연봉, position AS 직책 FROM employees;


SELECT name,salary
FROM employees 
WHERE position = 'Frontend'
AND salary >= 90000;


UPDATE employees
SET salary = salary * 1.1
WHERE position = 'PM';


UPDATE employees
SET salary = salary * 1.05
WHERE position = 'Backend';


DELETE FROM employees
WHERE name = '민혁';


SELECT position,
AVG(salary) AS 평균연봉
FROM employees
GROUP BY position;


DROP TABLE employees;