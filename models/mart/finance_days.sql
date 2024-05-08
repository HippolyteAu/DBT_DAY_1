
SELECT
    date_date
    ,COUNT(orders_id) AS nb_transactions
    ,ROUND(SUM(tot_revenue),0) AS revenue 
    ,ROUND(SUM(tot_revenue)/COUNT(orders_id),1) AS average_basket
    ,ROUND(SUM(margin),0) AS margin 
    ,ROUND(SUM(operational_margin),0) AS operational_margin 
    ,ROUND(SUM(purchase_cost),0) AS purchase_cost 
    ,ROUND(SUM(shipping_fee),0) AS shipping_fee 
    ,ROUND(SUM(logcost),0) AS logcost 
    ,ROUND(SUM(ship_cost),0) AS ship_cost 
    ,SUM(tot_quantity) AS quantity 
FROM {{ ref('int_orders_operational') }}
GROUP BY  date_date
ORDER BY  date_date 