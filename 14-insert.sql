-- simple insert
-- provide ALL neccessary data for the record
INSERT INTO cities
VALUES (null, 'Springfield', 24)

-- sometimes it gets too tedious to fill in the value list with nulls...
insert into products
values(null, 'Shawarma', null, null, null,null, null, null);

-- so, i can state the specific column names for which i provide values:
insert into products (name)
values('Falafel');

-- the list of values can be as long as i wish:
insert into products (name, price, stock)
values('Sabich', 20, 100);

-- i can insert mutli rows in one insert command
insert into products (name, price, stock)
values
('Pad Thai', 20, 100),
('Egroll', 12, 20),
('Fried Noodles', 24, 20);

-- i can use a select statement instead of the values list:
insert into products (name, price, stock)
select concat(name, '-new'), price, stock
from products;