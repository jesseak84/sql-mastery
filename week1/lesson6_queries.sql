-- Lesson 6: HAVING

-- ============================================
-- BASIC HAVING
-- ============================================

-- Return only titles with more than 1 employee
SELECT Title,
       COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Title
HAVING COUNT(*) > 1;

-- Return ReportsTo groups where earliest hire is after 2002
SELECT ReportsTo,
       MIN(HireDate) AS EarliestHire
FROM Employee
GROUP BY ReportsTo
HAVING MIN(HireDate) > '2002-12-31';

-- ============================================
-- WHERE AND HAVING TOGETHER
-- ============================================

-- Titles with more than 1 employee excluding those with no manager
SELECT Title,
       COUNT(*) AS EmployeeCount
FROM Employee
WHERE ReportsTo IS NOT NULL
GROUP BY Title
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;

-- ReportsTo groups with average EmployeeId above 3 for post-2002 hires
SELECT ReportsTo,
       AVG(EmployeeId) AS AvgEmployeeId
FROM Employee
WHERE HireDate > '2002-01-01'
GROUP BY ReportsTo
HAVING AVG(EmployeeId) > 3;