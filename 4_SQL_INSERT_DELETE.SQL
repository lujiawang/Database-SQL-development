/*------------INSERT STATEMENT------------*/

/* 1. PRODUCT */
IF NOT EXISTS (SELECT * FROM PRODUCT WHERE PRODUCT.UPC = '123456789123')
IF EXISTS (SELECT * FROM MANUFACTURER WHERE MANUFACTURER.name = 'Mars Inc')
INSERT INTO PRODUCT (UPC, name, size, minOrderCnt, description, shelfPrice, certified, Man_name) 
VALUES ('123456789123', 'Poptarts', '4 pouches',25,'Kellogs Strawberry Breakfast Poptarts',3.99,'Vegetarian','Mars Inc');

/* 2. DISTRIBUTORS*/
IF NOT EXISTS (SELECT * FROM DISTRIBUTOR WHERE DISTRIBUTOR.name = 'A&B DISTRIBUTORS')
INSERT INTO DISTRIBUTOR (name, Street, City, State) 
VALUES ('A&B DISTRIBUTORS', 'Main Street', 'COLUMBUS', 'OH');

/* 3. MANUFACTURERS*/
IF NOT EXISTS (SELECT * FROM MANUFACTURER WHERE MANUFACTURER.name = 'A&B MANUFACTURING')
INSERT INTO MANUFACTURER (name, Number, Zip, Street, City, State) 
VALUES ('A&B MANUFACTURING', 22233, '12345', 'Main Street', 'COLUMBUS', 'OH');

/* 4. CUSTOMERS*/
IF NOT EXISTS (SELECT * FROM CUSTOMER WHERE CUSTOMER.Ssn = '111223333')
INSERT INTO CUSTOMER (Ssn, Cname, Phone) 
VALUES ('111223333', 'John Smith', '1112223333');


/*------------DELETE STATEMENT------------*/

/* 1. PRODUCT*/
DELETE FROM PRODUCT 
WHERE (UPC= '123456789123'
	  AND name='Poptarts'
	  AND size= '4 pouches'
	  AND minOrderCnt=25 
	  AND description= 'Kellogs Strawberry Breakfast Poptarts'
	  AND shelfPrice= 3.99 
	  AND certified = 'Vegetarian'
	  AND Man_name= 'Marc Inc');

/* 2. DISTRIBUTOR*/
DELETE FROM DISTRIBUTOR 
WHERE (name= 'A&B DISTRIBUTORS'
	AND Street= 'Main Street'
	AND City= 'COLUMBUS'
	AND State= 'OH');

/* 3. MANUFACTURER*/
DELETE FROM MANUFACTURER
WHERE (name= 'A&B MANUFACTURING'
	AND Number= 222333
	AND Zip= '12345'
	AND Street= 'Main Street'
	AND City= 'COLUMBUS'
	AND State= 'OH');


/* 4. CUSTOMER*/
DELETE FROM CUSTOMER
WHERE (Ssn= '111223333'
	AND Cname= 'John Smith'
	AND Phone= '1112223333');


/*---------DELETE STATEMENT FOR ALL OTHER ENTITIES---------*/

/* 1. CUSTOMER_ADDRESS*/
DELETE FROM CUSTOMER_ADDRESS 
WHERE (Phone= '1112223333'
	AND Zip= '12345'
	AND Street= 'Main Street'
	AND City= 'Columbus'
	AND State= 'OH');

/* 2. WAREHOUSE*/
DELETE FROM WAREHOUSE 
WHERE (Warehouse_ID = 1
	AND Size= 20000
	AND Zip= '12345'
	AND Street= 'Main Street'
	AND City= 'Columbus'
	AND State= 'OH');

/* 3. ORDERS*/
DELETE FROM ORDERS 
WHERE (Or_number= '0123456789'
	AND Price= 567.12
	AND Date= '2018-12-20'
	AND PayMethod= 'Debit');


/* 4. COUPONS*/
DELETE FROM COUPONS 
WHERE (ID= 1
	AND Expires= '2018-12-20'
	AND Saleprice= 567.12
	AND C_ssn= '11122333'
	AND OR_num= '0123456789'
	AND Man_name= 'A&B Manufacturers'
	AND Unpaid= 67.12);

/* 5. COMMENT*/
DELETE FROM COMMENT 
WHERE (UPC='012345678912'
	AND Ssn= '111223333'
	AND Rates= 4
	AND Description= 'This product was good'
	AND Title= 'Poptart Review'
	AND Author= 'Michael G');

/* 6. PURCHASE*/
DELETE FROM PURCHASE 
WHERE (C_ssn= '111223333'
	AND P_upc = '012345678912'
	AND O_num = '0123456789');

/* 7. P_BRAND*/
DELETE FROM P_BRAND 
WHERE (Brand= 'Annies'
	and UPC= '012345678912');

/* 8. MD_SEND*/
DELETE FROM MD_SEND 
WHERE (Man_name= 'A&B Manufacturers'
	and Dis_name= 'X&Y Distributors');

/* 9. P_LOCATION*/
DELETE FROM P_LOCATION 
WHERE (Upc= '012345678912'
	and WhereAt= 'Produce'
	and Bin= '3'
	and Shelf= 'top'
	and Outfront= 10
	and Inback= 18);

/* 10. P_tag*/
DELETE FROM P_tag 
WHERE (tag= '0123456789'
	and upc= '012345678912');

/* 11. PD_send*/
DELETE FROM PD_send 
WHERE (Dis_name= 'A&B Distributors'
	and upc= '012345678912'
	and wholesalePrice= 167.12 );

/* 12. PW_store*/
DELETE FROM PW_store 
WHERE (Ware_ID= 1
	and upc= '012345678912'
	and quantity= 1234);