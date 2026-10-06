--7.  Change Over Time Analysis
-- Analyse sales performance over time
-- Quick Date Functions
select 
	year(order_date),
	sum(sales_amount)
from gold.fact_sales
where order_date is not null
group by year(order_date)
order by year(order_date)


select 
	year(order_date) as order_year,
	month(order_date) as order_month,
	sum(sales_amount) as total_sales,
	count(distinct customer_key) as total_customer,
	sum(quantity) as total_quantity
from gold.fact_sales
where order_date is not null
group by year(order_date),month(order_date)
order by year(order_date),month(order_date)

-- DATETRUNC()
datetrunc(month,order_date) as order_date

-- FORMAT()
format(order_date,'yyyy-MMM') as order_date