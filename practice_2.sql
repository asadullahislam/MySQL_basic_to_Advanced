CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
);

INSERT INTO orders (customer_id,order_date,total_amount) VALUES
(1, '2022-01-05', 100.50), -- Customer 1 orders one item
(2, '2022-01-10', 200.75), -- Customer 2 orders one item
(3, '2022-02-15', 150.00), -- Customer 3 orders two items
(3, '2022-03-01', 175.25),
(4, '2022-03-20', 300.00), -- Customer 4 orders three items
(4, '2022-03-25', 120.50),
(4, '2022-04-01', 250.75),
(5, '2022-04-05', 180.00), -- Customer 5 orders one item
(6, '2022-04-15', 95.25),  -- Customer 6 orders four items
(6, '2022-04-20', 400.00),
(6, '2022-05-05', 275.75),
(6, '2022-05-10', 320.00),
(7, '2022-06-01', 145.25), -- Customer 7 orders one item
(8, '2022-06-15', 375.50), -- Customer 8 orders two items
(8, '2022-06-20', 220.80),
(9, '2022-07-01', 180.45), -- Customer 9 orders three items
(9, '2022-07-05', 290.00),
(9, '2022-07-10', 305.75),
(10, '2022-08-01', 99.99) -- Customer 10 orders one item

SELECT * from orders;

DROP Table orders

-- The HAVING clause in SQL is used to filter results after applying aggregate functions (like SUM, COUNT, AVG, MAX, MIN) in a GROUP BY query. It is similar to the WHERE clause, but while WHERE filters rows before aggregation, HAVING filters groups after aggregation.

-- Key Reasons to Use HAVING:
-- Filter Aggregated Results: To filter groups based on conditions applied to aggregate values.
-- Post-Aggregation Filtering: Unlike WHERE, which works on individual rows, HAVING works on the aggregated data produced by GROUP BY.
-- Combining with GROUP BY: Used specifically with GROUP BY to narrow down groups of data.


--1. Find customers who have placed more than 2 orders and calculate the total amount spent by each of these customers.

select customer_id ,count(order_id),sum(total_amount)  from orders GROUP BY customer_id  HAVING count(order_id) >2 ;


--2. Find the total amount of orders placed each month in the year 2022.
select extract(MONTH from order_date ) as month ,sum(total_amount)  from orders WHERE extract(year from order_date)=2022 GROUP BY month 



 


                                                                                                            select * from orders                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 