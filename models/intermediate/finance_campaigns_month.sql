
SELECT concat (extract (year FROM date_date), '- 0' , extract (month FROM date_date)) as date_month,
round(sum(ads_margin),2) as ads_margin ,
round(sum(average_basket),2) as average_basket,
round(sum(operational_margin),2) as operational_margin,
round(sum(ads_cost),2) as ads_cost,
round(sum(impression),2) as impression,
round(sum(click),2) as click
FROM {{ ref('finance_campaigns_day') }}
GROUP BY date_month
ORDER BY date_month DESC


