-- Question #1: 
-- What is the average annual revenue per sector of clients 
-- that work in the sectors Insurance and Banking?


-- SELECT AVG(annual_revenue),
-- 			 CASE WHEN LOWER(sector) IN ('banking')
-- 						THEN 'banking'
-- 					  WHEN LOWER(sector) IN ('insurance')
--             THEN 'insurance'
--             ELSE 'other'
-- 			 END AS clean_sector
--        FROM meta_clients
--        GROUP BY clean_sector


-- Alternate solution


-- SELECT *
-- FROM (
--     SELECT AVG(annual_revenue) AS avg_annual_revenue,
--         CASE 
--             WHEN LOWER(sector) IN ('banking') THEN 'banking'
--             WHEN LOWER(sector) IN ('insurance') THEN 'insurance'
--             ELSE 'other'
--         END AS clean_sector
--     FROM meta_clients
--     GROUP BY clean_sector
-- ) AS table_avg_annual_revenue
-- WHERE clean_sector <> 'other';



---------------------------------------------

-- Question #2: 
-- Your manager wants to analyze the marketing spend percentage by country, 
-- but the data is not 100% clean. He mentions that you can clean the country field by 
-- using the sales team information, and shared the following mapping with you: 

-- UK = United Kingdom
-- FR = France
-- ES = Spain
-- IT = Italy
-- DACH = Germany

-- What is the average marketing spend percentage per country?

-- SELECT AVG(marketing_spend_perc), 
-- COALESCE(country, sales_team) AS new_country,

-- CASE WHEN new_country LIKE '%_UK_%' THEN 'United Kingdom'
-- WHEN new_country LIKE '%_DACH_%' THEN 'Germany'
-- WHEN new_country LIKE '%_IT_%' THEN 'Italy'
-- WHEN new_country LIKE '%_ES_%' THEN 'Spain'
-- WHEN new_country LIKE '%_FR_%' THEN 'France'
-- END AS clean_country
-- FROM meta_clients
-- GROUP BY new_country, clean_country

-- coalesce - country, sales team 
-- change country to proper country names using case when - create new column country
-- calculate avg 
-- group by new country


SELECT CASE WHEN country IS NOT NULL THEN country
						WHEN sales_team LIKE '%UK%' THEN 'United Kingdom'
            WHEN sales_team LIKE '%FR%' THEN 'France'
            WHEN sales_team LIKE '%ES%' THEN 'Spain'
            WHEN sales_team LIKE '%IT%' THEN 'Italy'
            WHEN sales_team LIKE '%DACH%' THEN 'Germany'
            ELSE country
       END AS clean_country,
			 AVG(marketing_spend_perc) AS avg_spend

FROM meta_clients

GROUP BY clean_country

