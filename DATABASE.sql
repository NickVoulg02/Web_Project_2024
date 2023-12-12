CREATE SCHEMA disaster_supply_database;
use disaster_supply_database;
CREATE TABLE FOOD(
Category_Id INT(2) NOT NULL,
Product_name VARCHAR(20) NOT NULL,
Packaged ENUM('YES','NO'),
Quantity_in_items INT(3),
Weight_in_kilos FLOAT(5,2),
Food_Preservation ENUM( 'IN FRIDGE','OUT FRIDGE'),
Production_Date DATE,
Expiration_Date DATE,
No_of_donation INT(5) NOT NULL,
PRIMARY KEY (No_of_donation));

CREATE TABLE BEVERAGES(
Category_Id INT(2) NOT NULL,
Product_name VARCHAR(20) NOT NULL,
Quantity INT(3),
Packaged_in ENUM('2 PACK','6 PACK','12 PACK','24 PACK'),
Food_Preservation ENUM( 'IN FRIDGE','OUT FRIDGE'),
Production_Date DATE,
Expiration_Date DATE,
No_of_donation INT(5) NOT NULL,
PRIMARY KEY (No_of_donation));

CREATE TABLE CLOTHING(
Category_Id INT(2) NOT NULL,
Product_name VARCHAR(20) NOT NULL,
Size ENUM('Kids size','XS','S','M','L','XL','XXL','One size'),
Clothing_type ENUM('Woman','Man','Unisex'),
Quantity INT(3),
No_of_donation INT(5) NOT NULL,
PRIMARY KEY (No_of_donation));

CREATE TABLE MEDICAL_SUPPLIES(
Category_Id INT(2) NOT NULL,
Product_name VARCHAR(40) NOT NULL,
Type_of_product ENUM('Medicine','Bandage material'),
Drug_prescription VARCHAR(30),
Type_of_medicine ENUM('Pills','Tablets','Syrup'),
Quantity INT(3),
Production_Date DATE,
Expiration_Date DATE,
No_of_donation INT(5) NOT NULL,
PRIMARY KEY (No_of_donation));

CREATE TABLE PERSONAL_HYGIENE(
Category_Id INT(2) NOT NULL,
Product_name VARCHAR(20) NOT NULL,
Quantity INT(3),
Duration_in_months ENUM('6M','12M','24M'),
No_of_donation INT(5) NOT NULL,
PRIMARY KEY (No_of_donation));

CREATE TABLE BABY_ESSENTIALS(
Category_Id INT(2) NOT NULL,
Product_name VARCHAR(20) NOT NULL,
Quantity INT(3),
Duration_in_months ENUM('6M','12M','24M'),
No_of_donation INT(5),
PRIMARY KEY (No_of_donation));
CREATE TABLE TOOLS(
Category_Id INT(2) NOT NULL,
Product_name VARCHAR(20) NOT NULL,
Quantity INT(3),
No_of_donation INT(5) NOT NULL,
PRIMARY KEY (No_of_donation));

CREATE TABLE ELECTRONIC_DEVICES(
Category_Id INT(2) NOT NULL,
Type_of_product ENUM('Small appliances','Accesories'),
Product_name VARCHAR(20) NOT NULL,
Quantity INT(3),
No_of_donation INT(5) NOT NULL,
PRIMARY KEY (No_of_donation));
CREATE TABLE CLEANING_SUPPLIES(
Category_Id INT(2) NOT NULL,
Product_name VARCHAR(20) NOT NULL,
Quantity INT(3),
No_of_donation INT(5),
PRIMARY KEY (No_of_donation));

CREATE TABLE FINANCIAL_SUPPORT(
Category_Id INT(2) NOT NULL,
Deposit_in ENUM('Euro','US Dollar'),
Donation_amount INT(6) NOT NULL,
Acount_code VARCHAR(33),
No_of_donation INT(5) NOT NULL,
PRIMARY KEY (No_of_donation));
CREATE TABLE ANIMAL_SUPPLIES(
Category_Id INT(2) NOT NULL,
Product_name VARCHAR(40) NOT NULL,
Quantity INT(3),
Duration_in_months ENUM('6M','12M','24M'),
No_of_donation INT(5) NOT NULL,
PRIMARY KEY (No_of_donation));

