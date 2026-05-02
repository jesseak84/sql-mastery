-- Lesson 8: JOINs Part 2 - RIGHT JOIN, FULL OUTER JOIN, SELF JOIN

-- ============================================
-- RIGHT JOIN
-- ============================================

-- Right join Customer to Invoice - all invoices even without customers
SELECT c.FirstName,
       c.LastName,
       i.InvoiceDate,
       i.Total
FROM Customer c
RIGHT JOIN Invoice i
ON c.CustomerId = i.CustomerId;

-- ============================================
-- SELF JOIN
-- ============================================

-- Show each employee alongside their manager
SELECT e.FirstName AS EmployeeFirst,
       e.LastName AS EmployeeLast,
       m.FirstName AS ManagerFirst,
       m.LastName AS ManagerLast
FROM Employee e
LEFT JOIN Employee m
ON e.ReportsTo = m.EmployeeId;

-- Show each employee with their title and their manager's title
SELECT e.FirstName AS EmployeeFirst,
       e.LastName AS EmployeeLast,
       e.Title AS EmployeeTitle,
       m.FirstName AS ManagerFirst,
       m.LastName AS ManagerLast,
       m.Title AS ManagerTitle
FROM Employee e
LEFT JOIN Employee m
ON e.ReportsTo = m.EmployeeId;