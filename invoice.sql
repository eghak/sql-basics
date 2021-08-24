-- Count how many orders were made from the USA.
SELECT COUNT('USA') from invoice;

-- Find the largest order total amount.
SELECT MAX(total) from invoice;

-- Find the smallest order total amount.
SELECT MIN(total) from invoice;

-- Find all orders bigger than $5.
SELECT * FROM invoice WHERE total > 5;

-- Count how many orders were smaller than $5.
SELECT * FROM invoice WHERE total < 5;

-- Count how many orders were in CA, TX, or AZ (use IN).
SELECT * FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

-- Get the average total of the orders.
SELECT AVG(total) from invoice;

-- Get the total sum of the orders.
SELECT SUM(total) from invoice;

-- Update the invoice with an invoice_id of 5 to have a total order amount of 24.
UPDATE inovice SET total = 24 WHERE invoice_id = 5; 

-- Delete the invoice with an invoice_id of 1.
    -- DELETE FROM invoice_line; -> we have to delete this first as it is related to the invoice table invoice_id

DELETE FROM invoice WHERE invoice_id = 1;   