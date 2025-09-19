-- fetch all suplliers info
SELECT * FROM `suppliers`;

-- fetch all customers from UK
SELECT * FROM `customers` WHERE countryId = 23;

-- fetch all customers from London, UK
SELECT * FROM `customers` WHERE countryId = 23 and cityId = 45;

-- fetch all products that have name which is at least 2 words (e.g. "Anyseed Syrup")
SELECT * FROM `products` where instr(name, ' ') > 0;

-- fetch name, price, stock, and total inventory value from products
SELECT name, price, stock, price * stock as total_inventory_value FROM `products`;

-- fetch all products that are missing from inevntory
SELECT * FROM `products` where stock = 0;

-- fetch all products names, capitalized and cut to the 1st 5 charachters
SELECT ucase(substring(name, 1, 5)) FROM `products`;