CREATE TABLE SHOES(
Category_Id INT(2) NOT NULL,
Size INT(2),
Product_name ENUM('Boots','Athletic shoes','Flat shoes'),
Shoes_type ENUM('Woman','Man','Unisex'),
Quantity INT(3),
No_of_donation INT(5) NOT NULL,
PRIMARY KEY(No_of_donation));

CREATE TABLE DONATIONS_INFO(
No_of_donation INT(5) NOT NULL,
First_and_last_name VARCHAR(35),
Category_Id INT(2) NOT NULL,
Date_of_donation DATE,
PRIMARY KEY (No_of_donation));

CREATE TABLE RESCUERS_INFO(
Registration_number VARCHAR(10) NOT NULL,
First_and_last_name VARCHAR(35) NOT NULL,
Home_address VARCHAR(70),
Personal_number INT(10), 
PRIMARY KEY (Code_id));


INSERT INTO DONATIONS_INFO VALUES(00001,'Lorenz Bauer',1,'2023-11-25'),(00002,'Emilia Weber',1,'2023-11-21'),(00003,'Noah Davies',1,'2023-09-04'),(00004,'Isla Brown',1,'2023-06-15'),(00005,'Axel Skarsgard',1,'2023-12-10'),(00006,'Dimitar Todorov',1,'2023-08-25'),(00007,'Remy Garnier',1,'2022-12-01'),(00008,'Alexandra Papadopoulou',1,'2022-09-20'),(00009, 'Franc Krajnc',1,'2023-05-01'),(00010,'Agnesia Rebane',1,'2023-12-22'),(00011,'Davit Grigoryan',1,'2022-07-23'),(00012,'Reina Martinaj',1,'2023-10-20'),(00013,'Alfred Christensen',1,'2023-12-29'),(00014,'Pablo Pérez',1,'2022-08-15'),(00015,'Antoni Kowalski',1,'2023-03-02');
INSERT INTO DONATIONS_INFO VALUES(00016,'Roan Berisha',2,'2021-08-25'),(00017,'Klaus Schneider',2,'2022-06-20'),(00018,'Aurora Dennis',2,'2023-11-29'),(00019, 'Laurier Bianchi',2,'2023-01-10'),(00020,'Edward Tomson',2,'2022-10-22'),(00021,'Hugo Morales',2,'2022-05-21'),(00022,'Katharina Augustin',2,'2022-02-20'),(00023,'Gabriella Ricci',2,'2023-01-19'),(00024,'Mark Degeyter',2,'2022-04-26'),(00025,'Justine Dupont',2,'2023-12-05'),(00026,'Javier Henriquez',2,'2023-12-11'),(00027,'Mariam Arzumanyan',2,'2022-03-26'),(00028,'Henry Clarke',2,'2022-04-13'),(00029,'Andreas Andreou',2,'2023-04-15'),(00030,'Luigi Esposito',2,'2022-08-22');
INSERT INTO DONATIONS_INFO VALUES(00031,'Benedikte Botezatu',3,'2022-05-26'),(00032,'Wojciech Antoniewicz',3,'2023-04-15'),(00033,'Luca Baumann',3,'2022-12-09'),(00034,'Aloïs Monet',3,'2024-01-23'),(00035,'Dion Bala',3,'2021-11-06'),(00036,'Janez Zupancic',3,'2023-01-28'),(00037,'Thomas Berg',3,'2024-02-14'),(00038,'Kaarina Koskinen',3,'2023-08-17'),(00039,'Jonas Gruber',3,'2023-10-21'),(00040,'Leonardo Berg',3,'2024-05-02'),(00041,'Kaarina Koskinen',3,'2022-08-27'),(00042,'Jonas Gruber',3,'2023-01-28'),(00043,'Leonardo Romano',3,'2024-03-11'),(00044,'Oscar Jensen',3,'2023-03-19'),(00045,'Aysima Abiyev',3,'2022-09-24');
INSERT INTO DONATIONS_INFO VALUES(00046,'Andrew Evans',4,'2024-03-14'),(00047,'Nikolaos Markou',4,'2021-12-16'),(00048,'Jason Vortensen',4,'2023-01-09'),(00049,'Petar Nikolov',4,'2022-05-15'),(00050,'Stjepan Novak',4,'2023-10-03'),(00051,'Rodrigo Pereira',4,'2024-05-11'),(00052,'Hayk Aslanyan',4,'2021-03-18'),(00053,'Ferko Kiss',4,'2024-07-21'),(00054,'Emma Karlson',4,'2021-08-25'),(00055,'Connor Ryan',4,'2022-11-27'),(00056,'Marc Peeters',4,'2022-04-10'),(00057,'Petro Bondarenko',4,'2024-06-20'),(00058,'Petro Bondarenko', 4,'2024-10-06'),(00059,'Ingrid Nilsen',4,'2021-08-21'),(00060,'Aemilie Kukk',4,'2022-02-22');
INSERT INTO DONATIONS_INFO VALUES(00076,'Akis Nikolaou',6,'2022-06-10'),(00077,'Radmila Pavlovic',6,'2023-04-19'),(00078,'Jan Kalchik',6,'2024-01-23'),(00079,'Carmen Garcia',6,'2023-05-16'),(00080,'Florin Ionescu',6,'2022-12-09'),(00081,'Dimitris Georgakopoulos',6,'2024-01-23'),(00082,'Ciara Murphy',6,'2023-06-18'),(00083,'Martin De Leon',6,'2022-10-28'),(00084,'Walter Meyer',6,'2021-07-20'),(00085,'Mark Nouwen',6,'2021-11-14'),(00086,'Olive Smith',6,'2024-02-12'),(00087,'Adrus Rebane',6,'2023-08-05'),(00088,'Tomislav Babic',6,'2024-05-09'),(00089,'Vera Novotny',6,'2021-03-04');
INSERT INTO DONATIONS_INFO VALUES(00090,'Ivanka Georgieva',7,'2021-11-17'),(00091,'Lena Larsson',7,'2022-12-25'),(00092,'Emina Marki',7,'2023-08-21'),(00093,'Afonso Silva',7,'2023-01-24'),(00094,'Patrick Maes',7,'2023-09-19'),(00095,'Helena Heikkinen',7,'2021-02-22'),(00096,'Konstantin Auer',7,'2024-12-09'),(00097,'Bruno Egger',7,'2024-01-28'),(00098,'Arzu Mammadova',7,'2021-10-24'),(00099,'Ella Nielsen',7,'2023-05-15'),(00100,'Dmytro Shevchenko',7,'2022-06-06'),(00101,'Giuseppina Romano',7,'2024-03-20'),(00102,'Xristoforos Xristoforou',7,'2022-07-17'),(00103,'Andrej Stankovic',7,'2024-01-11'); 
INSERT INTO DONATIONS_INFO VALUES(00161,'Michael Miller',8,'2024-01-20'),(00162,'Jennifer Garcia',8,'2023-09-18'),(00163,'John Jones',8,'2024-06-10'),(00164,'Patricia Brown',8,'2022-12-17'),(00165,'Robert Williams',8,'2021-12-03'),(00166,'James Johnson',8,'2024-04-14'),(00167,'Mary Smith',8,'2022-06-27'),(00168,'Farkas Szabo',8,'2023-10-13'),(00169,'Greta Johansen',8,'2023-06-23'),(00170,'Filip Mlakar',8,'2022-12-22'),(00171,'Linda Davis',8,'2022-04-11'),(00172,'Antoine Laurent',8,'2024-07-21'),(00173,'Milena Arshakyan',8,'2023-10-13'),(00174,'Jakub Kaminska',8,'2024-02-25');
INSERT INTO DONATIONS_INFO VALUES(00104,'Sarah Rodriguez',9,'2022-10-13'),(00105,'Thomas Lopez',9,'2022-07-26'),(00106,'Jessica Anderson',9,'2023-04-25'),(00107,'Joseph Martin',9,'2021-06-24'),(00108,'Susan Harris',9,'2022-05-15'),(00109,'Richard Sanchez',9,'2023-06-09'),(00110,'William Perez',9,'2021-11-19'),(00111,'Barbara Lee',9,'2022-06-13'),(00112,'Elizabeth Thompson',9,'2024-02-07'),(00113,'David White',9,'2024-03-14'),(00114,'Christopher Jackson',9,'2022-12-03'),(00115,'Karen Moore',9,'2021-03-20'),(00116,'Lisa Taylor',9,'2021-12-27'); 
INSERT INTO DONATIONS_INFO VALUES(00117,'Dorothy Martinez',10,'2021-04-09'),(00118,'Ronald Gonzales',10,'2022-09-19'),(00119,'Jason Thomas',10,'2023-12-14'),(00120,'Timothy Torres',10,'2022-06-23'),(00121,'Stephanie Clark',10,'2024-04-12'),(00122,'Deborah Ramirez',10,'2024-03-01'),(00123,'George Walker',10,'2024-05-10'),(00124,'Melissa Lewis',10,'2022-06-06'),(00125,'Brian Robinson',10,'2024-03-05'),(00126,'Amanda Allen',10,'2023-12-10'),(00127,'Kevin Young',10,'2024-04-14'),(00128,'Andrew Wright',10,'2022-06-15'),(00129,'Emily King',10,'2024-06-19'),(00130,'Joshua Scott',10,'2023-10-17');	
INSERT INTO DONATIONS_INFO VALUES(00131,'Anthony Hernandez',11,'2024-01-11'),(00132,'Sandra Wilson',11,'2023-08-18'),(00133,'Matthew Nelson',11,'2024-07-07'),(00134,'Betty Baker',11,'2024-09-11'),(00135,'Charles Hall',11,'2022-12-09'),(00136,'Nancy Rivera',11,'2021-06-16'),(00137,'Daniel Flores',11,'2022-03-13'),(00138,'Mark Hill',11,'2021-10-21'),(00139,'Donald Nguyen',11,'2024-05-05'),(00140,'Margaret Green',11,'2024-03-06'),(00141,'Ashley Adams',11,'2021-12-03'),(00142,'Steven Carter',11,'2022-11-12'),(00143,'Kimberly Roberts',11,'2022-09-19'),(00144,'Andrew Campbell',11,'2022-07-06'),(001045,'Donna Mitchell',11,'2021-04-17');									
INSERT INTO DONATIONS_INFO VALUES(00146,'Eric Ramos',12,'2021-04-05'),(00147,'Gary Ward',12,'2023-12-07'),(00148,'Kathleen Ortiz',12,'2022-04-23'),(00149,'Amy Cooper',12,'2023-08-14'),(00150,'Jacob Peterson',12,'2024-01-23'),(00151,'Cynthia Bailey',12,'2022-06-15'),(00152,'Ryan Reed',12,'2023-05-13'),(00153,'Laura Kelly',12,'2024-03-02'),(00154,'Jeffrey Howard',12,'2021-03-04'),(00155,'Sharon Kim',12,'2022-06-18'),(00156,'Edward Cox',12,'2023-05-03'),(00157,'Rebecca Morgan',12,'2023-01-28'),(00158,'Carol Richardson',12,'2022-05-13'),(00159,'Kenneth Murphy',12,'2023-09-11'),(00160,'Michelle Gutierrez',12,'2022-10-19');

