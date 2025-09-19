-- fetch name of product from all rows in the products table
SELECT name FROM products;

-- I can specifically select which columns should be fetched from each row
SELECT name, price FROM products;

-- there is no limit to the number of columns i can include in the select
SELECT name, price, categoryId FROM products;

-- to get all columns of the table included in the result set, i use a wildcard: '*'
SELECT * FROM products;

-- i can add literals to the column list, the the literals will be fetched alongside data from the table
SELECT id, name, price, 18 FROM products;

-- i can set the column title with the keywords 'as'
SELECT id, name, price, 18 as vat FROM products;

-- i can set any column title, whether it came from the table or a literal
SELECT id, name, price as retail_price, 18 as vat FROM products;


