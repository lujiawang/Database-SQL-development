/*populate values into CUSTOMER and CUSTOMER_ADDRESS*/

insert into CUSTOMER (Ssn,Cname,Phone)
values('489368350','Robert Aragon','8087791466');
insert into CUSTOMER_ADDRESS(Phone,Zip,Street,City,State)
values('8087791466',null,null,null,null);

insert into CUSTOMER (Ssn,Cname,Phone)
values('514158905','Ashley Borden','8015572819');
insert into CUSTOMER_ADDRESS(Phone,Zip,Street,City,State)
values('8015572819',70116,'6649 N Blue Gum St','New Orleans','LA');

insert into CUSTOMER (Ssn,Cname,Phone)
values('690055315','Thomas Conley','8015572817');
insert into CUSTOMER_ADDRESS(Phone,Zip,Street,City,State)
values('8015572817',48116,'4 B Blue Ridge Blvd','Brighton','MI');

insert into CUSTOMER (Ssn,Cname,Phone)
values('421371396','Susan Davis','5032338335');
insert into CUSTOMER_ADDRESS(Phone,Zip,Street,City,State)
values('5032338335',8014,'8 W Cerritos Ave #54','Bridgeport','NJ');

insert into CUSTOMER (Ssn,Cname,Phone)
values('458026124','Chris Diaz','9129271215');
insert into CUSTOMER_ADDRESS(Phone,Zip,Street,City,State)
values('9129271215',99501,'639 Main St','Anchorage','AK');

insert into CUSTOMER (Ssn,Cname,Phone)
values('612206832','Rich Edwards','9129271212');
insert into CUSTOMER_ADDRESS(Phone,Zip,Street,City,State)
values('9129271212',45011,'34 Center St','Hamilton','OH');

insert into CUSTOMER (Ssn,Cname,Phone)
values('300623266','Victor Faulkner','4125659978');
insert into CUSTOMER_ADDRESS(Phone,Zip,Street,City,State)
values('4125659978',44805,'3 Mcauley Dr','Ashland','OH');

insert into CUSTOMER (Ssn,Cname,Phone)
values('660038360','Lisa Garrison','9155622331');
insert into CUSTOMER_ADDRESS(Phone,Zip,Street,City,State)
values('9155622331',60632,'7 Eads St','Chicago','IL');

insert into CUSTOMER (Ssn,Cname,Phone)
values('213468915','Marjorie Green','9155622333');
insert into CUSTOMER_ADDRESS(Phone,Zip,Street,City,State)
values('9155622333',95111,'7 W Jackson Blvd','San Jose','CA');

insert into CUSTOMER (Ssn,Cname,Phone)
values('449483135','Mark Hall','2073635517');
insert into CUSTOMER_ADDRESS(Phone,Zip,Street,City,State)
values('2073635517',57105,'5 Boston Ave #88','Minnehaha','SD');

insert into CUSTOMER (ssn,cname,phone)
values('559811301','James Heard','5046218927');
insert into CUSTOMER_ADDRESS(phone,zip,street,city,state)
values('5046218927','19443','2371 Jerrold Ave','Kulpsville','PA');

insert into CUSTOMER (ssn,cname,phone)
values('322842281','Albert Iorio','8102929388');
insert into CUSTOMER_ADDRESS(phone,zip,street,city,state)
values('8102929388','11953','37275 St  Rt 17m M','Middle Island','NY');

insert into CUSTOMER (ssn,cname,phone)
values('646449061','Charles Jackson','8566368749');
insert into CUSTOMER_ADDRESS(phone,zip,street,city,state)
values('8566368749','90034','25 E 75th St #69','Los Angeles','CA');

insert into CUSTOMER (ssn,cname,phone)
values('465735022','Teresa Kaminski','9073854412');
insert into CUSTOMER_ADDRESS(phone,zip,street,city,state)
values('9073854412','44023','98 Connecticut Ave Nw','Chagrin Falls','OH');

insert into CUSTOMER (ssn,cname,phone)
values('044346954','Tim Lowe','5135701893');
insert into CUSTOMER_ADDRESS(phone,zip,street,city,state)
values('5135701893','78045','56 E Morehead St','Laredo','TX');

insert into CUSTOMER (ssn,cname,phone)
values('477360282','Monte Mceachern','4195032484');
insert into CUSTOMER_ADDRESS(phone,zip,street,city,state)
values('4195032484','85013','73 State Road 434 E','Phoenix','AZ');

