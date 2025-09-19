-- if i want to combine several result sets into one, i can use union
SELECT phone FROM employees
union
select phone from customers
union
select phone from suppliers;

-- i can union result sets as long as the structure is identical:
-- the titles of the columns don't need to match, only the types!
SELECT phone, firstName   FROM employees
union
select phone, contactName from customers
union
select phone, contactName from suppliers;

-- union eliminates double rows from the result set
-- if we insist on including the double rows, i can use 'union all'
SELECT phone FROM employees
union all
select phone from customers
union all
select phone from suppliers;