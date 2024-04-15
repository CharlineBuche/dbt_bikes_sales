WITH sub_category_top_products AS(

SELECT
    Product,
    Product_Category,
    SUM(Revenue) as sum_revenue,
    /*ROW_NUMBER() OVER(ORDER BY SUM(Revenue) DESC) as rank_revenue,*/
    SUM(Quantity) as sum_qty,
FROM `keen-alignment-402208.dbt_bikes_sales.sales_clean`
GROUP BY 1, 2
/*QUALIFY rank_revenue <= 5*/)

SELECT
    Product,
    Product_Category,
    sum_qty,
    sum_revenue,
    ROUND(SAFE_DIVIDE(sum_revenue, sum_qty),2) as revenue_quantity,
    ROW_NUMBER() OVER(ORDER BY SAFE_DIVIDE(sum_revenue, sum_qty) DESC) as rank_revenue_product,
    ROW_NUMBER() OVER(ORDER BY sum_revenue DESC) as rank_revenue,
FROM sub_category_top_products