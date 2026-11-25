----------------------------SALES ANALYTICS-------------------------------------------- 

-- Revenue by Region
SELECT
    Region,
    ROUND(SUM(TotalPrice), 2) AS Revenue
FROM dbo.SalesAnalytics
GROUP BY Region
ORDER BY Revenue DESC;

-- Revenue by Product
SELECT
    Product,
    ROUND(SUM(TotalPrice), 2) AS Revenue
FROM dbo.SalesAnalytics
GROUP BY Product
ORDER BY Revenue DESC;

-- Revenue by Salesperson
SELECT
    Salesperson,
    ROUND(SUM(TotalPrice), 2) AS Revenue
FROM dbo.SalesAnalytics
GROUP BY Salesperson
ORDER BY Revenue DESC;

-- Revenue by Customer Type
SELECT
    CustomerType,
    ROUND(SUM(TotalPrice), 2) AS Revenue
FROM dbo.SalesAnalytics
GROUP BY CustomerType
ORDER BY Revenue DESC;

-- Monthly Revenue Trend
SELECT
    Month,
    ROUND(SUM(TotalPrice), 2) AS Revenue
FROM dbo.SalesAnalytics
GROUP BY Month
ORDER BY Revenue DESC;

-- Unit Return Analysis
SELECT
    SUM(Returned) AS ReturnedUnits,
    SUM(Quantity) AS TotalUnitsSold,
    ROUND(
        (CAST(SUM(Returned) AS FLOAT) / SUM(Quantity)) * 100,
        2
    ) AS ReturnRatePercent
FROM dbo.SalesAnalytics;

-- Average Delivery Time
SELECT
    AVG(DATEDIFF(DAY, OrderDate, DeliveryDate)) AS AvgDeliveryDays
FROM dbo.SalesAnalytics;

-- Top 10 Customers by Revenue
SELECT TOP 10
    CustomerName,
    ROUND(SUM(TotalPrice), 2) AS Revenue
FROM dbo.SalesAnalytics
GROUP BY CustomerName
ORDER BY Revenue DESC;

-- Products with Highest Returns
SELECT
    Product,
    SUM(Returned) AS ReturnedUnits
FROM dbo.SalesAnalytics
GROUP BY Product
ORDER BY ReturnedUnits DESC;

-- Revenue by Year
SELECT
    Year,
    ROUND(SUM(TotalPrice), 2) AS Revenue
FROM dbo.SalesAnalytics
GROUP BY Year
ORDER BY Year;

-- Revenue by Quarter
SELECT
    Quarter,
    ROUND(SUM(TotalPrice), 2) AS Revenue
FROM dbo.SalesAnalytics
GROUP BY Quarter
ORDER BY Quarter;