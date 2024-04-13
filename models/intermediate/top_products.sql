SELECT

Sub_Category,
Product_Category,
SUM(Revenue) as sumrev,
ROW_NUMBER() OVER(ORDER BY SUM(Revenue) DESC) as rank_revenue

FROM `keen-alignment-402208.dbt_bikes_sales.sales_clean`
GROUP BY 1, 2
/*QUALIFY rank_revenue <= 5*/