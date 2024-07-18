-- What is the average amount of revenue per ad that is generated per quarter for the SMB sales team in 2022?



SELECT SUM(revenue)/COUNT(DISTINCT ad_id)  as avg_revenue,
case when dates BETWEEN  '2022-01-01' and  '2022-03-31' then 'Q1'
when dates BETWEEN '2022-04-01' and '2022-06-30' then 'Q2'
when dates BETWEEN '2022-07-01' and '2022-09-30' then 'Q3'
when dates BETWEEN '2022-10-01' and '2022-12-31' then 'Q4'
end as quarters
FROM meta_revenue
WHERE years=2022 AND sales_team LIKE '%SMB%'
GROUP BY quarters








