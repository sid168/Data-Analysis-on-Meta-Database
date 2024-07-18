-- Have the number of conversions been trending upwards or downwards for Facebook for the age bucket 18-24 and 25-34 over the last few years?

SELECT SUM(conversions), years 
from meta_revenue
WHERE (age_bucket_user='18-24' OR age_bucket_user='25-34') AND parent_company='Facebook'
GROUP BY years








