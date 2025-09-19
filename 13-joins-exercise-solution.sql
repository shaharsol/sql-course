-- display all orders from USA
SELECT 	*
FROM	orders as ord
JOIN	countries as ctr
ON		ctr.id = ord.countryId
AND		ctr.name = 'USA';

-- display all products ordered from USA
SELECT 	DISTINCT prd.name
FROM	orders as ord
JOIN	countries as ctr
ON		ctr.id = ord.countryId
AND		ctr.name = 'USA'
JOIN	`order-details` as detail
ON		detail.orderId = ord.id
JOIN	products as prd
on		prd.id = detail.productId
order by prd.name ASC;

-- generate a list of suppliers and the number of their products we 
-- sold in USA, sorted from most popular to least
SELECT 	sp.id, sp.companyName, sum(detail.quantity) as total_per_supplier
FROM	orders as ord
JOIN	countries as ctr
ON		ctr.id = ord.countryId
AND		ctr.name = 'USA'
JOIN	`order-details` as detail
ON		detail.orderId = ord.id
JOIN	products as prd
on		prd.id = detail.productId
join	suppliers as sp
on		prd.supplierId = sp.id
group by sp.id
order by total_per_supplier DESC;