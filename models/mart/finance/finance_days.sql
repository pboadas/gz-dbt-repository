
SELECT
COUNT(orders_id) as nb_transactions
, SUM(revenue) as revenue
, SAFE_DIVIDE(SUM(revenue),COUNT(orders_id)) as avg_basket
, SUM(margin) as margin
, SUM(operational_margin) as op_margin
FROM {{ref("int_orders_operational")}}
GROUP BY date_date
