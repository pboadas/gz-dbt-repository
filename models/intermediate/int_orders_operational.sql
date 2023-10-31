SELECT
int_orders_margin.orders_id
,date_date
,margin
, margin+shipping_fee-logcost-cast(ship_cost as FLOAT64) as operational_margin
FROM {{ref("int_orders_margin")}}
JOIN {{ref("stg_raw__ship")}}
ON int_orders_margin.orders_id=stg_raw__ship.orders_id