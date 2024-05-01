SELECT
    Date_sale,
    Year_sale,
    Month_sale,
    year_month_date,
    Customer_Age,
    Customer_Gender,
    Country,
    State_sale,
    Product_Category,
    Sub_Category,
    Quantity,
    Unit_Cost,
    Unit_Price,
    Cost,
    Revenue,
    Revenue - Cost AS Margin,
    Unit_Price - Unit_Cost AS Unit_Margin,
    CASE
        WHEN Customer_Age <= 24 THEN '17-25'
        WHEN Customer_Age >=25 and Customer_Age <=34 THEN '25-34'
        WHEN Customer_Age >=35 and Customer_Age <=44 THEN '35-44'
        WHEN Customer_Age >=45 and Customer_Age <=54 THEN '45-54'
        WHEN Customer_Age >=55 and Customer_Age <=64 THEN '55-64'
        WHEN Customer_Age >=65 and Customer_Age <=74 THEN '65-74'
        WHEN Customer_Age >=75 THEN '74_87'
        ELSE '0'
    END AS Range_Age
FROM {{ ref('sales_clean')}}