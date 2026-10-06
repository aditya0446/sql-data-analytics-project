--4. Measures Exploration

-- Find the Total Sales
-- Find how many items are sold
-- Find the average selling price
-- Find the Total number of Orders
-- Find the total number of products
-- Find the total number of customers
-- Find the total number of customers that has placed an order

select  'Total Sales' as measure_name,sum(sales_amount) as measure_value from gold.fact_sales
union all
select 'Total quantity', count(quantity) from gold.fact_sales
union all 
select 'Average price', avg(price) from gold.fact_sales
union all
select 'Total orders', count(distinct order_number) from gold.fact_sales
union all
select 'Total products', count(distinct product_name) from gold.dim_products
union all
select 'Total customers', count(customer_key) from gold.dim_customers
union all
select 'Total no cust placed order',count(distinct customer_key) from gold.fact_sales