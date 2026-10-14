# Sales Data Analysis — SQL Server (Project Summary)


A transaction-level sales analytics project built in SQL Server using a star schema (1 fact, 2 dimensions) to analyze 29M+ sales across 27K+ orders and 18K+ customers. 
Key outcomes: product/category ranking, 
              YoY and running totals, 
              customer segmentation, and a clear business insight — Bikes drive 96.46% of revenue.


- Used a star schema with a clear fact grain (one row per customer–product–order transaction) for high-fidelity analytics.
- Advanced SQL: large-scale joins, CTEs, window functions (running totals, ranking), aggregates, and segmentation.
- Business impact: identified high-concentration revenue drivers and customer segments that can inform pricing, inventory, and marketing.

Snapshot
- Data size: 29M+ sales rows, 27K+ orders, 18K+ customers, 295 products
- Top finding: Bikes account for 96.46% of total sales
- Customer segments: New, Regular, VIP (defined by purchase frequency & value)

Solution overview
- Schema: Star schema (1 Fact table at transaction grain; 2 Dimension tables for Product and Customer)
- Grain: One row = one customer × one product × one order (transaction-level)
- Analyses included: YoY growth, running totals, product/category ranking, customer segmentation, and category contribution




Technologies & skills
- T‑SQL / SQL Server (SSMS / Azure Data Studio)
- Data modeling: star schema, fact/dimension design
- Analytical SQL: window functions, CTEs, joins, aggregations
- Data sizing & performance considerations for mid-to-large datasets