insert into CUSTOMER (ssn,cname,phone)
values('421903440','Adria Morrison','7735736914');
insert into CUSTOMER_ADDRESS(phone,zip,street,city,state)
values('7735736914','37110','69734 E Carrillo St','Mc Minnville','TN');

insert into CUSTOMER (ssn,cname,phone)
values('524027657','Jerome Munsch','4087523500');
insert into CUSTOMER_ADDRESS(phone,zip,street,city,state)
values('4087523500','53207','322 New Horizon Blvd','Milwaukee','WI');

insert into CUSTOMER (ssn,cname,phone)
values('205520027','Agnes Nelson','60541421147');
insert into CUSTOMER_ADDRESS(phone,zip,street,city,state)
values('60541421147','48180','1 State Route 27','Taylor','MI');

insert into CUSTOMER (ssn,cname,phone)
values('587032682','Lynette Oyola','4106558723');
insert into CUSTOMER_ADDRESS(phone,zip,street,city,state)
values('4106558723','61109','394 Manchester Blvd','Rockford','IL');


/*populate data into WAREHOUSE*/
insert into WAREHOUSE(Warehouse_ID,Size,Zip,Street,City,State)
values(1,1000,'43221','2325 Wood Ave','Columbus','OH'),
(2,2000,'43212','1763 Olentangy River Rd','Columbus','OH'),
(3,3000,'43210','2650 Kenny Rd','Columbus','OH'),
(4,4000,'43211','847 E 11th Ave','Columbus','OH'),
(5,5000,'43215','243 N 5th St','Columbus','OH'),
(6,6000,'43204','410 N Wilson Rd','Columbus','OH'),
(7,7000,'43214','625 N Broadway','Columbus','OH'),
(8,8000,'43228','4533 Fisher Rd','Columbus','OH'),
(9,9000,'43204','3563 Interchange Rd','Columbus','OH'),
(10,10000,'43219','2901 E 4th Ave #9','Columbus','OH'),
(11,2000,'19014','6 S 33rd St','Aston','PA'),
(12,3000,'95111','6 Greenleaf Ave','San Jose','CA'),
(13,2000,'75062','618 W Yakima Ave','Irving','TX'),
(14,6000,'12204','74 S Westgate St','Albany','NY'),
(15,9000,'88460','3273 State St','Middlesex','NJ'),
(16,4000,'54481','1 Central Ave','Stevens Point','WI'),
(17,9000,'66218','86 Nw 66th St #8673','Shawnee','KS'),
(18,12000,'21601','2 Cedar Ave #84','Easton','MD'),
(19,6000,'10011','90991 Thorburn Ave','New York','NY'),
(20,15000,'77301','386 9th Ave N','Conroe','TX');


/*populate data into DISTRIBUTOR*/
insert into DISTRIBUTOR(name,Street,City,State)
values('Autumn Industries','228 Runamuck Pl #2808','Baltimore','MD'),
('American Plastic Distributors','1349 Delashmut Ave','Columbus','OH'),
('US Foods','5440 Renner Rd','Columbus','OH'),
('Insight Distribution Center','375 N Front St #300','Columbus','OH'),
('Hilti Store','3811 Twin Creeks Dr','Columbus','OH'),
('USA Insulation of Columbus','5411 Franklin St','Hilliard','OH'),
('Frozen Gourmet Inc','1303 Alum Creek Dr','Columbus','OH'),
('Kimball Midwest','4800 Roberts Rd','Columbus','OH'),
('Premium Beverage Supply','3701 Lacon Rd','Hilliard','OH'),
('A&B Distributors','724 E Hudson St','Columbus','OH'),
('Thomas Ridley FoodService','74874 Atlantic Ave','Columbus','OH'),
('Redstone Foods Inc','366 South Dr','Las Cruces','NM'),
('Wholesale Bulk Foods','45 E Liberty St','Ridgefield Park','NJ'),
('Restaurant Depot','4 Ralph Ct','Dunellen','NJ'),
('The Britt Hunt Company','2742 Distribution Way','New York','NY'),
('Key Impact Sales & Systems Inc','426 Wolf St','Metairie','LA'),
('Oceanic Partners','128 Bransten Rd','New York','NY'),
('Ganesh Food Inc','17 Morena Blvd','Camarillo','CA'),
('Viking Premium Beverages','775 W 17th St','San Antonio','TX'),
('Taxi in Columbus','6980 Dorsett Rd','Abilene','KS');


