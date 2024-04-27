SELECT
    year_month_date,
    Product_Category,
    Sub_Category,
    Country,
    SUM(Quantity) AS sum_quantity,
    SUM(Revenue) AS sum_revenue,
FROM {{ ref('sales_margin')}}
GROUP BY 1, 2, 3, 4