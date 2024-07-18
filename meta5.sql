-- converison per click for instagram, age group 18-24

SELECT SUM(conversions)/SUM(clicks) as conversion_per_click, years
FROM meta_revenue
WHERE parent_company='Instagram' and age_bucket_user='18-24'
GROUP BY years








