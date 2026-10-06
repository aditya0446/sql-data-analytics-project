--8.  Cumulative Analysis
-- Calculate the total sales per month 
-- and the running total of sales over time 

-- step 1
select
	order_date,
	sales_amount
from gold.fact_sales

-- step 2
select 
	datetrunc(month,order_date),
	sum(sales_amount)
from gold.fact_sales
where order_date is not null
group by datetrunc(month,order_date)
order by datetrunc(month,order_date)

-- step 3
select
	order_date,total_sales
from (
select 
	datetrunc(year,order_date) as order_date,
	sum(sales_amount) as total_sales
from gold.fact_sales
where order_date is not null
group by datetrunc(year,order_date)
--order by datetrunc(month,order_date)
)t
order by total_sales

-- step 4
select
	order_date,
	total_sales,
	sum(total_sales) over(order by order_date) as running_total_sales
from (
select 
	datetrunc(year,order_date) as order_date,
	sum(sales_amount) as total_sales
from gold.fact_sales
where order_date is not null
group by datetrunc(year,order_date)
--order by datetrunc(month,order_date)
)t