/*populate data into MENUFACTURER*/
insert into MANUFACTURER(name,Number,Zip,Street,City,State)
values('National Electric Coil',100,'43212','800 King Ave','Columbus','OH'),
('Grandon Manufacturing Co Inc',200,'43211','530 Dow Ave','Columbus','OH'),
('Ohio Manufacturers Association',300,'43215','33 N High St #600','Columbus','OH'),
('Fabrisonic LLC',400,'43221','1250 Arthur E Adams Dr','Columbus','OH'),
('Fred D Pfening Co',500,'43212','1075 W 5th Ave','Columbus','OH'),
('889 Global Solutions',600,'43215','1156 Dublin Rd #105','Columbus','OH'),
('Industrial Manufacturing Co',700,'43219','899 N 20th St','Columbus','OH'),
('Innovanics Inc',800,'43212','1413 Wyandotte Rd','Columbus','OH'),
('GameTime Salsa',900,'43212','1870 Northwest Blvd #11e','Columbus','OH'),
('Nestle',1000,'43201','375 E 5th Ave','Columbus','OH');
insert into MANUFACTURER(name,Number,Street,City,State,ZIP)
values('Tyson Foods Inc',1100,'2881 Lewis Rd','Prineville','OR','97754'),
('PepsiCo Inc',1200,'7219 Woodfield Rd','Overland Park','KS','66204'),
('Coca-Cola Co',1300,'1048 Main St','Fairbanks','AK','99708'),
('Kraft Heinz Co',1400,'678 3rd Ave','Miami','FL','33196'),
('JBS USA',1500,'20 S Babcock St','Fairbanks','AK','99712'),
('Anheuser-Busch InBev',1600,'2 Lighthouse Ave','Hopkins','MN','55343'),
('Smithfield Foods Inc',1700,'38938 Park Blvd','Boston','MA','22128'),
('General Mills Inc',1800,'5 Tomahawk Dr','Los Angeles','CA','90006'),
('Conagra Brands Inc',1900,'762 S Main St','Madison','WI','53711'),
('Mars Inc',2000,'209 Decker Dr','Philadelphia','PA','19132');


/*populate data into PRODUCT*/
insert into PRODUCT(UPC,name,Size,MinOrderCnt,Description,ShelfPrice,Certified,Man_name)
values('74570014002','Ice Cream','1 pint',8,'Haagen Dazs Chocolate Ice Cream',5.49,'Vegetarian','Nestle'),
('1111091127','Salad','5 oz',12,'Local Salad Blend',3.49,'Halal','GameTime Salsa'),
('6543210890','Energy bar','large',100,'Healing Energy Crystals',19.95,'Fair trade','Fabrisonic LLC'),
('617390329095','Toy Food Playset','59 Pcs',1,'Deluxe Food Kitchen Collection 59 Pcs. Toy Food Playset w/ Assorted Toy Foods',3.99,null,'Grandon Manufacturing Co Inc'),
('077420350213','Seasome Stick','15 pound',1,'TH Foods Snack, Sesame Sticks',28.89,'organic','National Electric Coil'),
('616453136380','Pistachios','1.5 pound',1,'Food To Live Pistachios',25.99,'Fair Trade','National Electric Coil'),
('072705114405','Dog Food','26 lb',2,'Fromm 4-Star Game Bird Recipe Dry Dog Food',2.49,null,'Industrial Manufacturing Co'),
('616453134096','Pumpkin Seeds','4 lbs',2,'Food To Live Pepitas / Pumpkin Seeds Raw No Shell',25.99,'non-GMO','Innovanics Inc'),
('034878223117','Wall Sticker','5 in 19 in',60,'Disney Frozen Elsa Peel & Stick Wall Stickers',16.89,null,'Grandon Manufacturing Co Inc'),
('031000184544','Sausage link','6.4 oz',5,'Brown N Serve Sausage Links, Fully Cooked, Maple',18.99,'Halal','Grandon Manufacturing Co Inc'),
('815893000163','PEPPERCORN','500g',1,'PEPPER SEASONING PEPPERCORN',5.99,null,'Tyson Foods Inc'),
('853393000030','Sauce','700g',2,'AARDVARK HABENERO HOT SAUCE',4.99,null,'PepsiCo Inc'),
('070602609000','Candy','50g',15,'ABBA-ZABA SNACK SIZE BITES CANDY',2.59,'vegi','Coca-Cola Co'),
('791083622813','Peanut Butter','30 oz',1,'MYOPLEX 30 BUILD MUSCLE BAR/ CHOCOLATE PEANUT BUTTER',12.89,'peanut contains','Kraft Heinz Co'),
('791083649704','chocolate','50g',1,'PURE WHEY PROTEIN POWDER CHOCOLATE',21.89,null,'JBS USA'),
('853824004682','Meringue','100g',2,'RASPBERRY ALMOND MERINGUE',15.99,'organic','Anheuser-Busch InBev'),
('766684006027','toffee','150g',20,'ABDALLAH ENGLISH TOFFEE',6.89,null,'Smithfield Foods Inc'),
('044261590672','Zest','80g',1,'MINI-MUFFINS CRANBERRY ORANGE ZEST',11.98,null,'General Mills Inc'),
('708820953215','nuts','500g',1,'A BLEND OF ROASTED PEANUTS, RAISINS, ALMONDS & CASHEWS TRAIL MIX',19.85,'organic','Conagra Brands Inc'),
('073866106728','oil','1 L',1,'ABRUZZI CHILI OIL',21.89,'organic','Mars Inc');


