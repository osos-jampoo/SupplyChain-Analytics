CREATE DATABASE SupplyChainDWH;
GO

USE SupplyChainDWH;
GO

CREATE SCHEMA BRONZE;
GO
USE SupplyChainDWH;
GO

SELECT COUNT(*) AS TotalRows
FROM BRONZE.Customers;

SELECT COUNT(*) AS TotalRows
FROM BRONZE.Products;

SELECT COUNT(*) AS TotalRows
FROM BRONZE.Orders;

SELECT COUNT(*) AS TotalRows
FROM BRONZE.Salesman;
----------------------------------------------------------
SELECT 'Customers' AS TableName, COUNT(*) AS TotalRows
FROM BRONZE.Customers

UNION ALL

SELECT 'Products', COUNT(*)
FROM BRONZE.Products

UNION ALL

SELECT 'Orders', COUNT(*)
FROM BRONZE.Orders

UNION ALL

SELECT 'Salesman', COUNT(*)
FROM BRONZE.Salesman;
-----------------------------------------------
SELECT
    SUM(CASE WHEN Customer_Id IS NULL OR LTRIM(RTRIM(Customer_Id)) = '' THEN 1 ELSE 0 END) AS Customer_Id,
    SUM(CASE WHEN Customer_Fname IS NULL OR LTRIM(RTRIM(Customer_Fname)) = '' THEN 1 ELSE 0 END) AS Customer_Fname,
    SUM(CASE WHEN Customer_Lname IS NULL OR LTRIM(RTRIM(Customer_Lname)) = '' THEN 1 ELSE 0 END) AS Customer_Lname,
    SUM(CASE WHEN Customer_Email IS NULL OR LTRIM(RTRIM(Customer_Email)) = '' THEN 1 ELSE 0 END) AS Customer_Email,
    SUM(CASE WHEN Customer_Password IS NULL OR LTRIM(RTRIM(Customer_Password)) = '' THEN 1 ELSE 0 END) AS Customer_Password,
    SUM(CASE WHEN Customer_Segment IS NULL OR LTRIM(RTRIM(Customer_Segment)) = '' THEN 1 ELSE 0 END) AS Customer_Segment,
    SUM(CASE WHEN Customer_City IS NULL OR LTRIM(RTRIM(Customer_City)) = '' THEN 1 ELSE 0 END) AS Customer_City,
    SUM(CASE WHEN Customer_State IS NULL OR LTRIM(RTRIM(Customer_State)) = '' THEN 1 ELSE 0 END) AS Customer_State,
    SUM(CASE WHEN Customer_Street IS NULL OR LTRIM(RTRIM(Customer_Street)) = '' THEN 1 ELSE 0 END) AS Customer_Street,
    SUM(CASE WHEN Customer_Zipcode IS NULL OR LTRIM(RTRIM(Customer_Zipcode)) = '' THEN 1 ELSE 0 END) AS Customer_Zipcode,
    SUM(CASE WHEN Customer_Country IS NULL OR LTRIM(RTRIM(Customer_Country)) = '' THEN 1 ELSE 0 END) AS Customer_Country,
    SUM(CASE WHEN Latitude IS NULL OR LTRIM(RTRIM(Latitude)) = '' THEN 1 ELSE 0 END) AS Latitude,
    SUM(CASE WHEN Longitude IS NULL OR LTRIM(RTRIM(Longitude)) = '' THEN 1 ELSE 0 END) AS Longitude,
    SUM(CASE WHEN Customer_Birth_Date IS NULL OR LTRIM(RTRIM(Customer_Birth_Date)) = '' THEN 1 ELSE 0 END) AS Customer_Birth_Date
FROM BRONZE.Customers;


SELECT
    SUM(CASE WHEN Product_Card_Id IS NULL OR LTRIM(RTRIM(Product_Card_Id)) = '' THEN 1 ELSE 0 END) AS Product_Card_Id,
    SUM(CASE WHEN Product_Name IS NULL OR LTRIM(RTRIM(Product_Name)) = '' THEN 1 ELSE 0 END) AS Product_Name,
    SUM(CASE WHEN Product_Price IS NULL OR LTRIM(RTRIM(Product_Price)) = '' THEN 1 ELSE 0 END) AS Product_Price,
    SUM(CASE WHEN Product_Status IS NULL OR LTRIM(RTRIM(Product_Status)) = '' THEN 1 ELSE 0 END) AS Product_Status,
    SUM(CASE WHEN Product_Description IS NULL OR LTRIM(RTRIM(Product_Description)) = '' THEN 1 ELSE 0 END) AS Product_Description,
    SUM(CASE WHEN Category_Id IS NULL OR LTRIM(RTRIM(Category_Id)) = '' THEN 1 ELSE 0 END) AS Category_Id,
    SUM(CASE WHEN Category_Name IS NULL OR LTRIM(RTRIM(Category_Name)) = '' THEN 1 ELSE 0 END) AS Category_Name,
    SUM(CASE WHEN Department_Id IS NULL OR LTRIM(RTRIM(Department_Id)) = '' THEN 1 ELSE 0 END) AS Department_Id,
    SUM(CASE WHEN Department_Name IS NULL OR LTRIM(RTRIM(Department_Name)) = '' THEN 1 ELSE 0 END) AS Department_Name
FROM BRONZE.Products;


SELECT
    SUM(CASE WHEN Order_Id IS NULL OR LTRIM(RTRIM(Order_Id)) = '' THEN 1 ELSE 0 END) AS Order_Id,
    SUM(CASE WHEN Order_Item_Id IS NULL OR LTRIM(RTRIM(Order_Item_Id)) = '' THEN 1 ELSE 0 END) AS Order_Item_Id,
    SUM(CASE WHEN Customer_Id IS NULL OR LTRIM(RTRIM(Customer_Id)) = '' THEN 1 ELSE 0 END) AS Customer_Id,
    SUM(CASE WHEN Product_Card_Id IS NULL OR LTRIM(RTRIM(Product_Card_Id)) = '' THEN 1 ELSE 0 END) AS Product_Card_Id,
    SUM(CASE WHEN Type IS NULL OR LTRIM(RTRIM(Type)) = '' THEN 1 ELSE 0 END) AS Type,
    SUM(CASE WHEN Days_for_shipping_real IS NULL OR LTRIM(RTRIM(Days_for_shipping_real)) = '' THEN 1 ELSE 0 END) AS Days_for_shipping_real,
    SUM(CASE WHEN Days_for_shipment_scheduled IS NULL OR LTRIM(RTRIM(Days_for_shipment_scheduled)) = '' THEN 1 ELSE 0 END) AS Days_for_shipment_scheduled,
    SUM(CASE WHEN Benefit_per_order IS NULL OR LTRIM(RTRIM(Benefit_per_order)) = '' THEN 1 ELSE 0 END) AS Benefit_per_order,
    SUM(CASE WHEN Delivery_Status IS NULL OR LTRIM(RTRIM(Delivery_Status)) = '' THEN 1 ELSE 0 END) AS Delivery_Status,
    SUM(CASE WHEN Late_delivery_risk IS NULL OR LTRIM(RTRIM(Late_delivery_risk)) = '' THEN 1 ELSE 0 END) AS Late_delivery_risk,
    SUM(CASE WHEN Market IS NULL OR LTRIM(RTRIM(Market)) = '' THEN 1 ELSE 0 END) AS Market,
    SUM(CASE WHEN Order_Region IS NULL OR LTRIM(RTRIM(Order_Region)) = '' THEN 1 ELSE 0 END) AS Order_Region,
    SUM(CASE WHEN Order_State IS NULL OR LTRIM(RTRIM(Order_State)) = '' THEN 1 ELSE 0 END) AS Order_State,
    SUM(CASE WHEN Order_Status IS NULL OR LTRIM(RTRIM(Order_Status)) = '' THEN 1 ELSE 0 END) AS Order_Status,
    SUM(CASE WHEN Order_Zipcode IS NULL OR LTRIM(RTRIM(Order_Zipcode)) = '' THEN 1 ELSE 0 END) AS Order_Zipcode,
    SUM(CASE WHEN order_date_DateOrders IS NULL OR LTRIM(RTRIM(order_date_DateOrders)) = '' THEN 1 ELSE 0 END) AS order_date_DateOrders,
    SUM(CASE WHEN shipping_date_DateOrders IS NULL OR LTRIM(RTRIM(shipping_date_DateOrders)) = '' THEN 1 ELSE 0 END) AS shipping_date_DateOrders,
    SUM(CASE WHEN Shipping_Mode IS NULL OR LTRIM(RTRIM(Shipping_Mode)) = '' THEN 1 ELSE 0 END) AS Shipping_Mode,
    SUM(CASE WHEN Order_Item_Discount IS NULL OR LTRIM(RTRIM(Order_Item_Discount)) = '' THEN 1 ELSE 0 END) AS Order_Item_Discount,
    SUM(CASE WHEN Order_Item_Profit_Ratio IS NULL OR LTRIM(RTRIM(Order_Item_Profit_Ratio)) = '' THEN 1 ELSE 0 END) AS Order_Item_Profit_Ratio,
    SUM(CASE WHEN Order_Item_Quantity IS NULL OR LTRIM(RTRIM(Order_Item_Quantity)) = '' THEN 1 ELSE 0 END) AS Order_Item_Quantity,
    SUM(CASE WHEN Order_Item_Total IS NULL OR LTRIM(RTRIM(Order_Item_Total)) = '' THEN 1 ELSE 0 END) AS Order_Item_Total,
    SUM(CASE WHEN salesman_id IS NULL OR LTRIM(RTRIM(salesman_id)) = '' THEN 1 ELSE 0 END) AS salesman_id
