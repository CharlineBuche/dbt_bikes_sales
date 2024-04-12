SELECT
    Date as date_sale,
    CAST(Year AS INT) as year_sale,
    Month as month_sale,
    CAST(Customer_Age AS INT) as Customer_Age,
    Customer_Gender,
    Country,
    State as state_sale,
    Product_Category,
    Sub_Category,
    CAST(Quantity AS INT) as Quantity,
    Unit_Cost,
    Unit_Price,
    Cost,
    Revenue
from {{ source('src_sales', 'sales') }}
WHERE Date IS NOT NULL

