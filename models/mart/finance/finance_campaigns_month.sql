SELECT EXTRACT( MONTH FROM date_date) as month_of_the_year
,SUM(ads_cost)as ads_cost
,SUM(ads_impression) as ads_impression
,SUM(ads_clicks) as ads_clicks
,SUM(nb_transactions) as nb_transactions
,SUM(revenue) as revenue
,SUM(avg_basket) as avg_basket
,SUM(margin) as margin
,SUM(op_margin) as op_margin
,SUM(op_margin-ads_cost) as ads_margin 
FROM {{ref("int_campaigns_day")}}
JOIN {{ref("finance_days")}}
ON date_date=date_date
GROUP BY EXTRACT( MONTH FROM date_date) 
 