FROM BRONZE.Orders;



SELECT
    SUM(CASE WHEN Salesman_Id IS NULL OR LTRIM(RTRIM(Salesman_Id)) = '' THEN 1 ELSE 0 END) AS Salesman_Id,
    SUM(CASE WHEN Salesman_Fname IS NULL OR LTRIM(RTRIM(Salesman_Fname)) = '' THEN 1 ELSE 0 END) AS Salesman_Fname,
    SUM(CASE WHEN Salesman_Lname IS NULL OR LTRIM(RTRIM(Salesman_Lname)) = '' THEN 1 ELSE 0 END) AS Salesman_Lname,
    SUM(CASE WHEN Salesman_Email IS NULL OR LTRIM(RTRIM(Salesman_Email)) = '' THEN 1 ELSE 0 END) AS Salesman_Email,
    SUM(CASE WHEN Market IS NULL OR LTRIM(RTRIM(Market)) = '' THEN 1 ELSE 0 END) AS Market,
    SUM(CASE WHEN Region IS NULL OR LTRIM(RTRIM(Region)) = '' THEN 1 ELSE 0 END) AS Region,
    SUM(CASE WHEN Hire_Date IS NULL OR LTRIM(RTRIM(Hire_Date)) = '' THEN 1 ELSE 0 END) AS Hire_Date,
    SUM(CASE WHEN Commission_Rate IS NULL OR LTRIM(RTRIM(Commission_Rate)) = '' THEN 1 ELSE 0 END) AS Commission_Rate