INSERT INTO FOOD VALUES(1,'Apples','NO',24,7.80,'OUT FRIDGE','2023-11-23','2023-12-17',00001),(1,'Tomatoes','NO',21,5.90,'OUT FRIDGE','2023-11-19','2023-12-13',00002),(1,'Croissants','YES',40,14.00,'OUT FRIDGE','2023-09-01','2025-06-01',00003),(1,'Cereals','YES',20,19.70,'OUT FRIDGE','2023-06-13','2025-03-26',00004),(1,'Feta cheese','YES',19,18.30,'IN FRIDGE','2023-12-09','2024-02-21',00005),(1,'Spaghetti','YES',30,15.00,'OUT FRIDGE','2023-08-19','2025-05-10',00006),(1,'Canned red beans','YES',25,25.50,'OUT FRIDGE','2022-11-15','2025-09-12',00007),(1,'Chickpeas','YES',18,13.50,'OUT FRIDGE','2022-09-18','2024-12-01',00008),(1,'Rice','YES',25,8.05,'OUT FRIDGE','2023-04-29','2025-08-01',00009),(1,'Cow butter','YES',25,11.25,'IN FRIDGE','2023-12-21','2024-04-01',00010),(1,'Canned fish','YES',32,8.00,'OUT FRIDGE','2022-07-19','2024-10-04',00011),(1,'Lemons','NO',20,2.40,'OUT FRIDGE','2023-10-10','2023-12-27',00012),(1,'Edam slices','YES',20,4.90,'IN FRIDGE','2023-12-28','2024-02-28',00013),(1,'Cookies','YES',25,25.00,'OUT FRIDGE','2022-08-12','2024-10-22',00014),(1,'Chery jam','YES',23,23.40,'OUT FRIDGE','2023-02-27','2025-03-08',00015);

