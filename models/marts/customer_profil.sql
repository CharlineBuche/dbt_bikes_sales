SELECT
    Country,
    Customer_Gender,
    COUNT(Customer_Gender) as nb_gender,
    COUNT(Customer_Age) as nb_age,
    ROUND(AVG(Customer_Age), 0) as Avg_age,
    APPROX_QUANTILES(Customer_Age, 2)[OFFSET(1)] as Median_age,
    MIN(Customer_Age) as Min_age,
    MAX(Customer_Age) as Max_age
FROM {{ ref('sales_margin')}}
GROUP BY 1, 2
