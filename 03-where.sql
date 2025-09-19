-- we can filter the result set from rows, using the where clause
SELECT id, name, price FROM products WHERE price < 10;

SELECT id, name, price FROM products WHERE price > 100;

-- we can composite the where clause using several expressions:
SELECT id, name, price FROM products WHERE price > 100 or price < 10;

-- use between instead of X > y and X < z 
SELECT id, name, price FROM products WHERE price between 10 and 100;

-- i can use a scalar function also in the where clause
SELECT id, name, price FROM products WHERE price > 10 and length(name) < 5;

-- use a single '=' character for equastions:
SELECT id, name, price FROM products WHERE price > 10 and length(name) = 4;