INSERT INTO BEVERAGES VALUES(2,'Bottled water',30,'24 PACK','OUT FRIDGE','2021-08-23','2025-01-12',00016),(2,'Orange juice',15,'24 PACK','OUT FRIDGE','2022-06-17','2025-04-20',00017),(2,'Milk low fat',24,'12 PACK','IN FRIDGE','2023-11-28','2023-12-17',00018),(2,'Coca Cola',13,'12 PACK','OUT FRIDGE','2023-01-07','2026-08-14',00019),(2,'Energy drink',16,'2 PACK','OUT FRIDGE','2022-10-20','2024-11-19',00020),(2,'Beer',15,'6 PACK','OUT FRIDGE','2022-05-18','2024-07-04',00021),(2,'Multivitamin juice',21,'12 PACK','OUT FRIDGE','2022-02-16','2024-08-18',00022),(2,'Sprite',23,'2 PACK','OUT FRIDGE','2023-01-15','2025-05-21',00023),(2,'Condensed milk',24,'6 PACK','OUT FRIDGE','2022-04-24','2024-10-04',00024),(2,'Choco milk',27,'24 PACK','IN FRIDGE','2023-11-29','2024-03-18',00025),(2,'Coffee drink',16,'2 PACK','IN FRIDGE','2023-12-10','2024-05-05',00026),(2,'Ice tea',18,'2 PACK','OUT FRIDGE','2022-03-23','2024-09-25',00027),(2,'Carbonated lemonade',20,'6 PACK','OUT FRIDGE','2022-04-11','2025-06-22',00028),(2,'Oat milk',24,'6 PACK','IN FRIDGE','2023-04-12','2024-01-01',00029),(2,'Sparkling water',15,'2 PACK','OUT FRIDGE','2022-08-18','2024-10-09',00030);

