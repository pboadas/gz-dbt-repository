SELECT
date_date
,orders_id
, SUM(revenue) as revenue
, SUM(quantity) as quantity
, SUM (purchase_cost) as purchase_cost
, SUM (margin) as margin
FROM {{ref("int_sales_margin")}}
GROUP BY orders_id, date_date
ORDER BY orders_id
