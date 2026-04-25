-- Lesson 3: Working with Text & Nulls

-- ============================================
-- LIKE AND WILDCARDS
-- ============================================

-- Return all employees whose last name starts with P
SELECT *
FROM Employee
WHERE LastName LIKE 'P%';

-- Return all employees whose title contains the word Manager
SELECT *
FROM Employee
WHERE Title LIKE '%Manager%';

-- Return all employees whose last name ends with n
SELECT *
FROM Employee
WHERE LastName LIKE '%n';

-- ============================================
-- IS NULL / IS NOT NULL
-- ============================================

-- Return employees with no manager (top of org chart)
SELECT *
FROM Employee
WHERE ReportsTo IS NULL;

-- Return all employees who report to someone
SELECT *
FROM Employee
WHERE ReportsTo IS NOT NULL;

-- ============================================
-- DISTINCT
-- ============================================

-- Return all unique job titles in the company
SELECT DISTINCT Title
FROM Employee;

-- Return all unique manager IDs (who has direct reports)
SELECT DISTINCT ReportsTo
FROM Employee;

-- ============================================
-- AS ALIASES
-- ============================================

-- Return manager list with readable column names, sorted alphabetically
SELECT FirstName AS "First Name",
       LastName AS "Last Name",
       Title AS Position
FROM Employee
WHERE Title LIKE '%Manager%'
ORDER BY LastName ASC;