INSERT INTO CLOTHING VALUES(3,'T shirt','XS','Woman',17,00031),(3,'Blue jeans','XL','Man',20,00032),(3,'Knitwear','S','Woman',19,00033),(3,'Jacket','M','Man',21,00034),(3,'Scarfs','One size','Unisex',13,00035),(3,'Sweater','Kids size','Woman',24,00036),(3,'Leggings','S','Woman',28,00037),(3,'Raincoats','L','Unisex',35,00038),(3,'Athletic pants','XXL','Man',11,00039),(3,'Underwear','L','Man',23,00040),(3,'Isothermal blouses','M','Unisex',31,00041),(3,'Shorts','XXL','Man',15,00042),(3,'Gloves','Kids size','Unisex',13,00043),(3,'Set of pyjamas','XL','Woman',19,00044),(3,'Woolen beanie','One size','Unisex',15,00045);

INSERT INTO SHOES VALUES(4,35,'Athletic shoes','Woman',10,00046),(4,38,'Flat shoes','Unisex',17,00047),(4,36,'Boots','Unisex',15,00048),(4,43,'Athletic shoes','Man',18,00049),(4,41,'Flat shoes','Woman',13,00050),(4,40,'Athletic shoes','Unisex',24,00051),(4,37,'Flat shoes','Man',26,00052),(4,39,'Boots','Unisex',19,00053),(4,42,'Flat shoes','Man',3,00054),(4,42,'Athletic shoes','Man',25,00055),(4,40,'Boots','Woman',28,00056),(4,39,'Boots','Man',14,00057),(4,41,'Flat shoes','Woman',23,00058),(4,37,'Athletic shoes','Unisex',16,00059),(4,43,'Boots','Man',25,00060);

