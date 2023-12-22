use vehicleDB;

select * from ProductQty;

/* Sub - Total */
SELECT  Year, SUM(Quantity) AS Total_Prod FROM ProductQty
    GROUP BY ROLLUP(Year);

CREATE TABLE
SalesList
(SalesMonth NVARCHAR(20), SalesQuartes  VARCHAR(5), SalesYear  SMALLINT, SalesTotal MONEY)
GO
INSERT INTO  SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2019,60)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,50)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'May','Q2',2019,30)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2020,10)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,120)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'October','Q4',2019,150)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,180)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2020,120)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2019,160)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,170)
GO
SELECT  * FROM SalesList

SELECT 
CASE 
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=0
THEN 'SubTotal'
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=1
THEN 
'Grand Total'
ELSE
CAST(SalesYear AS varchar(10))
END 
AS SalesYear,
SalesQuartes,
SUM(SalesTotal) AS SalesTotal 
FROM SalesList
GROUP BY ROLLUP(SalesYear,SalesQuartes)

create procedure proced1 
    @SalesMonth varchar(20), @SalesTotal int
as
select * from SalesList where SalesMonth = @SalesMonth and SalesTotal = @SalesTotal;
 
exec proced1 @SalesMonth ='March',@SalesTotal= 60.00

CREATE PROCEDURE GetCustomerInfo
    @p_cust_id INT
AS
BEGIN
    SELECT * FROM customer WHERE cust_id = @p_cust_id;
END;

EXEC GetCustomerInfo @p_cust_id = 105;