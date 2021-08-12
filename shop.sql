drop database shop;
create database shop;
use shop;

<<<<<<< HEAD
--| snacks |---------------------------------------------------------;
=======
delimiter //
create procedure cats ()
begin
    show tables;
end//
delimiter ;
-- snacks---------------------------------------------------------;
>>>>>>> bd612bda6bfcc5de06c108546966e928db194b37

    create table snacks(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into snacks values
    ("SN01","Lays Chilli",2.55),
    ("SN02","Lays Salted",2.55),
    ("SN03","Lays Tomato Ketchup",2.95),
    ("SN04","Cheetos Flamming Hot",2.95),
    ("SN05","Cheetos Cheese",2.95),
    ("SN06","Dorittos",3.15),
    ("SN07","Sunbites",3.25),
    ("SN08","Pringles",5.25),
    ("SN09","Tiffany Finns Chips",3.55),
    ("SN10","Tiffany Dlight Choc Chips",10.99),
    ("SN11","Britannia Marie Gold",10.99),
    ("SN12","Britannia Milk Rusk",9.99),
    ("SN13","Britannia Wheat Rusk",9.99),
    ("SN14","Britannia Bourbn Cream",9.99),
    ("SN15","Tiffany Cookie Monsta Mini",8.99);

--| fruits |---------------------------------------------------------;

    create table fruits(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into fruits values
    ("FR01","Green Apple per Kg",5.95),
    ("FR02","Red Apple per Kg",5.95),
    ("FR03","Orange per Kg",3.95),
    ("FR04","Lemon per Kg",3.55),
    ("FR05","Mango per Kg",4.0),
    ("FR06","Pineapple",6.95),
    ("FR07","Banana per Kg",4.55),
    ("FR08","Kiwi per Kg",3.25),
    ("FR09","Dates",0.0),
    ("FR10","Litchi per Kg",3.25),
    ("FR11","Pomegranate per Kg",4.55),
    ("FR12","Avocado per Kg",5.55),
    ("FR13","strawberry 500g",3.25),
    ("FR14","Grapes per Kg",5.95),
    ("FR15","Papaya per Kg",6.25),
    ("FR16","Guava per Kg",3.55),
    ("FR17","Coconut per Kg",6.95),
    ("FR18","Watermelon per Kg",7.65),
    ("FR19","Blackberry 500g",4.25),
    ("FR20","Blueberry 500g",4.25),
    ("FR21","Cherry 250g",2.35),
    ("FR22","Fig 250g",3.15),
    ("FR23","Jackfruit per Kg",8.95),
    ("FR24","Raspberry 500g",3.95);

--| veg |------------------------------------------------------------;

    create table veg(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into veg values
    ("VE01","Red Chilli per Kg",5.55),
    ("VE02","Green Chilli per Kg",3.95),
    ("VE03","Green Capsicum per Kg",4.55),
    ("VE04","Yellow Capsicum per Kg",4.55),
    ("VE05","Red Capsicum per Kg",4.55),
    ("VE06","Onion per Kg",5.45),
    ("VE07","Tomato per Kg",3.95),
    ("VE08","Potato per Kg",4.15),
    ("VE09","Cucumber per Kg",3.65),
    ("VE10","Cabbage per Kg",7.90),
    ("VE11","Garlic per Kg",3.25),
    ("VE12","Ginger per Kg",3.75),
    ("VE13","Carrot per Kg",4.35),
    ("VE14","Eggplant per Kg",4.85),
    ("VE15","Yellow Pumbkin per Kg",5.15),
    ("VE16","White Pumbkin per Kg",4.95),
    ("VE17","Radish per Kg",4.15),
    ("VE18","Broccoli per Kg",3.95),
    ("VE19","Pea per Kg",2.90),
    ("VE20","Sweet Potato per Kg",4.55),
    ("VE21","Mushroom 500g",5.95),
    ("VE22","Spinach",4.25),
    ("VE23","Kale",4.15),
    ("VE24","Green Beans per Kg",4.45),
    ("VE25","Lettuce",4.55),
    ("VE26","Bitter Gourd 500g",3.35),
    ("VE27","Coriander Leaves",4.35),
    ("VE28","Curry Leaves packet",1.0),
    ("VE29","Beetroot per Kg",4.25),
    ("VE30","Olives 250g",3.25);

--| fish |-----------------------------------------------------------;

    create table fish(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into fish values
    ("FI01","Sardines",6.15),
    ("FI02","Prawns",9.95),
    ("FI03","Salmon",8.55),
    ("FI04","Sheri",9.15),
    ("FI05","Tuna 1kg",9.99),
    ("FI06","Seema 1kg",13.99);

--| bakery |---------------------------------------------------------;

    create table bakery(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into bakery values
    ("BA01","Veg Samosa",1.15),
    ("BA02","Chicken Samosa",1.15),
    ("BA03","Punjabi Samosa",2.50),
    ("BA04","Choco Cream Cake per Kg",30.0),
    ("BA05","Dark Choco Cream Cake per Kg"30.0),
    ("BA06","White Cream Cake per Kg",40.0),
    ("BA07","Black Forest Cake per Kg",60.0),
    ("BA08","White Forest Cake",60.0),
    ("BA09","Red Velvet Cake per Kg",75.0),
    ("BA10","Honey Cake per Kg",15.0),
    ("BA11","Veg Puffs",2.50),
    ("BA12","Chicken Puffs",2.50),
    ("BA13","Egg Puffs",2.50),
    ("BA14","Chicken Cutlet",2.15),
    ("BA15","Veg Cutlet",2.15),
    ("BA16","Bread",5.0),
    ("BA17","Milk Bread",5.15),
    ("BA18","Brown Bread",5.15),
    ("BA19","Coockie",1.0),
    ("BA20","Cupcakes",1.50),
    ("BA21","Mini Doughnuts 12s",9.50),;

--| drinks |---------------------------------------------------------;

    create table drinks(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into drinks values
    ("DR01","Red Bull Energy Drink 355 ml",2.50),
    ("DR02","Red Bull Energy Drink 250 ml",2.0),
    ("DR03","Lancor Mango Juice 180 ml",1.50),
    ("DR04","Lancor Apple Juice 180 ml",1.50),
    ("DR05","Lancor Choclate Milk 180 ml",1.50),
    ("DR06","Bottled Drinking Water 500 ml",1.50),
    ("DR07","Bottled Drinking Water 1.5 L",3.95),
    ("DR08","Mountain Dew 155 ml",1.50),
    ("DR09","Seven Up 155 ml",1.90),
    ("DR10","Pepsi 155 ml",2.0),
    ("DR11","Sprite 330 ml",2.15),
    ("DR12","Fresh Apple Juice 500ml",2.50),
    ("DR13","Fresh Watermelon Juice 500ml",2.50),
    ("DR14","Fresh Mango Juice 500ml",2.50),
    ("DR15","Fresh Lemonade 500ml",2.50),
    ("DR16","Fresh Sugarcane Juice 500ml",2.50);

--| medicine |-------------------------------------------------------;

    create table medicine(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into medicine values
    ("ME01","Hansaplast Plastic Bandage",1.90),
    ("ME02","Hansaplast Aqua Protector Bandage",2.50),
    ("ME03","Baby Ointment",3.50);

--| utensils |-------------------------------------------------------;

    create table utensils(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into utensils values
<<<<<<< HEAD
    ("UT01","Insulated Plastic Flask",6.50),
    ("UT02","Measuring Cup",4.95),
    ("UT03","Iron Fry Pan",15.50),
    ("UT04","Stainless Steal Saucepan",23.95),
    ("UT05","Coffee Maker",25.80),
    ("UT06","Dinner Plate",5.35),
    ("UT07","Plastic Plates",4.20),
    ("UT08","Cutlery Wooden Block",4.15),
    ("UT09","Steel Spoons",2.40),
    ("UT10","Steel Turner",3.95),
    ("UT11","Apple Slicer",15.95),
    ("UT12","Melon Slicer",18.15),
    ("UT13","Prestige Cookware Set 7 pc",199.0);



-- computers------------------------------------------------------;
>>>>>>> bd612bda6bfcc5de06c108546966e928db194b37

    create table computers(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into computers values
    ("CO01","Apple Macbook Air 2020",5499.0),
    ("CO02","Dell XPS",4199.0),
    ("CO03","Acer Aspire 3",2599.0),
    ("CO04","Asus Vivobook",2099.0),
    ("CO05","Lenovo Yoga 730",4999.0),
    ("CO06","HP Envy X360",3999.0),
    ("CO07","Microsoft Surface Go",2399.0),
    ("CO08","Microsoft Surface Pro Plus",5999.0),
    ("CO09","Lenovo Flex 5",3199.0)
    ("CO10","Lenovo Ideapad Gaming 3",2955.0),
    ("CO11","Asus Notebook X515",1799.0),
    ("CO12","Lenovo Notebook Ideapad 3",2499.0),
    ("CO13","Huawei Notebook D14",2499.0),
    ("CO14","Acer Notebook Nitro 5",3999.0),
    ("CO15","Lenovo Notebook Legion 5",4799.0);

--| phones |---------------------------------------------------------;

    create table phones(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into phones values
    ("PH01","Vivo",0.0),
    ("PH02","Apple Iphone 12",0.0),
<<<<<<< HEAD
    ("PH03","Apple Iphone 12 Pro Max",0.0),
    ("PH04","Apple Iphone 11",0.0),
    ("PH05","Apple Iphone 11 Pro Max",0.0),
    ("PH06","Apple Iphone X",0.0),
    ("PH07","Samsung Galaxy S21 Ultra",4999.0),
    ("PH08","Samsung Galaxy S21+",3599.0),
    ("PH09","Samsung Galaxy S21",3200.0),
    ("PH10","Samsung Galaxy S20 Ultra",0.0),
    ("PH11","Samsung Galaxy S20",0.0),
    ("PH12","Samsung Galaxy Note 20 Ultra",0.0),
    ("PH13","Samsung Galaxy Note 20",0.0),
    ("PH14","Samsung Galaxy Note 10 Ultra",0.0),
    ("PH15","Samsung Galaxy Note 10",0.0),
    ("PH16","Samsung Galaxy Note 8",0.0),
    ("PH17","Nokia X10",0.0),
    ("PH18","One Plus 9 Pro",3500.0),
    ("PH19","One Plus 9",2500.0),
    ("PH20","One Plus 8 Pro",0.0),
    ("PH21","One Plus 8t",0.0),
    ("PH22","One Plus 8",0.0),
    ("PH23","Huawei",0.0),
    ("PH24","",0.0),
    ("PH25","Xiaomi Mi 10",0.0),
    ("PH26","Oppo A73 5G",1100.0)
    ("PH27","Samsung A22 LTE",849.0),
    ("PH28","Xiaomi Poco X3 LTE",1099.0);

--| electronic_accessories |-----------------------------------------;

    create table electronic_accessories(
=======
    ("PH03","Apple Iphone 11",0.0),
    ("PH04","Apple Iphone X",0.0),
    ("PH05","Samsung Galaxy S21 Ultra",0.0),
    ("PH06","Samsung Galaxy S21 ",0.0),
    ("PH07","Samsung Galaxy S20 Ultra",0.0),
    ("PH08","Samsung Galaxy S20",0.0),
    ("PH09","Samsung Galaxy Note 20 Ultra",0.0),
    ("PH10","Samsung Galaxy Note 20 ",0.0),
    ("PH11","Samsung Galaxy Note 10 Ultra",0.0),
    ("PH12","Samsung Galaxy Note 10",0.0),
    ("PH13","Samsung Galaxy Note 8",0.0),
    ("PH14","Nokia ",0.0),
    ("PH15","Huawei",0.0),
    ("PH16","Motorola",0.0),
    ("PH17","Xiaomi",0.0),
    ("PH18","Oppo",0.0);

-- electronic_accesories------------------------------------------;

    create table electronic_accesories(
>>>>>>> bd612bda6bfcc5de06c108546966e928db194b37
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

<<<<<<< HEAD
    insert into electronic_accessories values
    ("OD01","Sony Bluetooth Headset",0.0),
    ("OD02","Bose Wireless Earpiece",0.0),
    ("OD03","JBL Wireless Speaker",0.0),
    ("OD04","Samsung Galaxy Smart Tag",0.0),
    ("OD05","Apple Air Tag",0.0),
    ("OD06","Micro SD Card 32GB",0.0),
    ("OD07","Micro SD Card 64GB",0.0),
    ("OD08","Micro SD Card 128GB",0.0),
    ("OD09","Micro SD Card 256GB",0.0),
    ("OD10","Micro SD Card 1TB",0.0),
    ("OD11","Toshiba External Hard Disk",0.0),
    ("OD12","Dell Gaming Monitor",0.0),
    ("OD13","Toshiba Gaming Monitor",0.0),
    ("OD14","Benq Gaming Monitor",0.0),
    ("OD15","Logitech Webcam",0.0),
    ("OD16","D-Link Wireless IP Webcam DC56500",0.0),
    ("OD17","Logitech Wireless Mouse and Keypad Small",0.0),
    ("OD18","Logitech Wireless Mouse and Keypad Big",0.0),
    ("OD19","Microsoft Keyboard + Mouse",135.0),
    ("OD20","Dell Laptop Back Pack",0.0)
    ("OD21","Canon All in one Printer",249.0),
    ("OD22","Apple Earpods",65.0),
    ("OD23","Anker Power Bank",139.0),
    ("OD24","Promate Earphones Motive Sport",104.0),
    ("OD25","X.Cell Bluetooth Earpods Soul 7 bundle",139.0),
    ("OD26","JBL Sound Bar 2,1 Deep Bass",1199.0),;

--| tvs |------------------------------------------------------------;
=======
    insert into electronic_accesories values
    ("EL01","Sony Bluetooth Headset",0.0),
    ("EL02","Bose Wireless Earpiece",0.0),
    ("EL03","JBL Wireless Speaker",0.0),
    ("EL04","Samsung Galaxy Smart Tag",0.0),
    ("EL05","Apple Air Tag",0.0),
    ("EL06","Micro SD Card 32/64/128/256/1TB (GB)",0.0),
    ("EL07","Toshiba External Hard Disk",0.0),
    ("EL08","Dell Gaming Monitor",0.0),
    ("EL09","Toshiba Gaming Monitor",0.0),
    ("EL10","Benq Gaming Monitor",0.0),
    ("EL11","Logitech Webcam",0.0),
    ("EL12","Logitech Wireless Mouse and Keypad Small",0.0),
    ("EL13","Logitech Wireless Mouse and Keypad Big",0.0),
    ("EL14","Dell Laptop Back Pack",0.0);

-- tvs------------------------------------------------------------;
>>>>>>> bd612bda6bfcc5de06c108546966e928db194b37

    create table tvs(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into tvs values
    ("TV01","LG Smart TV 8K",7499.0),
    ("TV02","LG Smart TV 4K",3899.0),
    ("TV03","Samsung Smart TV 8K QLED",8599.0),
    ("TV04","Samsung Smart TV 4K SUHD",5999.0),
    ("TV05","Samsung Smart TV 4K Curved",6599.0),
    ("TV06","Samsung Smart TV 4K UHD",4999.0),
    ("TV07","Sony TV 8K SUHD",7099.0),
    ("TV08","Sony TV 4K UHD",4699.0),
    ("TV09","Philips Smart TV 4K UHD",4899.0)
    ("TV10","TCL UHD Android TV 75P718",5604.0),
    ("TV11","TCl UHD Android TV 50P618",1749.0),
    ("TV12","Samsung UHD TV",3099.0),
    ("TV13","LG UHD TV",2999.0),
    ("TV14","LG OLED TV",8499.0),;
    
--| toys |-----------------------------------------------------------;

    create table toys(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into toys values
    ("TO01","Engineering Truck Set",0.0),
    ("TO02","Parking Garage Set",0.0),
    ("TO03","Nerf Alpha Battlion Set",0.0),
    ("TO04","RC Remote Controlled Car ",0.0),
    ("TO05","RC Remote Controlled Jeep",0.0),
    ("TO06","Lego Architecture Dubai",0.0),
    ("TO07","Lego Prison Building Set",0.0),
    ("TO08","Axis Gyro Quadcopter Small",0.0),
    ("TO09","UNO Game Card",0.0),
    ("TO10","Volley Ball",0.0),
    ("TO11","Marvel Action Figures Set",0.0),
    ("TO12","Monopoly Electronic Banking",0.0);

<<<<<<< HEAD
--| milk |-----------------------------------------------------------;
    create table milk(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into milk values
    ("MI01","Almarie Milk 500ml",0.0),
    ("MI02","Al Rawabi Milk 500ml",0.0),
    ("MI03","Almarie Laban 500ml",0.0),
    ("MI04","Al Rawabi Laban 500ml",0.0),
    ("MI05","Almarie Strawberry Milk 500ml",0.0),
    ("MI06","Al Rawabi Strawberry Milk 500ml",0.0),
    ("MI07","Almarie Chocolate Milk 500ml",0.0),
    ("MI08","Al Rawabi Chocolate Milk 500ml",0.0),
    ("MI09","Almarie Milk 1L",10.0),
    ("MI10","Almarine Milk 1L Low Fat",11.0),
    ("MI11","Al Rawabi Milk 1L",10.0),
    ("MI12","Al Rawabi Milk 1L Low fat",11.0),
    ("MI13","Almarie Milk 2L",.0),
    ("MI14","Al Rawabi Milk 2L",0.0),
    ("MI15","Almarie Laban 1L",0.0),
    ("MI16","Al Rawabi Laban 1L",0.0),
    ("MI17","Almarie Laban 2L",0.0),
    ("MI18","Al Rawabi 2L",0.0),
    ("MI19","Amul Butter Salted",0.0),
    ("MI20","Kwality Butter Salted",0.0),
    ("MI21","Amul Butter UnSalted",0.0),
    ("MI22","Kwality Butter Unsalted",0.0),
    ("MI23","Amul Cheese",0.0),
    ("MI24","Regal Picon Portion Cheese 120gm x 5",9.50),
    ("MI25","Mozaralla Cheese",0.0),
    ("MI26","Chedder Cheese",0.0),
    ("MI27","Igloo Vanilla Ice Cream",0.0),
    ("MI28","Kwality Vanilla Ice Cream",0.0),
    ("MI29","Baskin Robins Vanilla Ice Cream",0.0),
    ("MI30","Igloo Chocolate Ice Cream",0.0),
    ("MI31","Kwality Chocolate Ice Cream",0.0),
    ("MI32","Baskin Robins Chocolate Ice Cream",0.0),
    ("MI33","Igloo Strawberry Ice cream",0.0),
    ("MI34","Kwality Strwberry Ice Cream",0.0),
    ("MI35","Igloo Mango Ice Cream",0.0),
    ("MI36","Kwality Mango Ice Cream",0.0),
    ("MI37","Igloo Kulfi Ice Cream",0.0),
    ("MI38","Kwality Kulfi Ice Cream",0.0),
    ("MI39","Baskin Robins Cotton Candy",0.0),
    ("MI40","Baskin Robins Oreo Cookies'n Cream",0.0),
    ("MI41","Baskin Robins Chocolate Fudge",0.0),
    ("MI42","Baskin Robins World Class Chocolate",0.0),
    ("MI43","Amul Paneer",9.75),
    ("MI44","Kwality Malai Paneer",0.0),
    ("MI45","Puck Slice Cheese",24.0),
    ("MI46","Kiri Al Jarra Spreadable Cream Cheese",32.0),
    ("MI47","Solgnon Goat Plain Cheese",17.0);

--| oil |------------------------------------------------------------;

    create table oil(
        ID char(4) primary,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into oil values
    ("OI00","",0.0);

-- .r

=======
-- .r 
-- accounts-------------------------------------------------------;
    create table accounts(
        Name varchar(25),
        Email_ID varchar(50) primary key,
        Password varchar(25)
    );


-- cart-----------------------------------------------------------;
    create table cart(
        Product_ID char(4),
        Product_Name varchar(25),
        Quantity int,
        Price decimal(10,2),
        Total_Price decimal(10,2)
    );

-- .y
>>>>>>> bd612bda6bfcc5de06c108546966e928db194b37
