-- order by: sorts the result set according to the order by clause. the default is order is ascending order
SELECT id, name, price FROM `products` WHERE price > 10 order by price;

-- this is the same, where ASC is explicitly defined
SELECT id, name, price FROM `products` WHERE price > 10 order by price ASC;

-- descending sort:
SELECT id, name, price FROM `products` WHERE price > 10 order by price DESC;

-- inner sort, for items that are "equal" in the outer sort
SELECT id, name, price FROM `products` WHERE price > 10 order by price DESC, name DESC;

-- i can limit the size of the result set, usually after sorting
SELECT id, name, price FROM `products` WHERE price > 10 order by price DESC, name DESC limit 10;

-- get the most expensive product: order by price DESC limit 1 does the work!
SELECT id, name, price FROM `products` order by price DESC limit 1;