/*populate values into ORDERS*/
insert into ORDERS(Or_number,Price,Date,PayMethod)
values('4009961173', 28.32,'2018-10-23','Visa'),
('4009961174', 15.36,'2018-10-23','Discover'),
('4009961175', 98.77,'2018-10-23','Discover'),
('4009961181', 88.33,'2018-10-24','Visa'),
('4009961182', 1.65,'2018-10-24','Cash'),
('4009961185', 10.98,'2018-10-24','Visa'),
('4009961197', 45.96,'2018-10-25','Visa'),
('4009961199', 115.99,'2018-10-25','Discover'),
('4009961234', 87.33,'2018-10-26','Visa'),
('4009961246', 19.12,'2018-10-27','Cash'),
('5009961173', 58.32,'2018-11-23','Visa'),
('5009961174', 25.36,'2018-11-23','Visa'),
('5009961175', 68.77,'2018-11-23','Cash'),
('5009961181', 78.33,'2018-11-24','Visa'),
('5009961182', 13.65,'2018-11-24','Visa'),
('5009961185', 100.98,'2018-11-24','Visa'),
('5009961197', 44.96,'2018-11-25','Visa'),
('5009961199', 15.99,'2018-11-25','Cash'),
('5009961234', 67.33,'2018-11-26','Visa'),
('5009961246', 49.12,'2018-11-27','Cash');


/*populate valuse into COUPONS*/
insert into COUPONS(ID,Expires,Saleprice,Unpaid,C_ssn,OR_num,Man_name)
values(1589,'2019-01-01',1.99,0.99,'489368350','4009961173','National Electric Coil'),
(1689,'2019-01-31',2,0.5,'514158905','4009961174','Grandon Manufacturing Co Inc'),
(1789,'2019-12-31',15,1,'213468915','4009961175','Ohio Manufacturers Association'),
(1579,'2019-01-01',5,2,'300623266','4009961181','Fabrisonic LLC'),
(1759,'2018-12-31',0.5,0.1,'449483135','4009961182','Fred D Pfening Co'),
(3589,'2019-03-01',2.99,0.24,'660038360','4009961185','889 Global Solutions'),
(7589,'2019-05-01',3,1.5,'612206832','4009961197','Industrial Manufacturing Co'),
(2489,'2019-01-31',5,2.5,'458026124','4009961234','Innovanics Inc'),
(1565,'2018-11-01',10,1.3,'421371396','4009961246','GameTime Salsa'),
(1523,'2019-02-03',4.99,2.8,'690055315','4009961199','Nestle'),
(2389,'2019-01-01',12.89,2.89,'559811301','5009961173','Tyson Foods Inc'),
(2590,'2019-01-28',32.98,2.98,'322842281','5009961174','PepsiCo Inc'),
(2109,'2019-03-01',41.23,1.23,'646449061','5009961175','Coca-Cola Co'),
(3897,'2019-01-30',35.89,2.89,'465735022','5009961181','Anheuser-Busch InBev'),
(2745,'2019-05-31',36.97,1.97,'044346954','5009961182','Smithfield Foods Inc'),
(2356,'2019-01-25',15.99,3.99,'477360282','5009961185','JBS USA'),
(2345,'2019-02-28',4.99,1.99,'421903440','5009961197','Conagra Brands Inc'),
(2754,'2019-01-31',37.98,2.98,'524027657','5009961199','Mars Inc'),
(2108,'2019-03-01',99.99,4.99,'205520027','5009961234','General Mills Inc'),
(2008,'2019-01-10',98.23,3.23,'587032682','5009961246','Kraft Heinz Co');


