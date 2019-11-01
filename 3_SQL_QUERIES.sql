--Queries from User Manual

/*1. This query returns the names of manufacturers located in cities with a warehouse */
SELECT M.name
FROM Manufacturer AS M JOIN Warehouse AS W ON M.City=W.City;

/*2. This query returns the monetary amount of the most expensive order and the customer who purchased it*/
SELECT   Cname, MAX(price) AS MAX
FROM     Customer AS a, Orders AS b, Purchase AS c
WHERE    a.SSN=c.C_ssn AND b.Or_number=c.O_num
GROUP BY Cname;

/*3. This query returns a list of the zip codes of manufacturers that send to a specific distributor*/
SELECT   Zip
FROM     Manufacturer AS a, Distributor AS b, MD_send AS c
WHERE    a.name=c.Man_name AND b.name=c.Dis_name AND b.name='Autumn Industries';


--Other queries

/* Show local product information which lower than 10 dollar*/
SELECT P.name, P.Man_name, B.Brand, P.UPC, P.ShelfPrice, P.description
FROM  Product AS P, P_brand AS B, Manufacturer AS M
WHERE B.UPC = P.UPC
		AND M.city = 'Columbus'
		AND M.state = 'OH'
		AND P.ShelfPrice < 10;

/* Show product with UPC '1111091127' and its distributor*/
SELECT P.name, P.UPC, PD.wholesalePrice, PD.Dis_name
FROM Product AS P, PD_send AS PD
WHERE P.UPC = '1111091127'
		AND P.UPC = PD.upc;

/*Show product which are certified as 'Halal' and has remainder in back*/
SELECT name, product.UPC, certified
FROM Product, P_LOCATION
WHERE certified = 'Halal'
		AND inback > 0
		AND PRODUCT.UPC = P_LOCATION.Upc;

/*Show products that made by hand*/
SELECT name, product.UPC, tag
FROM Product,P_tag
WHERE tag = 'Made by hand'
	AND PRODUCT.UPC = P_tag.upc;

/*Show manufacturers who provided coupons*/
SELECT name,ID
FROM Manufacturer, Coupons
WHERE Man_name = name;

/*Show all the payment methods*/
SELECT distinct payMethod
FROM Orders;

/*Show products' locations which are empty in back but not sold out*/
SELECT  PRODUCT.name,P_LOCATION.*
FROM    P_LOCATION,PRODUCT
WHERE   outFront>0 AND inBack=0; 

/*Show products' locations which have storage in back or sold out outside*/
SELECT   PRODUCT.name,P_LOCATION.*
FROM     P_LOCATION,PRODUCT
WHERE   (NOT Inback=0) OR Outfront=0;

/*Show what the customer with ssn'612206832' purchased and the date*/
SELECT   a.name, Date
FROM     Product AS a, Purchase AS b, Orders AS c
WHERE    a.UPC=b.P_UPC AND b.O_num=c.Or_number AND b.C_ssn = '612206832';

/*Show products which are not enough for minimum order*/
SELECT  description, PRODUCT.UPC
FROM    Product,P_LOCATION
WHERE   outFront+inBack < minOrderCnt

/*Show customer's ssn who purchased local product*/
SELECT   C_ssn, description
FROM     (Purchase JOIN Product ON P_UPC=UPC)
WHERE    Man_name IN
    (SELECT name
     FROM Manufacturer
     WHERE City='Columbus');

/*Show the sum that each maked owe the store for coupons*/
SELECT     sum(Saleprice) AS SUM
FROM       Coupons
WHERE      Unpaid > 0
GROUP BY   Man_name;

/*Show customer who made most orders and the sum of the orders*/
SELECT    C_ssn,SUM(Price) AS SumPrice
FROM      (Purchase JOIN Orders ON O_num=Or_number)
GROUP BY  C_ssn
HAVING count(C_ssn)=
	(SELECT TOP 1 count(C_ssn) 
	FROM (Purchase JOIN Orders ON O_num=Or_number) 
	GROUP BY c_ssn 
	ORDER BY count(C_ssn) DESC
	);