FROM BRONZE.Salesman;
---------------------------------------------------------------------------------------------
SELECT
    SUM(CASE 
        WHEN TRY_CAST(Customer_Id AS INT) IS NULL
             AND NULLIF(LTRIM(RTRIM(Customer_Id)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Customer_Id,

    SUM(CASE 
        WHEN TRY_CAST(Customer_Zipcode AS INT) IS NULL
             AND NULLIF(LTRIM(RTRIM(Customer_Zipcode)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Zipcode,

    SUM(CASE 
        WHEN TRY_CAST(Latitude AS DECIMAL(10,6)) IS NULL
             AND NULLIF(LTRIM(RTRIM(Latitude)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Latitude,

    SUM(CASE 
        WHEN TRY_CAST(Longitude AS DECIMAL(10,6)) IS NULL
             AND NULLIF(LTRIM(RTRIM(Longitude)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Longitude,

    SUM(CASE 
        WHEN TRY_CAST(Customer_Birth_Date AS DATE) IS NULL
             AND NULLIF(LTRIM(RTRIM(Customer_Birth_Date)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Birth_Date
FROM BRONZE.Customers;

SELECT TOP 20
    Customer_Zipcode
FROM BRONZE.Customers
WHERE NULLIF(LTRIM(RTRIM(Customer_Zipcode)), '') IS NOT NULL;


SELECT
    SUM(CASE 
        WHEN TRY_CAST(Order_Id AS INT) IS NULL
        AND NULLIF(LTRIM(RTRIM(Order_Id)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Order_Id,

    SUM(CASE 
        WHEN TRY_CAST(Order_Item_Id AS INT) IS NULL
        AND NULLIF(LTRIM(RTRIM(Order_Item_Id)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Order_Item_Id,

    SUM(CASE 
        WHEN TRY_CAST(Customer_Id AS INT) IS NULL
        AND NULLIF(LTRIM(RTRIM(Customer_Id)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Customer_Id,

    SUM(CASE 
        WHEN TRY_CAST(Product_Card_Id AS INT) IS NULL
        AND NULLIF(LTRIM(RTRIM(Product_Card_Id)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Product_Card_Id,

    SUM(CASE 
        WHEN TRY_CAST(Days_for_shipping_real AS DECIMAL(18,2)) IS NULL
        AND NULLIF(LTRIM(RTRIM(Days_for_shipping_real)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Shipping_Days,

    SUM(CASE 
        WHEN TRY_CAST(Days_for_shipment_scheduled AS DECIMAL(18,2)) IS NULL
        AND NULLIF(LTRIM(RTRIM(Days_for_shipment_scheduled)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Scheduled_Days,

    SUM(CASE 
        WHEN TRY_CAST(Benefit_per_order AS DECIMAL(18,4)) IS NULL
        AND NULLIF(LTRIM(RTRIM(Benefit_per_order)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Benefit,

    SUM(CASE 
        WHEN TRY_CAST(Late_delivery_risk AS INT) IS NULL
        AND NULLIF(LTRIM(RTRIM(Late_delivery_risk)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Late_Risk,

    SUM(CASE 
        WHEN TRY_CAST(Order_Item_Discount AS DECIMAL(18,4)) IS NULL
        AND NULLIF(LTRIM(RTRIM(Order_Item_Discount)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Discount,

    SUM(CASE 
        WHEN TRY_CAST(Order_Item_Profit_Ratio AS DECIMAL(18,4)) IS NULL
        AND NULLIF(LTRIM(RTRIM(Order_Item_Profit_Ratio)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Profit_Ratio,

    SUM(CASE 
        WHEN TRY_CAST(Order_Item_Quantity AS INT) IS NULL
        AND NULLIF(LTRIM(RTRIM(Order_Item_Quantity)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Quantity,

    SUM(CASE 
        WHEN TRY_CAST(Order_Item_Total AS DECIMAL(18,2)) IS NULL
        AND NULLIF(LTRIM(RTRIM(Order_Item_Total)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Total

FROM BRONZE.Orders;



SELECT
    SUM(CASE 
        WHEN TRY_CAST(Salesman_Id AS INT) IS NULL
        AND NULLIF(LTRIM(RTRIM(Salesman_Id)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Salesman_Id,

    SUM(CASE 
        WHEN TRY_CAST(Commission_Rate AS DECIMAL(10,4)) IS NULL
        AND NULLIF(LTRIM(RTRIM(Commission_Rate)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Commission_Rate
FROM BRONZE.Salesman;



SELECT
    SUM(CASE 
        WHEN TRY_CAST(Product_Card_Id AS INT) IS NULL
        AND NULLIF(LTRIM(RTRIM(Product_Card_Id)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Product_Card_Id,

    SUM(CASE 
        WHEN TRY_CAST(Product_Price AS DECIMAL(18,2)) IS NULL
        AND NULLIF(LTRIM(RTRIM(Product_Price)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Product_Price,

    SUM(CASE 
        WHEN TRY_CAST(Category_Id AS INT) IS NULL
        AND NULLIF(LTRIM(RTRIM(Category_Id)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Category_Id,

    SUM(CASE 
        WHEN TRY_CAST(Department_Id AS INT) IS NULL
        AND NULLIF(LTRIM(RTRIM(Department_Id)), '') IS NOT NULL
        THEN 1 ELSE 0 END) AS Invalid_Department_Id

FROM BRONZE.Products;
-------------------------------------------------------------
SELECT
    Customer_Id,
    COUNT(*) AS DuplicateCount
FROM BRONZE.Customers
WHERE NULLIF(LTRIM(RTRIM(Customer_Id)), '') IS NOT NULL
GROUP BY Customer_Id
HAVING COUNT(*) > 1
ORDER BY DuplicateCount DESC;

SELECT
    Customer_Fname,
    Customer_Lname,
    Customer_Email,
    Customer_City,
    Customer_State,
    Customer_Country,
    COUNT(*) AS DuplicateCount
FROM BRONZE.Customers
GROUP BY
    Customer_Fname,
    Customer_Lname,
    Customer_Email,
    Customer_City,
    Customer_State,
    Customer_Country
HAVING COUNT(*) > 1
ORDER BY DuplicateCount DESC;

SELECT
    Customer_Id,
    Customer_Fname,
    Customer_Lname,
    Customer_Email,
    Customer_City,
    Customer_State,
    Customer_Country,
    Customer_Street,
    Customer_Zipcode,
    Latitude,
    Longitude,
    Customer_Birth_Date
FROM BRONZE.Customers
WHERE Customer_Fname = 'Mary'
  AND Customer_Lname = 'Smith'
  AND Customer_City = 'Caguas'
  AND Customer_State = 'PR'
  AND Customer_Country = 'Puerto Rico'
ORDER BY Customer_Id;

USE SupplyChainDWH;
GO

SELECT
    Customer_Email,
    COUNT(DISTINCT Customer_Id) AS CustomerCount
FROM BRONZE.Customers
WHERE NULLIF(LTRIM(RTRIM(Customer_Email)), '') IS NOT NULL
GROUP BY Customer_Email
HAVING COUNT(DISTINCT Customer_Id) > 1
ORDER BY CustomerCount DESC;

SELECT
    Customer_Fname,
    Customer_Lname,
    Customer_City,
    Customer_State,
    Customer_Street,
    Customer_Zipcode,
    Customer_Country,
    Latitude,
    Longitude,
    Customer_Birth_Date,
    COUNT(*) AS DuplicateCount
FROM BRONZE.Customers
GROUP BY
    Customer_Fname,
    Customer_Lname,
    Customer_City,
    Customer_State,
    Customer_Street,
    Customer_Zipcode,
    Customer_Country,
    Latitude,
    Longitude,
    Customer_Birth_Date
HAVING COUNT(*) > 1
ORDER BY DuplicateCount DESC;

SELECT
    Product_Card_Id,
    COUNT(*) AS DuplicateCount
FROM BRONZE.Products
WHERE NULLIF(LTRIM(RTRIM(Product_Card_Id)), '') IS NOT NULL
GROUP BY Product_Card_Id
HAVING COUNT(*) > 1
ORDER BY DuplicateCount DESC;

SELECT
    Product_Name,
    Product_Price,
    Category_Id,
    Category_Name,
    Department_Id,
    Department_Name,
    COUNT(*) AS DuplicateCount
FROM BRONZE.Products
GROUP BY
    Product_Name,
    Product_Price,
    Category_Id,
    Category_Name,
    Department_Id,
    Department_Name
HAVING COUNT(*) > 1
ORDER BY DuplicateCount DESC;

SELECT
    Salesman_Id,
    COUNT(*) AS DuplicateCount
FROM BRONZE.Salesman
WHERE NULLIF(LTRIM(RTRIM(Salesman_Id)), '') IS NOT NULL
GROUP BY Salesman_Id
HAVING COUNT(*) > 1
ORDER BY DuplicateCount DESC;

SELECT
    Salesman_Fname,
    Salesman_Lname,
    Salesman_Email,
    Market,
    Region,
    Hire_Date,
    Commission_Rate,
    COUNT(*) AS DuplicateCount
FROM BRONZE.Salesman
GROUP BY
    Salesman_Fname,
    Salesman_Lname,
    Salesman_Email,
    Market,
    Region,
    Hire_Date,
    Commission_Rate
HAVING COUNT(*) > 1
ORDER BY DuplicateCount DESC;



SELECT
    Order_Item_Id,
    COUNT(*) AS DuplicateCount
FROM BRONZE.Orders
WHERE NULLIF(LTRIM(RTRIM(Order_Item_Id)), '') IS NOT NULL
GROUP BY Order_Item_Id
HAVING COUNT(*) > 1
ORDER BY DuplicateCount DESC;

SELECT
    Order_Id,
    Customer_Id,
    Product_Card_Id,
    Type,
    order_date_DateOrders,
    shipping_date_DateOrders,
    Order_Item_Quantity,
    Order_Item_Total,
    salesman_id,
    COUNT(*) AS DuplicateCount
FROM BRONZE.Orders
GROUP BY
    Order_Id,
    Customer_Id,
    Product_Card_Id,
    Type,
    order_date_DateOrders,
    shipping_date_DateOrders,
    Order_Item_Quantity,
    Order_Item_Total,
    salesman_id
HAVING COUNT(*) > 1
ORDER BY DuplicateCount DESC;
--------------------------------------------------------
SELECT COUNT(*) AS Orphan_Customers
FROM BRONZE.Orders o
LEFT JOIN BRONZE.Customers c
    ON o.Customer_Id = c.Customer_Id
WHERE c.Customer_Id IS NULL;

SELECT COUNT(*) AS Orphan_Products
FROM BRONZE.Orders o
LEFT JOIN BRONZE.Products p
    ON o.Product_Card_Id = p.Product_Card_Id
WHERE p.Product_Card_Id IS NULL;

SELECT COUNT(*) AS Orphan_Salesman
FROM BRONZE.Orders o
LEFT JOIN BRONZE.Salesman s
    ON o.salesman_id = s.Salesman_Id
WHERE s.Salesman_Id IS NULL;


SELECT DISTINCT Market
FROM BRONZE.Orders
ORDER BY Market;

SELECT DISTINCT Shipping_Mode
FROM BRONZE.Orders
ORDER BY Shipping_Mode;

SELECT DISTINCT Delivery_Status
FROM BRONZE.Orders
ORDER BY Delivery_Status;

SELECT DISTINCT Order_Status
FROM BRONZE.Orders
ORDER BY Order_Status;

SELECT DISTINCT Type
FROM BRONZE.Orders
ORDER BY Type;

SELECT
    'Market' AS ColumnName,
    Market AS RawValue,
    COUNT(*) AS ValueCount
FROM BRONZE.Orders
GROUP BY Market

UNION ALL

SELECT
    'Shipping_Mode' AS ColumnName,
    Shipping_Mode AS RawValue,
    COUNT(*) AS ValueCount
FROM BRONZE.Orders
GROUP BY Shipping_Mode

UNION ALL

SELECT
    'Delivery_Status' AS ColumnName,
    Delivery_Status AS RawValue,
    COUNT(*) AS ValueCount
FROM BRONZE.Orders
GROUP BY Delivery_Status

UNION ALL

SELECT
    'Type' AS ColumnName,
    Type AS RawValue,
    COUNT(*) AS ValueCount
FROM BRONZE.Orders
GROUP BY Type

UNION ALL

SELECT
    'Order_Status' AS ColumnName,
    Order_Status AS RawValue,
    COUNT(*) AS ValueCount
FROM BRONZE.Orders
GROUP BY Order_Status

ORDER BY ColumnName, RawValue;

USE SupplyChainDWH;
GO

SELECT 'Market' AS Category, COUNT(DISTINCT Market) AS DistinctValues
FROM BRONZE.Orders

UNION ALL

SELECT 'Shipping Mode', COUNT(DISTINCT Shipping_Mode)
FROM BRONZE.Orders

UNION ALL

SELECT 'Delivery Status', COUNT(DISTINCT Delivery_Status)
FROM BRONZE.Orders

UNION ALL

SELECT 'Type', COUNT(DISTINCT Type)
FROM BRONZE.Orders

UNION ALL

SELECT 'Order Status', COUNT(DISTINCT Order_Status)
FROM BRONZE.Orders;

SELECT
    Customer_Segment,
    COUNT(*) AS ValueCount
FROM BRONZE.Customers
GROUP BY Customer_Segment
ORDER BY Customer_Segment;

SELECT
    SUM(CASE
        WHEN TRY_CAST(Order_Item_Quantity AS DECIMAL(18,2)) <= 0
        THEN 1 ELSE 0
    END) AS Invalid_Quantity,

    SUM(CASE
        WHEN TRY_CAST(Order_Item_Total AS DECIMAL(18,2)) < 0
        THEN 1 ELSE 0
    END) AS Negative_Order_Total,

    SUM(CASE
        WHEN TRY_CAST(Order_Item_Discount AS DECIMAL(18,2)) < 0
        THEN 1 ELSE 0
    END) AS Negative_Discount,

    SUM(CASE
        WHEN TRY_CAST(Days_for_shipping_real AS DECIMAL(18,2)) < 0
        THEN 1 ELSE 0
    END) AS Negative_Shipping_Days,

    SUM(CASE
        WHEN TRY_CAST(Days_for_shipment_scheduled AS DECIMAL(18,2)) < 0
        THEN 1 ELSE 0
    END) AS Negative_Scheduled_Days,

    SUM(CASE
        WHEN TRY_CAST(Order_Item_Profit_Ratio AS DECIMAL(18,4)) < -1
          OR TRY_CAST(Order_Item_Profit_Ratio AS DECIMAL(18,4)) > 1
        THEN 1 ELSE 0
    END) AS Profit_Ratio_Out_Of_Range
FROM BRONZE.Orders;

SELECT
    MIN(TRY_CAST(Order_Item_Profit_Ratio AS DECIMAL(18,4))) AS Min_Profit_Ratio,
    MAX(TRY_CAST(Order_Item_Profit_Ratio AS DECIMAL(18,4))) AS Max_Profit_Ratio,
    AVG(TRY_CAST(Order_Item_Profit_Ratio AS DECIMAL(18,4))) AS Avg_Profit_Ratio
FROM BRONZE.Orders;



SELECT TOP 20
    Order_Item_Profit_Ratio,
    Benefit_per_order,
    Order_Item_Total,
    Order_Item_Profit_Ratio
FROM BRONZE.Orders
ORDER BY
    ABS(TRY_CAST(Order_Item_Profit_Ratio AS DECIMAL(18,4))) DESC;

SELECT
    COUNT(*) AS Total_Rows,

    SUM(
        CASE
            WHEN ABS(
                TRY_CAST(Order_Item_Profit_Ratio AS DECIMAL(18,6))
                -
                (
                    TRY_CAST(Benefit_per_order AS DECIMAL(18,6))
                    /
                    NULLIF(TRY_CAST(Order_Item_Total AS DECIMAL(18,6)), 0)
                )
            ) > 0.01
            THEN 1
            ELSE 0
        END
    ) AS Inconsistent_Profit_Ratio

FROM BRONZE.Orders
WHERE TRY_CAST(Order_Item_Total AS DECIMAL(18,6)) <> 0;

SELECT
    COUNT(*) AS Total_Rows,
    SUM(
        CASE
            WHEN TRY_CAST(shipping_date_DateOrders AS DATETIME) 
               < TRY_CAST(order_date_DateOrders AS DATETIME)
            THEN 1
            ELSE 0
        END
    ) AS Invalid_Shipping_Date
FROM BRONZE.Orders
WHERE TRY_CAST(order_date_DateOrders AS DATETIME) IS NOT NULL
  AND TRY_CAST(shipping_date_DateOrders AS DATETIME) IS NOT NULL;

SELECT
    COUNT(*) AS Invalid_Birth_Date
FROM BRONZE.Customers
WHERE TRY_CAST(Customer_Birth_Date AS DATE) > CAST(GETDATE() AS DATE);


-----------------------------------------------------------
IF NOT EXISTS (
    SELECT 1
    FROM sys.schemas
    WHERE name = 'SILVER'
)
BEGIN
    EXEC('CREATE SCHEMA SILVER');
END;
GO

IF OBJECT_ID('SILVER.Customers', 'U') IS NOT NULL
    DROP TABLE SILVER.Customers;
GO

CREATE TABLE SILVER.Customers
(
    Customer_Id          INT            NOT NULL,
    Customer_Fname       VARCHAR(100)   NULL,
    Customer_Lname       VARCHAR(100)   NULL,
    Customer_Email       VARCHAR(255)   NULL,
    Customer_Segment     VARCHAR(50)    NULL,
    Customer_City        VARCHAR(100)   NULL,
    Customer_State       VARCHAR(100)   NULL,
    Customer_Street      VARCHAR(255)   NULL,
    Customer_Zipcode     VARCHAR(20)    NULL,
    Customer_Country     VARCHAR(100)   NULL,
    Latitude             DECIMAL(10,7)  NULL,
    Longitude            DECIMAL(10,7)  NULL,
    Customer_Birth_Date  DATE           NULL,

    CONSTRAINT PK_SILVER_Customers
        PRIMARY KEY (Customer_Id)
);
GO

INSERT INTO SILVER.Customers
(
    Customer_Id,
    Customer_Fname,
    Customer_Lname,
    Customer_Email,
    Customer_Segment,
    Customer_City,
    Customer_State,
    Customer_Street,
    Customer_Zipcode,
    Customer_Country,
    Latitude,
    Longitude,
    Customer_Birth_Date
)
SELECT
    TRY_CAST(NULLIF(LTRIM(RTRIM(Customer_Id)), '') AS INT),

    NULLIF(LTRIM(RTRIM(Customer_Fname)), ''),

    NULLIF(LTRIM(RTRIM(Customer_Lname)), ''),

    CASE
        WHEN UPPER(LTRIM(RTRIM(Customer_Email))) IN
             ('XXXXXXXX', 'XXXXXXXXX', '')
        THEN NULL
        ELSE NULLIF(LTRIM(RTRIM(Customer_Email)), '')
    END,

    CASE
        WHEN UPPER(LTRIM(RTRIM(Customer_Segment))) = 'CONSUMER'
            THEN 'Consumer'

        WHEN UPPER(LTRIM(RTRIM(Customer_Segment))) = 'CORPORATE'
            THEN 'Corporate'

        WHEN UPPER(LTRIM(RTRIM(Customer_Segment))) = 'HOME OFFICE'
            THEN 'Home Office'

        ELSE NULLIF(LTRIM(RTRIM(Customer_Segment)), '')
    END,

    NULLIF(LTRIM(RTRIM(Customer_City)), ''),

    NULLIF(LTRIM(RTRIM(Customer_State)), ''),

    NULLIF(LTRIM(RTRIM(Customer_Street)), ''),

    CASE
        WHEN NULLIF(LTRIM(RTRIM(Customer_Zipcode)), '') IS NULL
            THEN NULL

        ELSE CONVERT(
            VARCHAR(20),
            TRY_CONVERT(
                INT,
                TRY_CONVERT(
                    DECIMAL(18,2),
                    LTRIM(RTRIM(Customer_Zipcode))
                )
            )
        )
    END,

    NULLIF(LTRIM(RTRIM(Customer_Country)), ''),

    TRY_CAST(NULLIF(LTRIM(RTRIM(Latitude)), '') AS DECIMAL(10,7)),

    TRY_CAST(NULLIF(LTRIM(RTRIM(Longitude)), '') AS DECIMAL(10,7)),

    TRY_CAST(NULLIF(LTRIM(RTRIM(Customer_Birth_Date)), '') AS DATE)

FROM BRONZE.Customers;
GO
SELECT COUNT(*) AS Silver_Customers
FROM SILVER.Customers;

SELECT
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT Customer_Id) AS DistinctCustomerIds,
    SUM(CASE WHEN Customer_Id IS NULL THEN 1 ELSE 0 END) AS NullCustomerIds
FROM SILVER.Customers;

SELECT TOP 20 *
FROM SILVER.Customers
ORDER BY Customer_Id;
-------------------------------------
IF OBJECT_ID('SILVER.Products', 'U') IS NOT NULL
    DROP TABLE SILVER.Products;
GO

CREATE TABLE SILVER.Products
(
    Product_Card_Id     INT           NOT NULL,
    Product_Name        VARCHAR(255)  NULL,
    Product_Price       DECIMAL(18,2) NULL,
    Product_Status      INT           NULL,
    Category_Id         INT           NULL,
    Category_Name       VARCHAR(100)  NULL,
    Department_Id       INT           NULL,
    Department_Name     VARCHAR(100)  NULL,

    CONSTRAINT PK_SILVER_Products
        PRIMARY KEY (Product_Card_Id)
);
GO
INSERT INTO SILVER.Products
(
    Product_Card_Id,
    Product_Name,
    Product_Price,
    Product_Status,
    Category_Id,
    Category_Name,
    Department_Id,
    Department_Name
)
SELECT
    TRY_CAST(NULLIF(LTRIM(RTRIM(Product_Card_Id)), '') AS INT),

    NULLIF(LTRIM(RTRIM(Product_Name)), ''),

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(Product_Price)), '')
        AS DECIMAL(18,2)
    ),

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(Product_Status)), '')
        AS INT
    ),

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(Category_Id)), '')
        AS INT
    ),

    NULLIF(LTRIM(RTRIM(Category_Name)), ''),

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(Department_Id)), '')
        AS INT
    ),

    NULLIF(LTRIM(RTRIM(Department_Name)), '')

FROM BRONZE.Products;
GO
SELECT COUNT(*) AS Silver_Products
FROM SILVER.Products;
SELECT
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT Product_Card_Id) AS DistinctProductIds,
    SUM(CASE WHEN Product_Card_Id IS NULL THEN 1 ELSE 0 END) AS NullProductIds
FROM SILVER.Products;

SELECT TOP 20 *
FROM SILVER.Products
ORDER BY Product_Card_Id;
----------------------------------
IF OBJECT_ID('SILVER.Salesman', 'U') IS NOT NULL
    DROP TABLE SILVER.Salesman;
GO

CREATE TABLE SILVER.Salesman
(
    Salesman_Id        INT           NOT NULL,
    Salesman_Fname     VARCHAR(100)  NULL,
    Salesman_Lname     VARCHAR(100)  NULL,
    Salesman_Email     VARCHAR(255)  NULL,
    Market             VARCHAR(50)   NULL,
    Region             VARCHAR(100)  NULL,
    Hire_Date          DATE          NULL,
    Commission_Rate    DECIMAL(10,4) NULL,

    CONSTRAINT PK_SILVER_Salesman
        PRIMARY KEY (Salesman_Id)
);
GO
INSERT INTO SILVER.Salesman
(
    Salesman_Id,
    Salesman_Fname,
    Salesman_Lname,
    Salesman_Email,
    Market,
    Region,
    Hire_Date,
    Commission_Rate
)
SELECT
    TRY_CAST(NULLIF(LTRIM(RTRIM(Salesman_Id)), '') AS INT),

    NULLIF(LTRIM(RTRIM(Salesman_Fname)), ''),

    NULLIF(LTRIM(RTRIM(Salesman_Lname)), ''),

    NULLIF(LTRIM(RTRIM(Salesman_Email)), ''),

    CASE
        WHEN UPPER(LTRIM(RTRIM(Market))) = 'AFR'
            THEN 'Africa'
        WHEN UPPER(LTRIM(RTRIM(Market))) = 'EU'
            THEN 'Europe'
        WHEN UPPER(LTRIM(RTRIM(Market))) = 'LATAM'
            THEN 'Latin America'
        WHEN UPPER(LTRIM(RTRIM(Market))) = 'ASIA-PACIFIC'
            THEN 'APAC'
        ELSE NULLIF(LTRIM(RTRIM(Market)), '')
    END,

    NULLIF(LTRIM(RTRIM(Region)), ''),

    TRY_CAST(NULLIF(LTRIM(RTRIM(Hire_Date)), '') AS DATE),

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(Commission_Rate)), '')
        AS DECIMAL(10,4)
    )

FROM BRONZE.Salesman;
GO
SELECT COUNT(*) AS Silver_Salesman
FROM SILVER.Salesman;
SELECT
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT Salesman_Id) AS DistinctSalesmanIds,
    SUM(CASE WHEN Salesman_Id IS NULL THEN 1 ELSE 0 END) AS NullSalesmanIds
FROM SILVER.Salesman;
SELECT TOP 20 *
FROM SILVER.Salesman
ORDER BY Salesman_Id;
---------------------------
IF OBJECT_ID('SILVER.Orders', 'U') IS NOT NULL
    DROP TABLE SILVER.Orders;
GO

CREATE TABLE SILVER.Orders
(
    Order_Id                       INT            NULL,
    Order_Item_Id                  INT            NOT NULL,
    Customer_Id                    INT            NULL,
    Product_Card_Id                INT            NULL,

    Type                           VARCHAR(30)    NULL,

    Days_for_shipping_real         INT            NULL,
    Days_for_shipment_scheduled    INT            NULL,

    Benefit_per_order              DECIMAL(18,2)  NULL,

    Delivery_Status                VARCHAR(50)    NULL,
    Late_delivery_risk             BIT            NULL,

    Market                         VARCHAR(50)    NULL,
    Order_Region                   VARCHAR(100)   NULL,
    Order_State                    VARCHAR(100)   NULL,
    Order_Status                   VARCHAR(50)    NULL,
    Order_Zipcode                  VARCHAR(20)    NULL,

    Order_Date                     DATETIME       NULL,
    Shipping_Date                   DATETIME       NULL,

    Shipping_Mode                  VARCHAR(50)    NULL,

    Order_Item_Discount            DECIMAL(18,2)  NULL,
    Order_Item_Profit_Ratio        DECIMAL(18,6)  NULL,
    Order_Item_Quantity             INT            NULL,
    Order_Item_Total                DECIMAL(18,2)  NULL,

    Salesman_Id                    INT            NULL,

    CONSTRAINT PK_SILVER_Orders
        PRIMARY KEY (Order_Item_Id)
);
GO
INSERT INTO SILVER.Orders
(
    Order_Id,
    Order_Item_Id,
    Customer_Id,
    Product_Card_Id,
    Type,
    Days_for_shipping_real,
    Days_for_shipment_scheduled,
    Benefit_per_order,
    Delivery_Status,
    Late_delivery_risk,
    Market,
    Order_Region,
    Order_State,
    Order_Status,
    Order_Zipcode,
    Order_Date,
    Shipping_Date,
    Shipping_Mode,
    Order_Item_Discount,
    Order_Item_Profit_Ratio,
    Order_Item_Quantity,
    Order_Item_Total,
    Salesman_Id
)
SELECT
    TRY_CAST(NULLIF(LTRIM(RTRIM(Order_Id)), '') AS INT),

    TRY_CAST(NULLIF(LTRIM(RTRIM(Order_Item_Id)), '') AS INT),

    TRY_CAST(NULLIF(LTRIM(RTRIM(Customer_Id)), '') AS INT),

    TRY_CAST(NULLIF(LTRIM(RTRIM(Product_Card_Id)), '') AS INT),

    CASE
        WHEN UPPER(LTRIM(RTRIM(Type))) = 'CASH'
            THEN 'CASH'
        WHEN UPPER(LTRIM(RTRIM(Type))) = 'DEBIT'
            THEN 'DEBIT'
        WHEN UPPER(LTRIM(RTRIM(Type))) = 'PAYMENT'
            THEN 'PAYMENT'
        WHEN UPPER(LTRIM(RTRIM(Type))) = 'TRANSFER'
            THEN 'TRANSFER'
        ELSE NULLIF(LTRIM(RTRIM(Type)), '')
    END,

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(Days_for_shipping_real)), '')
        AS INT
    ),

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(Days_for_shipment_scheduled)), '')
        AS INT
    ),

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(Benefit_per_order)), '')
        AS DECIMAL(18,2)
    ),

    CASE
        WHEN LOWER(LTRIM(RTRIM(Delivery_Status))) = 'advance shipping'
            THEN 'Advance Shipping'

        WHEN LOWER(LTRIM(RTRIM(Delivery_Status))) = 'late delivery'
            THEN 'Late Delivery'

        WHEN LOWER(LTRIM(RTRIM(Delivery_Status))) = 'shipping canceled'
            THEN 'Shipping Canceled'

        WHEN LOWER(LTRIM(RTRIM(Delivery_Status))) = 'shipping on time'
            THEN 'Shipping On Time'

        ELSE NULLIF(LTRIM(RTRIM(Delivery_Status)), '')
    END,

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(Late_delivery_risk)), '')
        AS BIT
    ),

    CASE
        WHEN UPPER(LTRIM(RTRIM(Market))) = 'AFR'
            THEN 'Africa'

        WHEN UPPER(LTRIM(RTRIM(Market))) = 'AFRICA'
            THEN 'Africa'

        WHEN UPPER(LTRIM(RTRIM(Market))) = 'APAC'
            THEN 'APAC'

        WHEN UPPER(LTRIM(RTRIM(Market))) = 'ASIA-PACIFIC'
            THEN 'APAC'

        WHEN UPPER(LTRIM(RTRIM(Market))) = 'EU'
            THEN 'Europe'

        WHEN UPPER(LTRIM(RTRIM(Market))) = 'EUROPE'
            THEN 'Europe'

        WHEN UPPER(LTRIM(RTRIM(Market))) = 'LATAM'
            THEN 'Latin America'

        WHEN UPPER(LTRIM(RTRIM(Market))) = 'LATIN AMERICA'
            THEN 'Latin America'

        ELSE NULLIF(LTRIM(RTRIM(Market)), '')
    END,

    NULLIF(LTRIM(RTRIM(Order_Region)), ''),

    NULLIF(LTRIM(RTRIM(Order_State)), ''),

    CASE
        WHEN UPPER(LTRIM(RTRIM(Order_Status))) = 'CLOSED'
            THEN 'Closed'

        WHEN UPPER(LTRIM(RTRIM(Order_Status))) = 'COMPLETE'
            THEN 'Complete'

        WHEN UPPER(LTRIM(RTRIM(Order_Status))) = 'ON_HOLD'
            THEN 'On Hold'

        WHEN UPPER(LTRIM(RTRIM(Order_Status))) = 'PAYMENT_REVIEW'
            THEN 'Payment Review'

        WHEN UPPER(LTRIM(RTRIM(Order_Status))) = 'PENDING'
            THEN 'Pending'

        WHEN UPPER(LTRIM(RTRIM(Order_Status))) = 'PENDING_PAYMENT'
            THEN 'Pending Payment'

        WHEN UPPER(LTRIM(RTRIM(Order_Status))) = 'PROCESSING'
            THEN 'Processing'

        WHEN UPPER(LTRIM(RTRIM(Order_Status))) = 'SUSPECTED_FRAUD'
            THEN 'Suspected Fraud'

        ELSE NULLIF(LTRIM(RTRIM(Order_Status)), '')
    END,

    CASE
        WHEN NULLIF(LTRIM(RTRIM(Order_Zipcode)), '') IS NULL
            THEN NULL

        ELSE CONVERT(
            VARCHAR(20),
            TRY_CONVERT(
                INT,
                TRY_CONVERT(
                    DECIMAL(18,2),
                    LTRIM(RTRIM(Order_Zipcode))
                )
            )
        )
    END,

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(order_date_DateOrders)), '')
        AS DATETIME
    ),

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(shipping_date_DateOrders)), '')
        AS DATETIME
    ),

    CASE
        WHEN UPPER(LTRIM(RTRIM(Shipping_Mode))) IN
             ('1ST CLASS', 'FIRST CLASS')
            THEN 'First Class'

        WHEN UPPER(LTRIM(RTRIM(Shipping_Mode))) IN
             ('2ND CLASS', 'SECOND CLASS')
            THEN 'Second Class'

        WHEN UPPER(LTRIM(RTRIM(Shipping_Mode))) = 'SAME DAY'
            THEN 'Same Day'

        WHEN UPPER(LTRIM(RTRIM(Shipping_Mode))) IN
             ('STANDARD', 'STANDARD CLASS', 'STD CLASS')
            THEN 'Standard Class'

        ELSE NULLIF(LTRIM(RTRIM(Shipping_Mode)), '')
    END,

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(Order_Item_Discount)), '')
        AS DECIMAL(18,2)
    ),

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(Order_Item_Profit_Ratio)), '')
        AS DECIMAL(18,6)
    ),

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(Order_Item_Quantity)), '')
        AS INT
    ),

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(Order_Item_Total)), '')
        AS DECIMAL(18,2)
    ),

    TRY_CAST(
        NULLIF(LTRIM(RTRIM(salesman_id)), '')
        AS INT
    )

FROM BRONZE.Orders;
GO
SELECT COUNT(*) AS Silver_Orders
FROM SILVER.Orders;
SELECT
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT Order_Item_Id) AS DistinctOrderItemIds,
    SUM(
        CASE
            WHEN Order_Item_Id IS NULL
            THEN 1
            ELSE 0
        END
    ) AS NullOrderItemIds
FROM SILVER.Orders;
SELECT
    SUM(CASE WHEN Customer_Id IS NULL THEN 1 ELSE 0 END) AS NullCustomerIds,
    SUM(CASE WHEN Product_Card_Id IS NULL THEN 1 ELSE 0 END) AS NullProductIds,
    SUM(CASE WHEN Salesman_Id IS NULL THEN 1 ELSE 0 END) AS NullSalesmanIds,
    SUM(CASE WHEN Order_Date IS NULL THEN 1 ELSE 0 END) AS NullOrderDates,
    SUM(CASE WHEN Shipping_Date IS NULL THEN 1 ELSE 0 END) AS NullShippingDates
FROM SILVER.Orders;
----------------------------------------------
SELECT
    'Orders → Customers' AS Relationship,
    COUNT(*) AS OrphanRows
FROM SILVER.Orders o
LEFT JOIN SILVER.Customers c
    ON o.Customer_Id = c.Customer_Id
WHERE c.Customer_Id IS NULL

UNION ALL

SELECT
    'Orders → Products',
    COUNT(*)
FROM SILVER.Orders o
LEFT JOIN SILVER.Products p
    ON o.Product_Card_Id = p.Product_Card_Id
WHERE p.Product_Card_Id IS NULL

UNION ALL

SELECT
    'Orders → Salesman',
    COUNT(*)
FROM SILVER.Orders o
LEFT JOIN SILVER.Salesman s
    ON o.Salesman_Id = s.Salesman_Id
WHERE s.Salesman_Id IS NULL

---------------------------------------
USE SupplyChainDWH;
GO

IF NOT EXISTS
(
    SELECT 1
    FROM sys.schemas
    WHERE name = 'GOLD'
)
BEGIN
    EXEC('CREATE SCHEMA GOLD');
END;
GO

SELECT name
FROM sys.schemas
WHERE name IN ('BRONZE', 'SILVER', 'GOLD');

IF OBJECT_ID('GOLD.DimDate', 'U') IS NOT NULL
    DROP TABLE GOLD.DimDate;
GO

CREATE TABLE GOLD.DimDate
(
    Date_Key       INT          NOT NULL,
    Full_Date      DATE         NOT NULL,
    Day_Number     INT          NOT NULL,
    Day_Name       VARCHAR(20)  NOT NULL,
    Week_Number    INT          NOT NULL,
    Month_Number   INT          NOT NULL,
    Month_Name     VARCHAR(20)  NOT NULL,
    Quarter_Number INT          NOT NULL,
    Quarter_Name   VARCHAR(10)  NOT NULL,
    Year_Number    INT          NOT NULL,
    Year_Month     VARCHAR(7)   NOT NULL,

    CONSTRAINT PK_GOLD_DimDate
        PRIMARY KEY (Date_Key),

    CONSTRAINT UQ_GOLD_DimDate_FullDate
        UNIQUE (Full_Date)
);
GO

SELECT
    MIN(Order_Date) AS Min_Order_Date,
    MAX(Order_Date) AS Max_Order_Date,
    MIN(Shipping_Date) AS Min_Shipping_Date,
    MAX(Shipping_Date) AS Max_Shipping_Date
FROM SILVER.Orders;

-------------------------------------
DECLARE @StartDate DATE;
DECLARE @EndDate DATE;

SELECT
    @StartDate =
        CASE
            WHEN MIN(CAST(Order_Date AS DATE)) < MIN(CAST(Shipping_Date AS DATE))
                THEN MIN(CAST(Order_Date AS DATE))
            ELSE MIN(CAST(Shipping_Date AS DATE))
        END,

    @EndDate =
        CASE
            WHEN MAX(CAST(Order_Date AS DATE)) > MAX(CAST(Shipping_Date AS DATE))
                THEN MAX(CAST(Order_Date AS DATE))
            ELSE MAX(CAST(Shipping_Date AS DATE))
        END
FROM SILVER.Orders;

;WITH DateSeries AS
(
    SELECT @StartDate AS Full_Date

    UNION ALL

    SELECT DATEADD(DAY, 1, Full_Date)
    FROM DateSeries
    WHERE Full_Date < @EndDate
)
INSERT INTO GOLD.DimDate
(
    Date_Key,
    Full_Date,
    Day_Number,
    Day_Name,
    Week_Number,
    Month_Number,
    Month_Name,
    Quarter_Number,
    Quarter_Name,
    Year_Number,
    Year_Month
)
SELECT
    CONVERT(INT, CONVERT(VARCHAR(8), Full_Date, 112)),

    Full_Date,

    DAY(Full_Date),

    DATENAME(WEEKDAY, Full_Date),

    DATEPART(ISO_WEEK, Full_Date),

    MONTH(Full_Date),

    DATENAME(MONTH, Full_Date),

    DATEPART(QUARTER, Full_Date),

    'Q' + CAST(DATEPART(QUARTER, Full_Date) AS VARCHAR(1)),

    YEAR(Full_Date),

    CONVERT(VARCHAR(7), Full_Date, 120)

FROM DateSeries
OPTION (MAXRECURSION 0);
GO

SELECT COUNT(*) AS DateRows
FROM GOLD.DimDate;

SELECT TOP 5 *
FROM GOLD.DimDate
ORDER BY Full_Date;

SELECT TOP 5 *
FROM GOLD.DimDate
ORDER BY Full_Date DESC;

SELECT
    MIN(Full_Date) AS Min_Date,
    MAX(Full_Date) AS Max_Date,
    COUNT(*) AS DateRows
FROM GOLD.DimDate;

DECLARE @StartDate DATE = '2015-01-01';
DECLARE @EndDate DATE = '2018-02-22';

;WITH DateSeries AS
(
    SELECT @StartDate AS Full_Date

    UNION ALL

    SELECT DATEADD(DAY, 1, ds.Full_Date)
    FROM DateSeries ds
    WHERE ds.Full_Date < @EndDate
)
SELECT
    ds.Full_Date AS Missing_Date
FROM DateSeries ds
LEFT JOIN GOLD.DimDate d
    ON ds.Full_Date = d.Full_Date
WHERE d.Full_Date IS NULL
ORDER BY ds.Full_Date
OPTION (MAXRECURSION 0);
---------------------------------
DROP TABLE IF EXISTS GOLD.DimDate;
GO

CREATE TABLE GOLD.DimDate
(
    Date_Key       INT          NOT NULL,
    Full_Date      DATE         NOT NULL,
    Day_Number     INT          NOT NULL,
    Day_Name       VARCHAR(20)  NOT NULL,
    Week_Number    INT          NOT NULL,
    Month_Number   INT          NOT NULL,
    Month_Name     VARCHAR(20)  NOT NULL,
    Quarter_Number INT          NOT NULL,
    Quarter_Name   VARCHAR(10)  NOT NULL,
    Year_Number    INT          NOT NULL,
    Year_Month     VARCHAR(7)   NOT NULL,

    CONSTRAINT PK_GOLD_DimDate
        PRIMARY KEY (Date_Key),

    CONSTRAINT UQ_GOLD_DimDate_FullDate
        UNIQUE (Full_Date)
);
GO

DECLARE @StartDate DATE;
DECLARE @EndDate DATE;

SELECT
    @StartDate = MIN(Order_Date),
    @EndDate = MAX(Shipping_Date)
FROM SILVER.Orders;

;WITH DateSeries AS
(
    SELECT @StartDate AS Full_Date

    UNION ALL

    SELECT DATEADD(DAY, 1, Full_Date)
    FROM DateSeries
    WHERE Full_Date < @EndDate
)
INSERT INTO GOLD.DimDate
(
    Date_Key,
    Full_Date,
    Day_Number,
    Day_Name,
    Week_Number,
    Month_Number,
    Month_Name,
    Quarter_Number,
    Quarter_Name,
    Year_Number,
    Year_Month
)
SELECT
    CONVERT(INT, CONVERT(VARCHAR(8), Full_Date, 112)),
    Full_Date,
    DAY(Full_Date),
    DATENAME(WEEKDAY, Full_Date),
    DATEPART(ISO_WEEK, Full_Date),
    MONTH(Full_Date),
    DATENAME(MONTH, Full_Date),
    DATEPART(QUARTER, Full_Date),
    'Q' + CAST(DATEPART(QUARTER, Full_Date) AS VARCHAR(1)),
    YEAR(Full_Date),
    CONVERT(VARCHAR(7), Full_Date, 120)
FROM DateSeries
OPTION (MAXRECURSION 0);
GO

SELECT
    COUNT(*) AS DateRows,
    MIN(Full_Date) AS MinDate,
    MAX(Full_Date) AS MaxDate
FROM GOLD.DimDate;

SELECT
    COUNT(*) AS TotalRows,
    SUM(
        CASE
            WHEN Shipping_Date >= '2018-02-07'
            THEN 1
            ELSE 0
        END
    ) AS Shipping_After_Feb06
FROM SILVER.Orders;

SELECT
    MIN(Order_Date) AS Min_Order_Date,
    MAX(Order_Date) AS Max_Order_Date,
    MIN(Shipping_Date) AS Min_Shipping_Date,
    MAX(Shipping_Date) AS Max_Shipping_Date
FROM SILVER.Orders;
------------------------------------------------------
DROP TABLE IF EXISTS GOLD.DimCustomers;
GO

CREATE TABLE GOLD.DimCustomers
(
    Customer_Id          INT           NOT NULL,
    Customer_Fname       VARCHAR(100)  NULL,
    Customer_Lname       VARCHAR(100)  NULL,
    Customer_Email       VARCHAR(255)  NULL,
    Customer_Segment     VARCHAR(50)   NULL,
    Customer_City        VARCHAR(100)  NULL,
    Customer_State       VARCHAR(100)  NULL,
    Customer_Street      VARCHAR(255)  NULL,
    Customer_Zipcode     VARCHAR(20)   NULL,
    Customer_Country     VARCHAR(100)  NULL,
    Latitude             DECIMAL(10,7) NULL,
    Longitude            DECIMAL(10,7) NULL,
    Customer_Birth_Date  DATE          NULL,

    CONSTRAINT PK_GOLD_DimCustomers
        PRIMARY KEY (Customer_Id)
);
GO
INSERT INTO GOLD.DimCustomers
(
    Customer_Id,
    Customer_Fname,
    Customer_Lname,
    Customer_Email,
    Customer_Segment,
    Customer_City,
    Customer_State,
    Customer_Street,
    Customer_Zipcode,
    Customer_Country,
    Latitude,
    Longitude,
    Customer_Birth_Date
)
SELECT
    Customer_Id,
    Customer_Fname,
    Customer_Lname,
    Customer_Email,
    Customer_Segment,
    Customer_City,
    Customer_State,
    Customer_Street,
    Customer_Zipcode,
    Customer_Country,
    Latitude,
    Longitude,
    Customer_Birth_Date
FROM SILVER.Customers;
GO
SELECT
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT Customer_Id) AS DistinctCustomerIds,
    SUM(CASE WHEN Customer_Id IS NULL THEN 1 ELSE 0 END) AS NullCustomerIds
FROM GOLD.DimCustomers;
---------------
DROP TABLE IF EXISTS GOLD.DimProducts;
GO

CREATE TABLE GOLD.DimProducts
(
    Product_Card_Id     INT           NOT NULL,
    Product_Name        VARCHAR(255)  NULL,
    Product_Price       DECIMAL(18,2) NULL,
    Product_Status      INT           NULL,
    Category_Id         INT           NULL,
    Category_Name       VARCHAR(100)  NULL,
    Department_Id       INT           NULL,
    Department_Name     VARCHAR(100)  NULL,

    CONSTRAINT PK_GOLD_DimProducts
        PRIMARY KEY (Product_Card_Id)
);
GO

INSERT INTO GOLD.DimProducts
(
    Product_Card_Id,
    Product_Name,
    Product_Price,
    Product_Status,
    Category_Id,
    Category_Name,
    Department_Id,
    Department_Name
)
SELECT
    Product_Card_Id,
    Product_Name,
    Product_Price,
    Product_Status,
    Category_Id,
    Category_Name,
    Department_Id,
    Department_Name
FROM SILVER.Products;
GO

SELECT
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT Product_Card_Id) AS DistinctProductIds,
    SUM(CASE WHEN Product_Card_Id IS NULL THEN 1 ELSE 0 END) AS NullProductIds
FROM GOLD.DimProducts;

SELECT TOP 20 *
FROM GOLD.DimProducts
ORDER BY Product_Card_Id;
----------------------------------
DROP TABLE IF EXISTS GOLD.DimSalesman;
GO

CREATE TABLE GOLD.DimSalesman
(
    Salesman_Id       INT            NOT NULL,
    Salesman_Fname    VARCHAR(100)   NULL,
    Salesman_Lname    VARCHAR(100)   NULL,
    Salesman_Email    VARCHAR(255)   NULL,
    Market            VARCHAR(50)    NULL,
    Region            VARCHAR(100)   NULL,
    Hire_Date         DATE           NULL,
    Commission_Rate   DECIMAL(10,4)  NULL,

    CONSTRAINT PK_GOLD_DimSalesman
        PRIMARY KEY (Salesman_Id)
);
GO

INSERT INTO GOLD.DimSalesman
(
    Salesman_Id,
    Salesman_Fname,
    Salesman_Lname,
    Salesman_Email,
    Market,
    Region,
    Hire_Date,
    Commission_Rate
)
SELECT
    Salesman_Id,
    Salesman_Fname,
    Salesman_Lname,
    Salesman_Email,
    Market,
    Region,
    Hire_Date,
    Commission_Rate
FROM SILVER.Salesman;
GO

SELECT
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT Salesman_Id) AS DistinctSalesmanIds,
    SUM(
        CASE
            WHEN Salesman_Id IS NULL
            THEN 1
            ELSE 0
        END
    ) AS NullSalesmanIds
FROM GOLD.DimSalesman;

SELECT TOP 20 *
FROM GOLD.DimSalesman
ORDER BY Salesman_Id;
---------------------------------
DROP TABLE IF EXISTS GOLD.FactOrders;
GO

CREATE TABLE GOLD.FactOrders
(
    Order_Item_Id                  INT           NOT NULL,

    Order_Id                       INT           NULL,

    Customer_Id                    INT           NOT NULL,
    Product_Card_Id                INT           NOT NULL,
    Salesman_Id                    INT           NOT NULL,

    Order_Date_Key                 INT           NOT NULL,
    Shipping_Date_Key              INT           NOT NULL,

    Type                           VARCHAR(30)   NULL,

    Days_for_shipping_real         INT           NULL,
    Days_for_shipment_scheduled    INT           NULL,

    Benefit_per_order              DECIMAL(18,2) NULL,

    Delivery_Status                VARCHAR(50)   NULL,
    Late_delivery_risk             BIT           NULL,

    Market                         VARCHAR(50)   NULL,
    Order_Region                   VARCHAR(100)  NULL,
    Order_State                    VARCHAR(100)  NULL,
    Order_Status                   VARCHAR(50)   NULL,
    Order_Zipcode                  VARCHAR(20)   NULL,

    Shipping_Mode                  VARCHAR(50)   NULL,

    Order_Item_Discount            DECIMAL(18,2) NULL,
    Order_Item_Profit_Ratio        DECIMAL(18,6) NULL,
    Order_Item_Quantity             INT           NULL,
    Order_Item_Total                DECIMAL(18,2) NULL,

    CONSTRAINT PK_GOLD_FactOrders
        PRIMARY KEY (Order_Item_Id)
);
GO

INSERT INTO GOLD.FactOrders
(
    Order_Item_Id,
    Order_Id,
    Customer_Id,
    Product_Card_Id,
    Salesman_Id,

    Order_Date_Key,
    Shipping_Date_Key,

    Type,

    Days_for_shipping_real,
    Days_for_shipment_scheduled,

    Benefit_per_order,

    Delivery_Status,
    Late_delivery_risk,

    Market,
    Order_Region,
    Order_State,
    Order_Status,
    Order_Zipcode,

    Shipping_Mode,

    Order_Item_Discount,
    Order_Item_Profit_Ratio,
    Order_Item_Quantity,
    Order_Item_Total
)
SELECT
    o.Order_Item_Id,
    o.Order_Id,

    o.Customer_Id,
    o.Product_Card_Id,
    o.Salesman_Id,

    CONVERT(INT, CONVERT(VARCHAR(8), o.Order_Date, 112)),
    CONVERT(INT, CONVERT(VARCHAR(8), o.Shipping_Date, 112)),

    o.Type,

    o.Days_for_shipping_real,
    o.Days_for_shipment_scheduled,

    o.Benefit_per_order,

    o.Delivery_Status,
    o.Late_delivery_risk,

    o.Market,
    o.Order_Region,
    o.Order_State,
    o.Order_Status,
    o.Order_Zipcode,

    o.Shipping_Mode,

    o.Order_Item_Discount,
    o.Order_Item_Profit_Ratio,
    o.Order_Item_Quantity,
    o.Order_Item_Total

FROM SILVER.Orders o;
GO

SELECT
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT Order_Item_Id) AS DistinctOrderItems,
    SUM(
        CASE
            WHEN Order_Item_Id IS NULL
            THEN 1
            ELSE 0
        END
    ) AS NullOrderItemIds
FROM GOLD.FactOrders;

SELECT
    MIN(Order_Date_Key) AS MinOrderDateKey,
    MAX(Order_Date_Key) AS MaxOrderDateKey,
    MIN(Shipping_Date_Key) AS MinShippingDateKey,
    MAX(Shipping_Date_Key) AS MaxShippingDateKey
FROM GOLD.FactOrders;
-------------------------------------------------------
-- FactOrders → DimCustomers
ALTER TABLE GOLD.FactOrders
ADD CONSTRAINT FK_FactOrders_DimCustomers
FOREIGN KEY (Customer_Id)
REFERENCES GOLD.DimCustomers(Customer_Id);
GO

-- FactOrders → DimProducts
ALTER TABLE GOLD.FactOrders
ADD CONSTRAINT FK_FactOrders_DimProducts
FOREIGN KEY (Product_Card_Id)
REFERENCES GOLD.DimProducts(Product_Card_Id);
GO

-- FactOrders → DimSalesman
ALTER TABLE GOLD.FactOrders
ADD CONSTRAINT FK_FactOrders_DimSalesman
FOREIGN KEY (Salesman_Id)
REFERENCES GOLD.DimSalesman(Salesman_Id);
GO

-- FactOrders → DimDate (Order Date)
ALTER TABLE GOLD.FactOrders
ADD CONSTRAINT FK_FactOrders_OrderDate
FOREIGN KEY (Order_Date_Key)
REFERENCES GOLD.DimDate(Date_Key);
GO

-- FactOrders → DimDate (Shipping Date)
ALTER TABLE GOLD.FactOrders
ADD CONSTRAINT FK_FactOrders_ShippingDate
FOREIGN KEY (Shipping_Date_Key)
REFERENCES GOLD.DimDate(Date_Key);
GO
--------------------------------
CREATE INDEX IX_FactOrders_Customer
ON GOLD.FactOrders(Customer_Id);
GO

CREATE INDEX IX_FactOrders_Product
ON GOLD.FactOrders(Product_Card_Id);
GO

CREATE INDEX IX_FactOrders_Salesman
ON GOLD.FactOrders(Salesman_Id);
GO

CREATE INDEX IX_FactOrders_OrderDate
ON GOLD.FactOrders(Order_Date_Key);
GO

CREATE INDEX IX_FactOrders_ShippingDate
ON GOLD.FactOrders(Shipping_Date_Key);
GO
-------------------------------
USE SupplyChainDWH;
GO

SELECT
    'DimDate' AS TableName,
    COUNT(*) AS TotalRows
FROM GOLD.DimDate

UNION ALL

SELECT
    'DimCustomers',
    COUNT(*)
FROM GOLD.DimCustomers

UNION ALL

SELECT
    'DimProducts',
    COUNT(*)
FROM GOLD.DimProducts

UNION ALL

SELECT
    'DimSalesman',
    COUNT(*)
FROM GOLD.DimSalesman

UNION ALL

SELECT
    'FactOrders',
    COUNT(*)
FROM GOLD.FactOrders;
GO

SELECT
    SUM(CASE WHEN c.Customer_Id IS NULL THEN 1 ELSE 0 END) AS MissingCustomers,
    SUM(CASE WHEN p.Product_Card_Id IS NULL THEN 1 ELSE 0 END) AS MissingProducts,
    SUM(CASE WHEN s.Salesman_Id IS NULL THEN 1 ELSE 0 END) AS MissingSalesmen,
    SUM(CASE WHEN d1.Date_Key IS NULL THEN 1 ELSE 0 END) AS MissingOrderDates,
    SUM(CASE WHEN d2.Date_Key IS NULL THEN 1 ELSE 0 END) AS MissingShippingDates
FROM GOLD.FactOrders f
LEFT JOIN GOLD.DimCustomers c
    ON f.Customer_Id = c.Customer_Id
LEFT JOIN GOLD.DimProducts p
    ON f.Product_Card_Id = p.Product_Card_Id
LEFT JOIN GOLD.DimSalesman s
    ON f.Salesman_Id = s.Salesman_Id
LEFT JOIN GOLD.DimDate d1
    ON f.Order_Date_Key = d1.Date_Key
LEFT JOIN GOLD.DimDate d2
    ON f.Shipping_Date_Key = d2.Date_Key;
