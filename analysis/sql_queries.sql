SELECT 
    Region, 
    SUM(Sales_Value) AS Total_Revenue,
    COUNT(Transaction_ID) AS Transaction_Count
FROM retail_sales
GROUP BY Region
ORDER BY Total_Revenue DESC;

SELECT 
    Day_Type, -- (Created during data cleaning)
    AVG(Sales_Value) AS Avg_Transaction_Value,
    SUM(Sales_Value) AS Total_Revenue
FROM retail_sales
GROUP BY Day_Type;

SELECT TOP 5
    Product_Category, 
    SUM(Quantity_Sold) AS Total_Items_Sold
FROM retail_sales
GROUP BY Product_Category
ORDER BY Total_Items_Sold DESC;
