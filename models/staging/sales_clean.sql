SELECT
    Date as Date_sale,
    CAST(Year AS INT) as Year_sale,
    Month as Month_sale,
    /*PARSE_DATE('%B %Y', CONCAT(Month, ' ', CAST(Year AS STRING))) as month_year_date,*/
    FORMAT_DATE('%Y-%m', Date) AS year_month_date,
    CAST(Customer_Age AS INT) as Customer_Age,
    Customer_Gender,
    Country,
    State as State_sale,
    Product_Category,
    Sub_Category as Product,
    CAST(Quantity AS INT) as Quantity,
    Unit_Cost,
    ROUND(Unit_Price, 2) as Unit_Price,
    Cost,
    Revenue
from {{ source('src_sales', 'sales') }}
WHERE Date >= '2015-07-01' AND Date <= '2016-06-30'
