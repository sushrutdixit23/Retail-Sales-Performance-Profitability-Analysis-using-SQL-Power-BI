SELECT COUNT(*) 
FROM orders;

select
  ROUND(SUM(Sales), 2) as total_revenue,
  ROUND(SUM(Profit), 2) as total_profit
 from orders;

select
  Region,
  ROUND(SUM(Sales), 2) as revenue,
  ROUND(SUM(Profit), 2) as profit
 from orders
 group by Region
 order by profit desc;

SELECT
  `Product Name`,
  ROUND(SUM(Sales), 2) AS revenue,
  ROUND(SUM(Profit), 2) AS profit
FROM orders
GROUP BY `Product Name`
ORDER BY profit DESC;

SELECT
  `Product Name`,
  ROUND(SUM(Sales), 2) AS revenue,
  ROUND(SUM(Profit), 2) AS profit
FROM orders
GROUP BY `Product Name`
having SUM(Profit)< 0
order by profit;

SELECT
  `Product Name`,
  ROUND(SUM(Sales), 2) AS revenue,
  ROUND(SUM(Profit), 2) AS profit,
  ROUND((SUM(Profit)/SUM(Sales))*100, 2) AS margin
FROM orders
GROUP BY `Product Name`
HAVING SUM(Sales) > 10000
ORDER BY margin ASC;


SELECT
  Discount,
  ROUND(SUM(Sales), 2) AS revenue,
  ROUND(SUM(Profit), 2) AS profit
FROM orders
GROUP BY Discount
ORDER BY Discount;

SELECT
  Discount,
  ROUND(SUM(Sales), 2) AS revenue,
  ROUND(SUM(Profit), 2) AS profit,
  ROUND((SUM(Profit)/SUM(Sales))*100, 2) as margin
FROM orders
GROUP BY Discount
ORDER BY Discount;

SELECT
  Discount,
  ROUND(SUM(Sales), 2) AS revenue,
  ROUND(SUM(Profit), 2) AS profit
from orders
where Discount >= 0.3
group by Discount 
order by profit;

select
 `Product Name`,
 Discount,
 ROUND(SUM(Sales),2) as revenue,
 ROUND (SUM(Profit), 2) as profit
from orders
where Discount > 0
group by `Product Name`, Discount 
order by profit asc
limit 15;

SELECT
  Segment,
  ROUND(SUM(Sales),2) AS revenue,
  ROUND(SUM(Profit),2) AS profit
FROM orders
GROUP BY Segment
ORDER BY profit DESC;

select 
  Segment,
  ROUND(SUM(Sales),2) as revenue,
  ROUND(SUM(Profit),2) as profit,
  ROUND((SUM(Profit)/SUM(Sales))*100, 2) as margin
from orders
group by Segment
order by margin desc;

select 
  `Customer Name`,
  Segment,
  ROUND(SUM(Sales), 2) as revenue,
  ROUND(SUM(Profit), 2) as profit
from orders 
group by `Customer Name`, Segment 
order by profit desc
limit 10;

select 
  `Customer Name`,
  Segment,
  ROUND(SUM(Sales), 2) as revenue,
  ROUND(SUM(Profit), 2) as profit
from orders 
group by `Customer Name`, Segment 
having SUM(Profit) < 0
order by Profit;

select
  Segment,
  Discount,
  ROUND(SUM(Sales), 2) as revenue,
  ROUND(SUM(Sales), 2) as profit
from orders
group by Segment, Discount 
order by profit;

CREATE OR REPLACE VIEW sales_analysis_view AS
SELECT
  `Order Date`        AS order_date,
  `Region`            AS region,
  `Segment`           AS customer_segment,
  `Product Name`      AS product_name,
  ROUND(Sales, 2)     AS sales,
  ROUND(Profit, 2)    AS profit,
  Discount            AS discount,
  ROUND((Profit / NULLIF(Sales, 0)) * 100, 2) AS profit_margin
FROM orders;

SELECT *
FROM sales_analysis_view
LIMIT 10;

SELECT
  region,
  ROUND(SUM(sales), 2) AS revenue,
  ROUND(SUM(profit), 2) AS profit
FROM sales_analysis_view
GROUP BY region
ORDER BY profit DESC;



