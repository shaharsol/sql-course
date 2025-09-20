-- basic delete 
-- delete a record according to it's primay key:
DELETE FROM users
WHERE	id = 3;

-- i can delete multi rows in one command, all according to the WHERE clause
DELETE FROM users
WHERE	roleId = 2

-- i can delete all table data at once, be carefull!!!
DELETE FROM users;