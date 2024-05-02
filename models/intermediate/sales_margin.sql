SELECT
    date_sale,
    year_sale,
    month_sale,
    date,
    customer_Age,
    customer_Gender,
    country,
    product_Category,
    subCategory,
    quantity,
    unit_cost,
    unit_price,
    cost,
    revenue,
    revenue - cost AS margin,
    unit_price - unit_cost AS unit_margin,
    CASE
        WHEN Customer_Age <= 24 THEN '17-25'
        WHEN Customer_Age >=25 and Customer_Age <=34 THEN '25-34'
        WHEN Customer_Age >=35 and Customer_Age <=44 THEN '35-44'
        WHEN Customer_Age >=45 and Customer_Age <=54 THEN '45-54'
        WHEN Customer_Age >=55 and Customer_Age <=64 THEN '55-64'
        WHEN Customer_Age >=65 and Customer_Age <=74 THEN '65-74'
        WHEN Customer_Age >=75 THEN '74_87'
        ELSE '0'
    END AS age_group
FROM {{ ref('sales_clean')}}