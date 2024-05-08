select sales.orders_id,
date_date,
round(sum(revenue),2) as tot_revenue,
round(sum(quantity),2) as tot_quantity,
round(sum(quantity * purchase_price),2) as purchase_cost,
round(sum(revenue - (quantity * purchase_price)),2) as margin 
FROM {{ ref('stg_raw__sales') }} as sales
LEFT JOIN {{ ref('stg_raw__product') }} as product
ON sales.products_id = product.products_id
group by sales.orders_id, date_date
ORDER by sales.orders_id DESC