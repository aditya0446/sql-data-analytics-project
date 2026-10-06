--3.   Date Exploration
select 
	min(order_date) as first_order_date,
	max(order_date) as last_order_date,
	datediff(year,min(order_date),max(order_date)) as order_range_years,
	datediff(month,min(order_date),max(order_date)) as order_range_months
from gold.fact_sales

select 
	min(birthdate) as oldest_birthdate,
	datediff(year,min(birthdate),getdate()) as oldest_age,
	max(birthdate) as youngest_birthdate,
	datediff(year,max(birthdate),getdate()) as youngest_age
from gold.dim_customers