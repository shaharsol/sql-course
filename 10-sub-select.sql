-- sub select can appear in the form clause:
-- and then its result is treated as if it was a real table
select phone 
from (SELECT phone FROM employees
        union all
        select phone from customers
        union all
        select phone from suppliers
     ) as union_of_phonbes
where phone like '%(206)%';

-- sub select can appear in the where clause:
SELECT 	id, name, price
FROM 	`products`
WHERE	price > (select avg(price) from products);

-- we can also use sub select in the select clause:
-- HOWEVER, this usually results in very poor performance
-- therefore, use with caution! or don't use at all...
SELECT 	id, name, price, (select name 
                          from categories 
                          where categories.id = products.categoryId) as category
FROM 	`products`;