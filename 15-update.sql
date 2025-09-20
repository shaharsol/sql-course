-- simple update
UPDATE	products
SET		price = price * 1.1;

-- i can set as many columns as i wish in a single command
UPDATE	products
SET		price = price * 0.9,
		stock = stock + 10;

-- filter the row(s) to update:
UPDATE	products
SET		price = 12,
		stock = 100
WHERE	id = 1;

-- i can update multi rows in one filtered command:
UPDATE	products
SET		price = 12,
		stock = 100
WHERE	id < 10;