/*populate values into COMMENT*/
insert into COMMENT(Upc,Ssn,Rates,Description,Title,Author)
values('74570014002','514158905',3,null,'Overall good','Cathy'),
('1111091127','690055315',2,null,'Wont buy again','Andrew'),
('1111091127','514158905',4,'Fresh salad, delicious','Worth try','Bill'),
('6543210890','421371396',5,null,'Awesome','User123'),
('617390329095','458026124',3,null,'Easy to play with','Andrew'),
('077420350213','300623266',2,'Too salty','Bad taste','William'),
('077420350213','612206832',3,'Alergic, not sure why','Not buy again','Bradon'),
('616453134096','660038360',1,'This is the worst pistachios I bought ever','Worst',null),
('072705114405','300623266',5,'This is my dogs favorite food','My dog love it!','User2456'),
('072705114405','660038360',4,'Just normal dog food','Overall good','appleUser11092'),
('815893000163','559811301',3,null,'just so so',null),
('853393000030','322842281',4,'This food is delicious love','delicious','anonymous'),
('791083649704','646449061',5,null,'perfect','lovelycat'),
('766684006027','465735022',3,null,'not bad','cathy14'),
('073866106728','044346954',5,'Awesome for cook','perfect','housewife'),
('073866106728','477360282',2,'not as good as I thought','Disappoint','user7823'),
('791083622813','421903440',1,null,null,null),
('853824004682','524027657',5,null,'Awesome','Ugotme'),
('044261590672','205520027',3,null,'not bad','buckeye'),
('070602609000','587032682',4,null,null,'gobucks');

/*populate values into PURCHASE*/
insert into PURCHASE(C_ssn,P_upc,O_num)
values('489368350','031000184544','4009961173'),
('514158905','034878223117','4009961174'),
('690055315','616453134096','4009961175'),
('421371396','072705114405','4009961181'),
('458026124','617390329095','4009961182'),
('612206832','077420350213','4009961185'),
('300623266','617390329095','4009961197'),
('660038360','6543210890','4009961199'),
('213468915','1111091127','4009961234'),
('449483135','74570014002','4009961246'),
('559811301','815893000163','5009961174'),
('322842281','853393000030','5009961173'),
('646449061','070602609000','5009961174'),
('465735022','708820953215','5009961234'),
('044346954','791083622813','5009961246'),
('477360282','044261590672','5009961246'),
('421903440','766684006027','5009961174'),
('524027657','853824004682','5009961197'),
('205520027','791083649704','5009961246'),
('587032682','853393000030','5009961185');


/*populate values into P_BRAND*/
insert into P_BRAND(Brand,Upc)
values('Haagen Dazs','74570014002'),
('Homemade','1111091127'),
('Healing','6543210890'),
('Toy Food','617390329095'),
('TH Foods','077420350213'),
('Food to Live','616453136380'),
('Chewy','072705114405'),
('Food to Live','616453134096'),
('Disney','034878223117'),
('Brown N Serve','031000184544'),
('COOL PEPPER','815893000163'),
('AARDVARK','853393000030'),
('ABBA-ZABA','070602609000'),
('MYOPLEX','791083622813'),
('DOVE','791083649704'),
('SIMPLE TRUTH','853824004682'),
('ABDALLAH','766684006027'),
('SIMPLE TRUTH','044261590672'),
('SIMPLE TRUTH','708820953215'),
('ABRUZZI','073866106728');

/*populate values into MD_SEND*/
insert into MD_SEND(Man_name,Dis_name)
values('National Electric Coil','A&B Distributors'),
('Grandon Manufacturing Co Inc','Premium Beverage Supply'),
('Ohio Manufacturers Association','Kimball Midwest'),
('Fabrisonic LLC','Frozen Gourmet Inc'),
('Fred D Pfening Co','USA Insulation of Columbus'),
('889 Global Solutions','Hilti Store'),
('Industrial Manufacturing Co','Insight Distribution Center'),
('Innovanics Inc','US Foods'),
('GameTime Salsa','American Plastic Distributors'),
('Nestle','Autumn Industries'),
('Tyson Foods Inc','Thomas Ridley FoodService'),
('General Mills Inc','Redstone Foods Inc'),
('Mars Inc','Wholesale Bulk Foods'),
('JBS USA','Restaurant Depot'),
('PepsiCo Inc','The Britt Hunt Company'),
('Conagra Brands Inc','Key Impact Sales & Systems Inc'),
('Kraft Heinz Co','Oceanic Partners'),
('Anheuser-Busch InBev','Ganesh Food Inc'),
('Smithfield Foods Inc','Viking Premium Beverages'),
('Coca-Cola Co','Taxi in Columbus');


