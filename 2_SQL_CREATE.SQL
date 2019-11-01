/* 1. Each CUSTOMER entry represents a customer that has made a purchase at Strange Fruits.*/
CREATE TABLE CUSTOMER(
Ssn			CHAR(9)	NOT NULL,
Cname		VARCHAR(15)	NOT NULL,
Phone		VARCHAR(15),
PRIMARY KEY (Ssn)
);

/* 2. Each CUSTOMER_ADDRESS entry represents a customer address of any customer that has made a purchase at Strange Fruits*/
CREATE TABLE CUSTOMER_ADDRESS(
Phone		VARCHAR(15) NOT NULL,
Zip			CHAR(5),
Street		VARCHAR(30),
City		VARCHAR(15),
State		CHAR(2),
PRIMARY KEY (Phone),
);

/* 3. Each WAREHOUSE entry represents a warehouse that stores items that are not currently at the Strange Fruits store front location*/
CREATE TABLE WAREHOUSE(
Warehouse_ID	INT		NOT NULL,
Size		INT			NOT NULL,
Zip			CHAR(5)	,
Street		VARCHAR(30)	,
City		VARCHAR(15) ,
State		CHAR(2)	,
PRIMARY KEY (Warehouse_ID)
);

/* 4. Each DISTRIBUTOR entry represents a distributor of an item or items sold by Strange Fruits*/
CREATE TABLE DISTRIBUTOR(
name 		VARCHAR(30)	NOT NULL,
Street		VARCHAR(30)	NOT NULL,
City		VARCHAR(15)	NOT NULL,
State		CHAR(2)	NOT NULL,
PRIMARY KEY (name)
);

/* 5. Each Manufacturer entry represents a manufacturer of an item or items sold by Strange Fruits*/
CREATE TABLE MANUFACTURER(
name 		VARCHAR(50)	NOT NULL,
Number		INT	NOT NULL ,
Zip			CHAR(5) NOT NULL,
Street		VARCHAR(30)	NOT NULL,
City		VARCHAR(15)	NOT NULL,
State		CHAR(2)	NOT NULL,
PRIMARY KEY (name)
);

/* 6. Each Product entry represents a product in the Strange Fruits store front location. */
CREATE TABLE PRODUCT(
UPC			VARCHAR(12)	NOT NULL,
name		VARCHAR(50)	,
Size		VARCHAR(15),
MinOrderCnt	INT	,
description	VARCHAR(100),
ShelfPrice	DECIMAL(18,2),
Certified	VARCHAR(15),
Man_name	VARCHAR(50)	NOT NULL,
PRIMARY KEY (UPC),
FOREIGN KEY (Man_name) REFERENCES MANUFACTURER (name),
);

/* 7. Each Orders entry represents a pick-up order of items placed by a Strange Fruits customer*/
CREATE TABLE ORDERS(
Or_number	VARCHAR(10)		NOT NULL,
Price		DECIMAL(18,2)	,
Date		DATE		,
PayMethod	VARCHAR(15),
PRIMARY KEY (Or_number)
);

/* 8. Each Coupons entry represents a coupon issued by a manufacturer and used by a customer on an order*/
CREATE TABLE COUPONS(
ID			INT		NOT NULL,
Expires		DATE,
Saleprice	DECIMAL(18,2) ,
Unpaid		DECIMAL(18,2) ,
C_ssn		CHAR(9)	NOT NULL,
OR_num		VARCHAR(10)	NOT NULL,
Man_name	VARCHAR(50)	NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (C_ssn) REFERENCES CUSTOMER (Ssn),
FOREIGN KEY (OR_num) REFERENCES ORDERS (Or_number),
FOREIGN KEY (Man_name) REFERENCES MANUFACTURER (name)
);

/* 9. Each Comment entry represents an online comment a customer has created for a product*/
CREATE TABLE COMMENT(
UPC			VARCHAR(12)		NOT NULL,
Ssn			CHAR(9)			NOT NULL,
Rates		INT				NOT NULL	CHECK(Rates >0 AND Rates <6),
Description	VARCHAR(100),
Title		VARCHAR(30)	,
Author		VARCHAR(15),
PRIMARY KEY (UPC, SSN),
FOREIGN KEY (UPC) REFERENCES PRODUCT (UPC),
FOREIGN KEY (Ssn) REFERENCES CUSTOMER (Ssn)                                                                                                                                              
);

