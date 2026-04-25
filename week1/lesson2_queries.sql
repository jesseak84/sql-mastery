-- Lesson 2: Filtering & Sorting Data

-- ============================================
-- WHERE CLAUSE & COMPARISON OPERATORS
-- ============================================

-- Return a specific employee by ID
SELECT *
FROM Employee
WHERE EmployeeId = 5;

-- Return all employees with EmployeeId greater than 4
SELECT *
FROM Employee
WHERE EmployeeId > 4;

-- Return all employees who are not Sales Support Agents
SELECT *
FROM Employee
WHERE Title != 'Sales Support Agent';

-- Return only name and title for employees with ID 3 or less
SELECT FirstName, LastName, Title
FROM Employee
WHERE EmployeeId <= 3;

-- ============================================
-- AND / OR LOGIC
-- ============================================

-- Return employees who are Sales Manager or General Manager
SELECT *
FROM Employee
WHERE Title = 'Sales Manager' OR Title = 'General Manager';

-- Return IT Staff who report to employee 6
SELECT *
FROM Employee
WHERE Title = 'IT Staff' AND ReportsTo = 6;

-- ============================================
-- ORDER BY
-- ============================================

-- Sort all employees by last name Z to A
SELECT *
FROM Employee
ORDER BY LastName DESC;

-- Sort by title alphabetically, then last name within each title group
SELECT *
FROM Employee
ORDER BY Title ASC, LastName ASC;

-- Return employees who report to employee 1, sorted by hire date oldest to newest
SELECT *
FROM Employee
WHERE ReportsTo = 1
ORDER BY HireDate ASC;

-- ============================================
-- LIMIT
-- ============================================

-- Return the 3 most recently hired employees
SELECT *
FROM Employee
ORDER BY HireDate DESC
LIMIT 3;

-- Return only the first employee alphabetically by last name
SELECT *
FROM Employee
ORDER BY LastName ASC
LIMIT 1;