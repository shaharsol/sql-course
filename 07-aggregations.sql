-- basic group by: i can group the result set into "separate" sets
-- from each set i can fetch only columns which have a constant value in the group
-- (usually the same column that is used in the group by clause)
-- or invoke group functions on other columns
SELECT categoryId, avg(price) from products group by categoryId;

-- i can invoke as many group functions i want once i have the group:
SELECT categoryId, avg(price), min(price), max(price), sum(price) from products group by categoryId;

-- group by selects can be sorted as usual
SELECT categoryId, supplierId, avg(price) from products group by categoryId, supplierId order by avg(price) DESC;

-- use alias on the column name for easier sorting later
SELECT categoryId, supplierId, avg(price) as avg_price from products group by categoryId, supplierId order by avg_price DESC;

-- i can filter which rows are fetched into the groups using where
-- but for filtering rows according to the group function results
-- i need to use the HAVING clause
SELECT categoryId, supplierId, avg(price) as avg_price 
from products 
where price > 10 
group by categoryId, supplierId 
having avg_price > 30;

-- I can use aggregation functions without group by, and then it treats the result set as a single group
select avg(price), min(price), max(price), sum(price) FROM products;

