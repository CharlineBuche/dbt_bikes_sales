SELECT
    Country,
    Sub_Category,
    Product_Category,
    SUM(Revenue) as sum_revenue,
    DENSE_RANK() OVER(PARTITION BY Country ORDER BY SUM(Revenue) DESC) as rank_revenue_by_country,
    ROUND(AVG(Customer_Age)) as avg_age
FROM {{ ref('sales_margin')}}
GROUP BY 1, 2, 3
QUALIFY rank_revenue_by_country <= 5