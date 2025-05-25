SELECT customer.firstName, customer.lastName, sales.salesAmount, sales.soldDate
FROM customer
INNER JOIN sales ON customer.customerId = sales.customerId
UNION

SELECT customer.firstName, customer.lastName, sales.salesAmount, sales.soldDate
FROM customer
LEFT JOIN sales ON customer.customerId = sales.customerId
WHERE sales.salesId IS NULL
UNION

SELECT customer.firstName, customer.lastName, sales.salesAmount, sales.soldDate
FROM sales
LEFT JOIN customer ON sales.customerId = customer.customerId
WHERE customer.customerID IS NULL;