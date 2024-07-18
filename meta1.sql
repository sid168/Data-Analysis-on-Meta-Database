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

-- SELECT ad_types,
-- 			 SUM(clicks) AS total_clicks

-- FROM meta_revenue
-- WHERE parent_company='Instagram'
-- GROUP BY ad_types

-- What is the total revenue generated by Facebook in 2019?
-- SELECT parent_company,SUM(revenue) AS total_revenue
-- FROM meta_revenue
-- WHERE parent_company='Facebook'
-- AND years=2019
-- GROUP BY parent_company

-- SELECT CASE WHEN years BETWEEN 2010 AND 2019 THEN '2010-2019'
-- 						WHEN years BETWEEN 2020 AND 2029 THEN '2020-2029'
--        ELSE 'ÉRROR'
--        END AS decade
-- FROM meta_revenue

-- SELECT CASE WHEN clicks BETWEEN 0 AND 500 THEN '01. 0-500'
-- 						WHEN clicks BETWEEN 501 AND 1000 THEN '02. 501-1000'
--        ELSE '03. Other'
--        END AS click_range
-- FROM meta_revenue

-- SELECT years,
-- 				 CASE WHEN years BETWEEN 2010 AND 2019 THEN '2010-2019'
-- 						WHEN years BETWEEN 2020 AND 2029 THEN '2020-2029'
--        ELSE 'ÉRROR'
--        END AS decade,
--        SUM(revenue) AS total_revenue
-- FROM meta_revenue
-- GROUP BY years,decade


-- SELECT DISTINCT age_bucket_user
-- FROM meta_revenue
-- SELECT years, 
-- 			 CASE WHEN age_bucket_user IN ('18-24','25-34') THEN '01. 18-34'
-- 						WHEN age_bucket_user IN ('55-64','35-44','45-54','65+') THEN '02. 34+'
--        ELSE '03. Other'
--        END AS age_group,
--        SUM(revenue) as total_revenue
       
     
-- FROM meta_revenue
-- WHERE years=2020
-- GROUP BY age_group,years

-- SELECT years, 
-- 			 parent_company,
--        SUM(revenue) as total_revenue
       
     
-- FROM meta_revenue
-- GROUP BY years, parent_company
-- HAVING SUM(revenue) > 500


-- SELECT geo_user, 
-- 			 parent_company,
--        SUM(clicks) as total_clicks
       
     
-- FROM meta_revenue
-- WHERE years=2018 AND parent_company='Instagram'
-- GROUP BY geo_user,parent_company
-- ORDER BY total_clicks DESC
-- LIMIT 5


-- SELECT years, 
-- 			 parent_company,
--        SUM(revenue) as total_revenue
       
     
-- FROM meta_revenue
-- WHERE parent_company='Instagram'
-- GROUP BY parent_company,years
-- ORDER BY years ASC


-- SELECT years,        
--        SUM(revenue) as total_revenue
       
     
-- FROM meta_revenue
-- WHERE ad_types LIKE '%Video' 
--       AND 
--       (years=2021 OR years=2022)
-- GROUP BY  years
-- ORDER BY  years


-- SELECT  
-- 			 CASE WHEN ad_types IN ('Facebook Video','Instagram Video') THEN 'Video'
-- 						WHEN ad_types IN ('Facebook Display','Instagram Display') THEN 'Display'
--        ELSE 'Other'
--        END AS ad_products,
--        SUM(revenue) as total_revenue
-- FROM meta_revenue
-- GROUP BY ad_products

-- SELECT  
-- 			 ad_id,
--        SUM(revenue) as total_revenue
-- FROM meta_revenue
-- WHERE ad_types LIKE '%Video' AND years=2022 
-- GROUP BY ad_id

-- HAVING SUM(revenue)>2
-- ORDER BY SUM(revenue) DESC




-- SELECT 
			 
--        SUM(clicks) as total_clicks
--        FROM meta_revenue       
   
-- WHERE  age_bucket_user = '18-24' AND parent_company='Instagram'


-- SELECT client_id, 
-- 				SUM(clicks) 
--         FROM meta_revenue
-- GROUP BY client_id 
-- HAVING SUM(clicks)>1000000


-- SELECT dates,
-- 				SUM(revenue) AS total_revenue
-- FROM meta_revenue
-- GROUP BY dates

-- ORDER BY dates DESC


SELECT SUM(revenue)
FROM meta_revenue
WHERE ad_types LIKE '%Display' AND years=2018