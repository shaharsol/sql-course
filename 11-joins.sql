-- when i join data from more than one table
-- i may be required to specifically state the table name from 
-- which a column is taken, due to the fact the 2 tables
-- may contain columns with the same name:
SELECT 	p.id, p.name, price, c.name
FROM 	products as p
JOIN	categories as c;

-- when we use joins without durecting the SQL how to join
-- we get a cartesian multiply:
-- usually, this is NOT what we are after...
SELECT 	p.id, p.name, price, c.name
FROM 	products as p
JOIN	categories as c;

-- we probably need to state how to make the join using the 'ON' keyword:
SELECT 	p.id, p.name, price, c.name
FROM 	products as p
JOIN	categories as c
ON		p.categoryId = c.id;

-- joins can be made over more than 2 tables. here's an example
-- of 3 tables joined:
SELECT 	p.id, p.name, price, c.name, s.companyName
FROM 	products as p
JOIN	categories as c
ON		p.categoryId = c.id
JOIN	suppliers as s
on		p.supplierId = s.id;

-- a simple join is actually an inner join:
-- (in MySQL, we don't have to explicitly mention that)
SELECT 	p.id, p.name, price, c.name
FROM 	products as p
inner JOIN	categories as c
ON		p.categoryId = c.id;

-- if i want all items from left side of the join i use left join:
SELECT 	p.id, p.name, price, c.name
FROM 	products as p
left JOIN	categories as c
ON		p.categoryId = c.id;

-- same goes for the right side of the join:
SELECT 	p.id, p.name, price, c.name
FROM 	products as p
right JOIN	categories as c
ON		p.categoryId = c.id;

-- I'd use "outer join" to get all the items, both from left and right
-- however MySQL doesn't support outer joins. so, a workaround:
SELECT 	p.id, p.name, price, c.name
FROM 	products as p
left JOIN	categories as c
ON		p.categoryId = c.id
union
SELECT 	p.id, p.name, price, c.name
FROM 	products as p
right JOIN	categories as c
ON		p.categoryId = c.id;
