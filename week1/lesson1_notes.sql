-- Lesson 1: SQL Foundations
-- Key concepts: SELECT, FROM, data types, primary/foreign keys

-- Basic SELECT - all columns
SELECT *
FROM members;

-- Selective columns - better for performance and clarity
SELECT claim_id, service_date, amount
FROM claims;

/*
   Primary Key: uniquely identifies every row in a table
   Foreign Key: points to a primary key in another table
   Data Types: enforce what data can be stored in a column
*/