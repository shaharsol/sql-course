-- I can compute each returned column in the result set
SELECT id, name, price, 18 as VAT, price * 1.18 as retail_price FROM products;

-- i can use scalar functions to compute values out of data fetched from the table
SELECT concat(titleOfCourtesy, ' ', firstName, ' ', lastName) FROM employees;

-- there are scalar function for strings, e.g. ucase
SELECT id, ucase(name) FROM products;

-- e.g lcase:
SELECT id, lcase(name) FROM products;

-- e.g. substring
SELECT id, substring(name, 1, 3) FROM products;

-- e.g. replace
SELECT REPLACE(name, ' ', '-') FROM products;

-- there are scalar functions also for date columns:
SELECT id, lastName, year(hireDate) as hire_year FROM employees;

-- e.g. extract the month portion from a date value:
SELECT id, lastName, year(hireDate) as hire_year, month(hireDate) as hireMonth FROM employees;