INSERT INTO MEDICAL_SUPPLIES VALUES(5,'Depon','Medicine','120 mg','Syrup',29,'2022-09-13','2025-01-03',00061),(5,'Spray plaster','Bandage material',NULL,NULL,29,NULL,NULL,00062),(5,'Filicine','Medicine','5 mg','Pills',28,'2023-11-10','2025-06-10',00063),(5,'Elastic bandage','Bandage material',NULL,NULL,28,NULL,NULL,00064),(5,'Ponstan','Medicine','50 mg','Syrup',26,'2023-07-15','2025-12-15',00065),(5,'Disposable syringes','Bandage material',NULL,NULL,35,NULL,NULL,00066),(5,'Asterin-10','Medicine','10 mg','Tablets',27,'2023-05-20','2026-08-20',00067),(5,'Ribbon gauze','Bandage material',NULL,NULL,30,NULL,NULL,00068),(5,'Losec','Medicine','20 mg','Pills',25,'2022-10-05','2024-12-15',00069),(5,'Wound disinflection gel','Bandage material',NULL,NULL,18,'2022-05-12','2027-05-12',00070),(5,'Algofren','Medicine','100 mg','Syrup',20,'2023-01-02','2025-06-04',00071),(5,'Steriled wound compresses','Bandage material',NULL,NULL,31,NULL,NULL,00072),(5,'Euthyrox','Medicine','75 mg','Pills',20,'2023-04-09','2026-05-13',00073),(5,'Aspirin','Medicine','300 mg','Tablets',34,'2022-07-19','2025-08-07',00074),(5,'Zestril','Medicine','20 mg','Pills',23,'2022-10-15','2025-11-15',00075);

INSERT INTO PERSONAL_HYGIENE VALUES(6,'Face cleanser',17,'6M',00076),(6,'Toothpaste',32,'12M',00077),(6,'Handcream',19,'12M',00078),(6,'Hair shampoo',30,'24M',00079),(6,'Toilet paper',18,NULL,00080),(6,'Toothbrush',35,NULL,00081),(6,'Sanitary napkins',35,NULL,00082),(6,'Shower gel',25,'12M',00083),(6,'Cotton buds',19,'24M',00084),(6,'Hand sanitizer',21,'24M',00085),(6,'Deodorant stick',15,'12M',00086),(6,'Razors',19,NULL,00087),(6,'Cottion pads',22,'24M',00088),(6,'Bath sponges',24,NULL,00089);

INSERT INTO BABY_ESSENTIALS VALUES(7,'Baby wipes',13,'24M',00090),(7,'Pacifier',22,NULL,00091),(7,'Baby bibs',16,NULL,00092),(7,'Baby uniforms',11,NULL,00093),(7,'Baby crib',20,NULL,00094),(7,'Crib sheets',19,NULL,00095),(7,'Diapers',25,'24M',00096),(7,'Baby bottle',30,NULL,00097),(7,'Teddy bear',15,NULL,00098),(7,'Baby powder',10,'12M',00099),(7,'Baby thermometer',8,NULL,00100),(7,'Baby bathtub',13,NULL,00101),(7,'Crib mattress',14,NULL,00102),(7,'Baby lotion',12,'12M',00103);

INSERT INTO ANIMAL_SUPPLIES VALUES(8,'Canned dog food',32,'12M',00161),(8,'Dry dog food',19,'24M',00162),(8,'Animal shampoo',13,'12M',00163),(8,'Disinflection spray for animals',18,'6M',00164),(8,'Dog collar',24,NULL,00165),(8,'Pill for vacteria',17,'6M',00166),(8,'Toy for cat',11,NULL,00167),(8,'Vaccine for poisoning',26,'6M',00168),(8,'Brush for animals',22,NULL,00169),(8,'Canned cat food',37,'12M',00170),(8,'Stainless steel dog/cat bowl',25,NULL,00171),(8,'Dog leash',14,NULL,00172),(8,'Multivitamin gums for dog/cat',20,'12M',00173),(8,'Bones for dental calculus',13,'24M',00174);

