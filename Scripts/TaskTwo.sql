SELECT employee.firstName, sales.salesId 
FROM employee
LEFT JOIN sales ON employee.employeeId = sales.employeeId
WHERE employee.title = 'Sales Person'
AND sales.salesId IS NULL