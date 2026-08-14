SELECT COUNT(*) AS total_orders
FROM decodelabs_project3.oluwapelumi_sql_decodelabs;

SELECT COUNT(*) AS total_orders
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`;

SELECT Product, SUM(Quantity) AS Total_Quantity_Sold
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Product;

SELECT 
    Product,
    SUM(Total_Price) AS Total_Revenue
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Product;

SELECT 
    Product,
    ROUND(SUM(Total_Price), 2) AS Total_Revenue
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Product;

SELECT 
    ROUND(
        SUM(CASE WHEN Order_Status = 'Cancelled' THEN 1 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Cancellation_Rate
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`;

SELECT
    SUM(
        CASE
            WHEN Order_Status = 'Cancelled' THEN 1
            ELSE 0
        END
    ) AS Cancelled_Orders
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`;

SELECT
    ROUND(
        SUM(
            CASE
                WHEN Order_Status = 'Cancelled' THEN 1
                ELSE 0
            END
        ) / COUNT(*) * 100,
        2
    ) AS Cancellation_Rate
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`;

SELECT
    ROUND(
        SUM(
            CASE
                WHEN Order_Status = 'Returned' THEN 1
                ELSE 0
            END
        ) / COUNT(*) * 100,
        2
    ) AS Returned_Rate
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`;


SELECT
    SUM(
        CASE
            WHEN Order_Status = 'Returned' THEN 1
            ELSE 0
        END
    ) AS Returned_Orders
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`;


SELECT 
    Payment_Method, COUNT(*) AS Payment_Count
FROM
    decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Payment_Method;


SELECT 
    Referral_Source,
    COUNT(*) AS Order_Count,
    ROUND(SUM(Total_Price), 2) AS Total_Revenue
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Referral_Source;


SELECT
    Referral_Source,
    ROUND(SUM(Total_Price), 2) AS Total_Revenue,
    COUNT(*) AS Order_Count
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Referral_Source;

SELECT
    Product,
    ROUND(SUM(Total_Price) / COUNT(*), 2) AS Average_Order_Value
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Product;

SELECT Order_Date
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
LIMIT 10;

SELECT
    YEAR(Order_Date) AS Order_Year,
    ROUND(SUM(Total_Price), 2) AS Total_Revenue
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY YEAR(Order_Date)
ORDER BY Order_Year;

SELECT
    YEAR(Order_Date) AS Order_Year,
    ROUND(SUM(Total_Price), 2) AS Jan_June_Revenue
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
WHERE MONTH(Order_Date) <= 6
GROUP BY YEAR(Order_Date)
ORDER BY Order_Year;

SELECT
    YEAR(Order_Date) AS Order_Year,
    MONTH(Order_Date) AS Order_Month,
    ROUND(SUM(Total_Price), 2) AS Total_Revenue
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Order_Year, Order_Month;

SELECT
    YEAR(Order_Date) AS Order_Year,
    MONTHNAME(Order_Date) AS Order_Month,
    ROUND(SUM(Total_Price), 2) AS Total_Revenue
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY YEAR(Order_Date), MONTH(Order_Date), MONTHNAME(Order_Date)
ORDER BY Order_Year, MONTH(Order_Date);


SELECT
    MAX(Total_Price) AS Highest_Order_Value
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`;


SELECT
    Product,
    COUNT(*) AS Cancelled_Orders
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
WHERE Order_Status = 'Cancelled'
GROUP BY Product;

SELECT
    Product,
    ROUND(
        SUM(
            CASE
                WHEN Order_Status = 'Cancelled' THEN 1
                ELSE 0
            END
        ) / COUNT(*) * 100,
        2
    ) AS Cancellation_Rate
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Product
ORDER BY Cancellation_Rate DESC;

SELECT
    Product,
    ROUND(
        SUM(
            CASE
                WHEN Order_Status = 'Returned' THEN 1
                ELSE 0
            END
        ) / COUNT(*) * 100,
        2
    ) AS Return_Rate
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Product
ORDER BY Return_Rate DESC;

SELECT
    Payment_Method,
    Order_Status,
    COUNT(*) AS Order_Count
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Payment_Method, Order_Status
ORDER BY Payment_Method, Order_Count DESC;


SELECT
    Payment_Method,
    ROUND(
        SUM(
            CASE
                WHEN Order_Status = 'Cancelled' THEN 1
                ELSE 0
            END
        ) / COUNT(*) * 100,
        2
    ) AS Cancellation_Rate,
    ROUND(
        SUM(
            CASE
                WHEN Order_Status = 'Returned' THEN 1
                ELSE 0
            END
        ) / COUNT(*) * 100,
        2
    ) AS Return_Rate
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Payment_Method
ORDER BY Cancellation_Rate DESC;


SELECT
    Product,
    ROUND(SUM(Total_Price), 2) AS Total_Revenue,
    COUNT(*) AS Total_Orders
    FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Product;
SELECT
    Product,
    ROUND(SUM(Total_Price), 2) AS Total_Revenue,
    COUNT(*) AS Total_Orders
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Product
ORDER BY Total_Revenue DESC;

SELECT
    Product,
    ROUND(SUM(Total_Price), 2) AS Total_Revenue,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Total_Price) / COUNT(*), 2) AS Average_Order_Value
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Product
ORDER BY Total_Revenue DESC;

SELECT
    Product,
    ROUND(SUM(Total_Price), 2) AS Total_Revenue,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Total_Price) / COUNT(*), 2) AS Average_Order_Value,
    ROUND(
        SUM(
            CASE
                WHEN Order_Status = 'Cancelled' THEN 1
                ELSE 0
            END
        ) / COUNT(*) * 100,
        2
    ) AS Cancellation_Rate
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Product
ORDER BY Total_Revenue DESC;


SELECT
    Product,
    ROUND(SUM(Total_Price), 2) AS Total_Revenue,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Total_Price) / COUNT(*), 2) AS Average_Order_Value,
    ROUND(
        SUM(
            CASE
                WHEN Order_Status = 'Cancelled' THEN 1
                ELSE 0
            END
        ) / COUNT(*) * 100,
        2
    ) AS Cancellation_Rate,
    ROUND(
        SUM(
            CASE
                WHEN Order_Status = 'Returned' THEN 1
                ELSE 0
            END
        ) / COUNT(*) * 100,
        2
    ) AS Return_Rate
FROM decodelabs_project3.`oluwapelumi sql_decodelabs`
GROUP BY Product
ORDER BY Total_Revenue DESC;


SELECT 'Thank you for staying till the end!' AS Goodbye_Message;