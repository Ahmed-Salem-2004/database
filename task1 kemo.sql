SELECT * ,
creditLimit + 2000 AS New_credit
FROM classicmodels.customers
WHERE creditLimit >= 1000000   AND customerNumber  < 200  OR    country   = 'USA' 
order by New_credit desc
LIMIT 3;