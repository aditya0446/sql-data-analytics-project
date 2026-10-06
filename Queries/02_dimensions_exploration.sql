--2.  Dimensions Exploration
select distinct country from gold.dim_customers

select distinct category from gold.dim_products

select distinct category,subcategory,product_name from gold.dim_products
order by 1,2,3