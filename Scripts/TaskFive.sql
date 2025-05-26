SELECT 
    employee.employeeId,
    employee.firstName,
    employee.lastName,
    MIN(sales.salesAmount) AS minSalesAmount,
    MAX(sales.salesAmount) AS maxSalesAmount
FROM sales
INNER JOIN employee ON sales.employeeId = employee.employeeId
GROUP BY 
    employee.employeeId,
    employee.firstName,
    employee.lastName;
