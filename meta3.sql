-- What is the number of impressions in 2022 per age group across Facebook and Instagram?

SELECT SUM(impressions), parent_company, age_bucket_user
FROM meta_revenue
WHERE years='2022'
GROUP BY age_bucket_user, parent_company