INSERT INTO TOOLS VALUES(9,'Saw',10,00104),(9,'Drill',7,00105),(9,'Hammer',13,00106),(9,'Set of nails',15,00107),(9,'Shovel',19,00108),(9,'Spirit level',13,00109),(9,'Set of screws',8,00110),(9,'Tape measure',23,00111),(9,'Voltameter',17,00112),(9,'Srewdriver',25,00113),(9,'Pliers',14,00114),(9,'Wire stripper cutter',19,00115),(9,'Water pipes',17,00116);

INSERT INTO ELECTRONIC_DEVICES VALUES(10,'Small appliances','Smartphone',13,00117),(10,'Accesories','Power strip',20,00118),(10,'Small appliances','Toaster',18,00119),(10,'Accesories','Headphones',16,00120),(10,'Small appliances','TV',25,00121),(10,'Accesories','Charger type C',30,00122),(10,'Small appliances','Stainless blender',15,00123),(10,'Small appliances','PC',18,00124),(10,'Small appliances','Microwave oven',14,00125),(10,'Accesories','Scale',15,00126),(10,'Small appliances','Standing mixer',17,00127),(10,'Small appliances','Electric burners',13,00128),(10,'Accesories','LED light bulbs',28,00129),(10,'Small appliances','Espresso machine',14,00130);

INSERT INTO CLEANING_SUPPLIES VALUES(11,'Mop',24,00131),(11,'Descaling agent',20,00132),(11,'Window cleaner',14,00133),(11,'Broom',30,00134),(11,'Insect repellent',22,135),(11,'Paper towel',40,00136),(11,'Bleach cleaner',17,00137),(11,'Antiseptic solution',13,00138),(11,'Dustpan',23,00139),(11,'Garbage bags',120,00140),(11,'Rubber gloves',100,00141),(11,'Duster',52,00142),(11,'Plastic mop bucket',25,00143),(11,'Sponge',22,00144),(11,'Laundry detergent',30,00145);

INSERT INTO FINANCIAL_SUPPORT VALUES(12,'Euro',750,'AL09 9870 1234 7654 6565 4522 890',00146),(12,'Euro',1680,'CY99 7689 3421 2351 6633 2300 123',00147),(12,'US Dollar',7080,'US34 0974 4234 1324 8723 0099 127',00148),(12,'Euro',9350,'BG81 8765 3579 0789 2884 1030 481',00149),(12,'US Dollar',11240,'NL21 5126 6281 3091 6384 1299 880',00150),(12,'Euro',22350,'PT98 6543 0937 0987 6783 2121 332',00151),(12,'US Dollar',19800,'SE31 2516 7816 7537 0934 4873 009',00152),(12,'US Dollar',13700,'DK94 8725 3897 9824 9283 9482 646',00153),(12,'Euro',22500,'BE46 7623 0812 8347 9132 1298 234',00154),(12,'US Dollar',25640,'ES40 8271 5336 5142 0293 0615 136',00155),(12,'US Dollar',15320,'IT55 5243 5986 2415 3261 1253 512',00156),(12,'Euro',17560,'DE20 6234 6130 0102 0040 3124 883',00157),(12,'Euro',25900,'GR98 6732 2312 8473 8172 1625 400',00158),(12,'US Dollar',30100,'US34 5901 1289 9381 7630 1216 711',00159),(12,'Euro',33250,'CY66 7323 0903 6137 8712 1440 431',00160);

INSERT INTO RESCUERS_INFO VALUES('RT90878233','Emmanuel Moratti','LONDON PICCADILLY 218',9975800123),('RT00923412','Gina Norton','LONDON BRICK LANE 12',9923412070),('RT92655640','Marc Kein','LONDON BOND STREET 23',9988664501),('RT43512708','Louise Peterson','LONDON JERMYN STREET 67',9690935426),('RT64599234','Chris Colman','LONDON DOUGHTY STREET 44',9934054387),('RT55200656','Sergei Kristov','LONDON DOWNING STREET 102',9902357622),('RT67345460','George Erin','LONDON KINGS STREET 35',9842796500),('RT64274926','Jonas Burgmann','LONDON COLUMBIA ROAD 45',9863479230),('RT09426524','Keina Moss','LONDON ST JAMES STREET 66',9637829123),('9098494433','Nikolas Mescal','LONDON BAKER STREET 124',9486524066);