/* 10. Each Purchase entry represents a product that has been purchased by a customer as part of a specific order*/
CREATE TABLE PURCHASE(
C_ssn		CHAR(9)			NOT NULL,
P_upc		VARCHAR(12)		NOT NULL,
O_num		VARCHAR(10)		NOT NULL,
PRIMARY KEY (C_ssn, P_upc, O_num),
FOREIGN KEY (C_ssn) REFERENCES CUSTOMER (Ssn),
FOREIGN KEY (P_upc) REFERENCES PRODUCT (UPC),
FOREIGN KEY (O_num) REFERENCES ORDERS (OR_number)
);

/* 11. Each P_Brand entry represents a product and the brand that produces it*/
CREATE TABLE P_BRAND(
Brand		VARCHAR(15)	NOT NULL,
Upc			VARCHAR(12)		NOT NULL,
PRIMARY KEY (Brand, Upc),
FOREIGN KEY (Upc) REFERENCES PRODUCT (Upc)
);

/* 12. Each MD_send entry represents a manufacturer-distributor pair which denotes the partnerships between these two entities.*/
CREATE TABLE MD_SEND(
Man_name	VARCHAR(50)	NOT NULL,
Dis_name	VARCHAR(30)	NOT NULL,
PRIMARY KEY (Man_name, Dis_name),
FOREIGN KEY (Man_name) REFERENCES MANUFACTURER (name),
FOREIGN KEY (Dis_name) REFERENCES DISTRIBUTOR (name)
);

/* 13. Each P_location entry represents a product and its associated location and outfront and inback quantities at the Strange Fruits store front.*/
CREATE TABLE P_LOCATION(
Upc			VARCHAR(12)	NOT NULL,
WhereAt		VARCHAR(15) NOT NULL,
Bin			VARCHAR(15) NOT NULL,
Shelf		VARCHAR(15) NOT NULL,
Outfront	INT	,
Inback		INT	,
PRIMARY KEY (Upc, whereAt, Bin, Shelf),
FOREIGN KEY (Upc) REFERENCES PRODUCT (Upc)
);

/* 14. Each P_tag entry represents a product tag-product pair for products   */
CREATE TABLE P_tag(
tag		VARCHAR(15) NOT NULL,
upc		VARCHAR(12) NOT NULL,
PRIMARY KEY (upc, tag),
FOREIGN KEY (Upc) REFERENCES PRODUCT (Upc)
);

/* 15. Each PD_send entry represents a product-distributor pair, where a distributor is selling products to the Strange Fruits store or warehouses*/
CREATE TABLE PD_send(
Dis_name	varchar(30) not null,
upc		varchar(12) not null,
wholesalePrice	decimal(18,2),
primary key (upc, Dis_name),
foreign key (dis_name) references DISTRIBUTOR(name),
FOREIGN KEY (Upc) REFERENCES PRODUCT (Upc)
);

/* 16. Each PW_store entry represents a product-warehouse pair, where a product is stored in a warehouse or warehouses.*/
CREATE TABLE PW_store(
Ware_ID	INT NOT NULL,
upc	varchar(12)	not null,
quantity int,
FOREIGN KEY (Upc) REFERENCES PRODUCT (Upc),
Foreign key (ware_id) references WAREHOUSE(warehouse_id),
);


/*View 1: This view provides all products with their corresponding comments and grades. */
CREATE VIEW [PRODUCT COMMENT] AS
SELECT P.name, P.size, tag, P.shelfPrice, C.rates, C.description, C.title, C.author
From Product P, Comment C,P_tag
Where P.UPC = C.UPC;


/*View 2: This view provides the orders for customers. The order contains payment method and price and name for each product the customer bought.*/
CREATE VIEW CUSTOMER_ORDER AS 
SELECT Orders.OR_number, Customer.SSN, Orders.payMethod, Product.name, Product.shelfPrice
From Customer, Product, Orders, Purchase
Where Purchase.O_num = Orders.Or_number AND Purchase.P_UPC = Product.UPC AND Purchase.C_ssn = Customer.SSN;


/*Index 1: Index Products based on the manufacturer name.*/
CREATE INDEX Manufacturer_Name
on Manufacturer (name);


/*Index 2: Index Warehouse based on the State it is in.*/
CREATE INDEX Warehouse_Location
on Warehouse (State);
