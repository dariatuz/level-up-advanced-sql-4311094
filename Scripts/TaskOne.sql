SELECT employee.firstName as employeeName, employee.lastName AS employeeSurname, manager.firstName AS managerName , manager.lastName AS managerSurname
FROM employee 
JOIN employee manager 
ON employee.managerId = manager.employeeID


