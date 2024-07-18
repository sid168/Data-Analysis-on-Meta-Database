-- SELECT (SUM(revenue)/SUM(conversions)) AS revenue_per_conversion
-- FROM meta_revenue

-- SELECT sales_team,parent_company,
-- 			 SUM(conversions) AS total_conversions,
--        SUM(revenue) AS total_revenue
-- FROM meta_revenue
-- GROUP BY sales_team,parent_company

-- SELECT sales_team,
-- 			 AVG(clicks) AS avg_clicks
        
-- FROM meta_revenue
-- WHERE years=2022

-- GROUP BY sales_team;

SELECT ad_types,
			 SUM(clicks) AS total_clicks

FROM meta_revenue
WHERE parent_company='Instagram'
GROUP BY ad_types






