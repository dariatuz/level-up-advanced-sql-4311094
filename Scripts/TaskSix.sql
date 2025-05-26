SELECT 
    employee.firstName, 
    employee.lastName, 
    COUNT(*) AS CarsSold
FROM employee
INNER JOIN sales ON employee.employeeId = sales.employeeId
GROUP BY 
    employee.firstName, 
    employee.lastName
HAVING COUNT(*) > 5;
