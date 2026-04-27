-- Lesson 4: Calculated Columns & Basic Functions

-- ============================================
-- ARITHMETIC IN SELECT
-- ============================================

-- Calculate a bonus value from EmployeeId
SELECT FirstName,
       LastName,
       EmployeeId * 250 AS AnnualBonus
FROM Employee;

-- ============================================
-- STRING FUNCTIONS
-- ============================================

-- Concatenate first and last name into a single column
SELECT FirstName || ' ' || LastName AS FullName
FROM Employee;

-- Return first name and character count ordered by longest name first
SELECT FirstName,
       LENGTH(FirstName) AS NameLength
FROM Employee
ORDER BY LENGTH(FirstName) DESC;

-- Convert first and last name to uppercase
SELECT UPPER(FirstName) AS First,
       UPPER(LastName) AS Last
FROM Employee;

-- ============================================
-- DATE FUNCTIONS
-- ============================================

-- Calculate years employed for each employee
SELECT FirstName,
       HireDate,
       STRFTIME('%Y', DATE('now')) - STRFTIME('%Y', HireDate) AS YearsEmployed
FROM Employee
ORDER BY HireDate ASC;

-- Extract birth year from birth date
SELECT FirstName,
       BirthDate,
       STRFTIME('%Y', BirthDate) AS BirthYear
FROM Employee;

-- ============================================
-- CASE WHEN
-- ============================================

-- Categorize employees by length of service
SELECT FirstName,
       HireDate,
       CASE
           WHEN STRFTIME('%Y', HireDate) < '2003' THEN 'Veteran'
           WHEN STRFTIME('%Y', HireDate) <= '2004' THEN 'Experienced'
           WHEN STRFTIME('%Y', HireDate) > '2004' THEN 'Newer Staff'
           ELSE 'Other'
       END AS ServiceLength
FROM Employee;