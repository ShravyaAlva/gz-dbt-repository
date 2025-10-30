SELECT
product_id
,date_date
,orders_id
,revenue
,quantity
,purchase_cost
,ROUND(s.quantity*p.purchase_price,2) as purchase_cost
,ROUND(s.revenue-s.quantity*p.purchase_price,2) as margin
FROM {{ref("stg_gz_raw_data__raw_gz_sales")}} s
LEFT JOIN {{ref("stg_gz_raw_data__raw_gz_product")}} p
USING(product_id) 