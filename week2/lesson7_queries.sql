-- Lesson 7: JOINs Part 1 - INNER JOIN & LEFT JOIN

-- ============================================
-- INNER JOIN
-- ============================================

-- Join Customer to Invoice returning name and invoice details
SELECT c.FirstName,
       c.LastName,
       i.InvoiceDate,
       i.Total
FROM Customer c
INNER JOIN Invoice i
ON c.CustomerId = i.CustomerId
ORDER BY i.Total DESC
LIMIT 5;

-- ============================================
-- LEFT JOIN
-- ============================================

-- Left join Customer to Invoice - all customers even without invoices
SELECT c.FirstName,
       c.LastName,
       i.Total
FROM Customer c
LEFT JOIN Invoice i
ON c.CustomerId = i.CustomerId;

-- Find customers with no invoices using LEFT JOIN + IS NULL
SELECT c.FirstName,
       c.LastName,
       i.Total
FROM Customer c
LEFT JOIN Invoice i
ON c.CustomerId = i.CustomerId
WHERE i.CustomerId IS NULL;

-- ============================================
-- JOIN WITH AGGREGATION
-- ============================================

-- Top 5 customers by invoice count
SELECT c.FirstName,
       c.LastName,
       COUNT(i.InvoiceId) AS InvoiceCount
FROM Customer c
INNER JOIN Invoice i
ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName
ORDER BY InvoiceCount DESC
LIMIT 5;

-- Customers who have spent more than $40 total
SELECT c.FirstName,
       c.LastName,
       SUM(i.Total) AS TotalSpent
FROM Customer c
INNER JOIN Invoice i
ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName
HAVING SUM(i.Total) > 40
ORDER BY TotalSpent DESC;