SELECT client_id,SUM(revenue) as Total_revenue, SUM(conversions) as total_conversions, SUM(clicks) as total_clicks, 
SUM(conversions)/SUM(clicks) conversions_per_click, SUM(revenue)/SUM(conversions) as average_revenue_per_conversion
FROM meta_revenue
WHERE years = 2022
GROUP BY client_id
ORDER BY Total_revenue DESC
limit 10







