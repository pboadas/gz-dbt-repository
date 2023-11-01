SELECT quantity
, revenue
, product_id
, purchase_price
,date_date
,orders_id
, cast(purchase_price as FLOAT64)*quantity as purchase_cost
, revenue-(cast(purchase_price as FLOAT64)*quantity) as margin
FROM {{ref("stg_raw__sales")}} as sales
JOIN {{ref("stg_raw__product")}} as product
on sales.product_id=product.products_id