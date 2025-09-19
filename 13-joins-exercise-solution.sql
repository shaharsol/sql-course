-- display all orders from USA
SELECT 	*
FROM	orders as ord
JOIN	countries as ctr
ON		ctr.id = ord.countryId
AND		ctr.name = 'USA';

-- display all products ordered from USA

-- generate a list of suppliers and the number of thier products we 
-- sold in USA, ordered from most popular to least