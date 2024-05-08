SELECT c.date_date, 
round((operational_margin - ads_cost),2) as ads_margin,
average_basket,
operational_margin,
ads_cost,
impression,
click,
FROM {{ ref('int_campaigns_day') }} as c
LEFT JOIN {{ ref('finance_days') }} as f
ON c.date_date = f.date_date
Order by c.date_date DESC