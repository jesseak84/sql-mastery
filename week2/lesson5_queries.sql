-- Lesson 5: Aggregate Functions & GROUP BY

-- ============================================
-- BASIC AGGREGATE FUNCTIONS
-- ============================================

-- Count total number of employees
SELECT COUNT(*) AS NumberOfEmployees
FROM Employee;

-- Sum of all EmployeeIds
SELECT SUM(EmployeeId) AS SumOfEmployeeIds
FROM Employee;

-- Average EmployeeId value
SELECT AVG(EmployeeId) AS EmployeeIdAverage
FROM Employee;

-- Earliest birth date - oldest employee
SELECT MIN(BirthDate) AS OldestEmployee
FROM Employee;

-- Most recent hire date - newest employee
SELECT MAX(HireDate) AS NewestEmployee
FROM Employee;

-- ============================================
-- COUNT(*) VS COUNT(COLUMN)
-- ============================================

-- Count all rows including NULLs
SELECT COUNT(*) AS TotalRows
FROM Employee;

-- Count only non-NULL ReportsTo values
SELECT COUNT(ReportsTo) AS HasManager
FROM Employee;

-- ============================================
-- AGGREGATES WITH WHERE
-- ============================================

-- Count Sales Support Agents
SELECT COUNT(*) AS SalesAgentCount
FROM Employee
WHERE Title = 'Sales Support Agent';

-- Earliest and latest hire date for employees reporting to manager 2
SELECT MIN(HireDate) AS EarliestHire,
       MAX(HireDate) AS LatestHire
FROM Employee
WHERE ReportsTo = 2;

-- Count employees hired before 2003
SELECT COUNT(*) AS VeteranCount
FROM Employee
WHERE HireDate < '2003-01-01';

-- ============================================
-- GROUP BY
-- ============================================

-- Count employees by title ordered by most common first
SELECT Title,
       COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Title
ORDER BY EmployeeCount DESC;

-- Earliest hire date per manager group
SELECT ReportsTo,
       MIN(HireDate) AS EarliestHire
FROM Employee
GROUP BY ReportsTo;

-- Count direct reports per manager
SELECT ReportsTo,
       COUNT(*) AS DirectReports
FROM Employee
GROUP BY ReportsTo
ORDER BY DirectReports DESC;