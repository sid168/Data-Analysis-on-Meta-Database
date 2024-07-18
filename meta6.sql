
SELECT SUM(revenue) as total_revenue,SUM(conversions) as total_conversions,
case when dates BETWEEN  '2022-01-01' and  '2022-03-31' then 'Q1'
when dates BETWEEN '2022-04-01' and '2022-06-30' then 'Q2'
when dates BETWEEN '2022-07-01' and '2022-09-30' then 'Q3'
when dates BETWEEN '2022-10-01' and '2022-12-31' then 'Q4'
end as quarters
FROM meta_revenue
WHERE years=2022 AND sales_team LIKE '%SMB%'
GROUP BY quarters








