SELECT
    Date AS date_sale,
    CAST(Year AS INT) AS year_sale,
    Month as month_sale,
    FORMAT_DATE('%Y-%m', Date) AS date,
    CAST(Customer_Age AS INT) AS customer_Age,
    Customer_Gender AS customer_gender,
    Country AS country,
    Product_Category AS product_category,
    Sub_Category AS subcategory,
    CAST(Quantity AS INT) as quantity,
    Unit_Cost AS unit_cost,
    ROUND(Unit_Price, 2) as unit_price,
    Cost AS cost,
    Revenue AS revenue
from {{ source('src_sales', 'sales') }}
WHERE Date IS NOT NULL
