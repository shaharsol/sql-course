-- congradulations! you were accepted to work in Northwind! add yourself to the employees table 
-- (make sure to use REAL country and city)
insert into countries(name) values('Israel');
insert into cities(name, countryId) values('Ramat Gan', 26);
insert into employees(firstName, lastName, birthDate, countryId, cityId)
values('Shahar', 'Solomianik', '1970-01-01', 26, 98);

-- congradulations! you received an end-year bonus and can now move to live in Las Vegas, Nevada
-- update your employee information in the database to reflect that
insert into cities(name, countryId)
values('Las Vegas', (select id from countries where name = 'USA'));

UPDATE employees
SET		countryId = (select id from countries where name = 'USA'),
		cityId = (select id from cities where name = 'Las Vegas')
WHERE	firstName = 'Shahar' and lastName = 'Solomianik';

-- delete all data from order-details table
delete FROM `order-details`;

-- bad news! your deletion of the orders table caused a company crisis and you are fired!
-- delete yourself from the employees table
delete FROM employees
where firstName = 'Shahar' and lastName = 'Solomianik';