/*populate values into P_LOCATION*/
insert into P_LOCATION(Upc,WhereAt,Bin,Shelf,outFront,inBack)
values('74570014002','CheckoutCooler','left','top',5,50),
('1111091127','Produce','right','1',10,20),
('6543210890','Checkout','BehindRegister','Wall',10,6),
('617390329095','Aisle7a','Freezer 2','2',8,20),
('077420350213','Stockroom','Freezer 1','6',10,200),
('616453136380','CheckoutCooler','right','top',9,10),
('072705114405','Office','lockbox','inside',5,20),
('616453134096','Aisle6','left','top',10,50),
('034878223117','Aisle1','box','inside',15,20),
('031000184544','Aisle2','box','inside',16,80),
('815893000163','Aisle1','box','top',12,13),
('853393000030','Aisle3','box','top',12,150),
('070602609000','Aisle4','freezer','top',1,30),
('791083622813','Aisle5','shelf1','top',12,60),
('791083649704','Aisle6','shlef2','bottom',19,25),
('853824004682','Aisle7','shlef3','top',20,100),
('766684006027','Aisle8','shelf9','left',5,40),
('044261590672','Aisle9','shelf4','top',8,100),
('708820953215','Aisle3','shelf4','right',10,80),
('073866106728','Aisle5','shelf5','middle',12,40);

/*populate data into P_tag*/
insert into P_tag(tag, upc)
values('Frozen','74570014002'),
('Dessert','1111091127'),
('Energy','6543210890'),
('Toy Food','617390329095'),
('Energy','077420350213'),
('Dessert','616453136380'),
('Pet','072705114405'),
('Made by hand','616453134096'),
('fragrance free','034878223117'),
('Made by hand','031000184544'),
('Snack','815893000163'),
('Sauce','853393000030'),
('Sweets','070602609000'),
('Sauce','791083622813'),
('Sweets','791083649704'),
('Dessert','853824004682'),
('Sweets','766684006027'),
('Dessert','044261590672'),
('Snack','708820953215'),
('Sauce','073866106728');


/*populate values into PD_send*/
insert into PD_send(Dis_name,upc,wholesalePrice)
values('A&B Distributors','74570014002',3.49),
('Premium Beverage Supply','1111091127',2),
('Kimball Midwest','6543210890',12.5),
('Frozen Gourmet Inc','617390329095',1.99),
('USA Insulation of Columbus','077420350213',20.89),
('US Foods','616453136380',21.99),
('Frozen Gourmet Inc','072705114405',0.99),
('Autumn Industries','616453134096',21.59),
('American Plastic Distributors','034878223117',12.89),
('US Foods','031000184544',12.59),
('Thomas Ridley FoodService','815893000163',1.99),
('Redstone Foods Inc','853393000030',2.49),
('Wholesale Bulk Foods','070602609000',0.59),
('Restaurant Depot','791083622813',5.89),
('The Britt Hunt Company','791083649704',12.99),
('Key Impact Sales & Systems Inc','853824004682',4.99),
('Oceanic Partners','766684006027',2.89),
('Ganesh Food Inc','044261590672',5.99),
('Viking Premium Beverages','708820953215',12.99),
('Taxi in Columbus','073866106728',15.29);



/*populate values into PW_store*/
insert into PW_store(Ware_ID,upc,quantity)
values(10,'74570014002',800),
(9,'1111091127',500),
(8,'6543210890',600),
(7,'617390329095',200),
(6,'077420350213',300),
(5,'616453136380',500),
(4,'072705114405',200),
(3,'616453134096',1000),
(2,'034878223117',500),
(1,'031000184544',500),
(11,'815893000163',500),
(12,'853393000030',100),
(13,'070602609000',200),
(14,'791083622813',300),
(15,'791083649704',100),
(16,'853824004682',200),
(17,'766684006027',100),
(18,'044261590672',400),
(19,'708820953215',150),
(20,'073866106728',200);

