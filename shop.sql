drop database shop;
create database shop;
use shop;

delimiter //
create procedure cats ()
begin
    show tables;
end//
delimiter ;
-- snacks ---------------------------------------------------------;

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

-- fruits ---------------------------------------------------------;

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

-- veg ------------------------------------------------------------;

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

-- fish -----------------------------------------------------------;

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

-- bakery ---------------------------------------------------------;

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
    ("BA05","Dark Choco Cream Cake per Kg",30.0),
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
    ("BA21","Mini Doughnuts 12s",9.50);

-- drinks ---------------------------------------------------------;

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

-- medicine -------------------------------------------------------;

    create table medicine(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into medicine values
    ("ME01","Hansaplast Plastic Bandage",1.90),
    ("ME02","Hansaplast Aqua Protector Bandage",2.50),
    ("ME03","Baby Ointment",3.50);

-- utensils -------------------------------------------------------;

    create table utensils(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into utensils values

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



-- computers ------------------------------------------------------;



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
    ("CO09","Lenovo Flex 5",3199.0),
    ("CO10","Lenovo Ideapad Gaming 3",2955.0),
    ("CO11","Asus Notebook X515",1799.0),
    ("CO12","Lenovo Notebook Ideapad 3",2499.0),
    ("CO13","Huawei Notebook D14",2499.0),
    ("CO14","Acer Notebook Nitro 5",3999.0),
    ("CO15","Lenovo Notebook Legion 5",4799.0);

-- phones ---------------------------------------------------------;

    create table phones(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into phones values
    ("PH01","Vivo Y72",1199.0),
    ("PH02","Apple Iphone 12",3599.0),
    ("PH03","Apple Iphone 12 Pro Max",5199.0),
    ("PH04","Apple Iphone 11",2953.0),
    ("PH05","Apple Iphone 11 Pro Max",4099.0),
    ("PH06","Apple Iphone SE",1354.0),
    ("PH07","Samsung Galaxy S21 Ultra",4999.0),
    ("PH08","Samsung Galaxy S21+",3599.0),
    ("PH09","Samsung Galaxy S21",3200.0),
    ("PH10","Samsung Galaxy S20 Ultra",3599.0),
    ("PH11","Samsung Galaxy S20",2699.0),
    ("PH12","Samsung Galaxy Note 20 Ultra",3599.0),
    ("PH13","Samsung Galaxy Note 20",3199.0),
    ("PH14","Samsung Galaxy Note 10 Plus",2038.0),
    ("PH15","Samsung Galaxy Note 10",2649.0),
    ("PH16","Samsung Galaxy A32",999.0),
    ("PH17","Nokia X10",930.0),
    ("PH18","One Plus 9 Pro",3500.0),
    ("PH19","One Plus 9",2500.0),
    ("PH20","One Plus 8 Pro",2365.0),
    ("PH21","One Plus 8t",2399.0),
    ("PH22","One Plus 8",1450.0),
    ("PH23","Huawei Nova 7 SE",1259.0),
    ("PH24","Huawei P40 Lite",799.0),
    ("PH25","Xiaomi Mi 10",3099.0),
    ("PH26","Oppo A73 5G",1100.0),
    ("PH27","Samsung A22 LTE",849.0),
    ("PH28","Xiaomi Poco X3 LTE",1099.0);

-- electronic_accessories -----------------------------------------;

    create table electronic_accessories(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into electronic_accessories values
    ("OD01","Sony Bluetooth Headset",499.0),
    ("OD02","Bose Wireless Earpiece",395.0),
    ("OD03","JBL Wireless Speaker",120.0),
    ("OD04","Micro SD Card 32GB",18.0),
    ("OD05","Micro SD Card 64GB",27.0),
    ("OD06","Micro SD Card 128GB",49.0),
    ("OD07","Micro SD Card 256GB",157.0),
    ("OD08","Micro SD Card 1TB",239.0),
    ("OD09","Toshiba External Hard Drive 1TB",159.0),
    ("OD10","Dell Gaming Monitor",1999.0),
    ("OD11","Benq Gaming Monitor",2911.0),
    ("OD12","Logitech Webcam",469.0),
    ("OD13","D-Link Wireless IP Webcam DC56500",279.0),
    ("OD14","Logitech Wireless Mouse and Keypad Small",199.0),
    ("OD15","Logitech Wireless Mouse and Keypad Big",250.0),
    ("OD16","Microsoft Keyboard + Mouse",135.0),
    ("OD17","Dell Laptop Back Pack",150.0),
    ("OD18","Canon All in one Printer",249.0),
    ("OD19","Apple Earpods",65.0),
    ("OD20","Anker Power Bank",139.0),
    ("OD21","Promate Earphones Motive Sport",104.0),
    ("OD22","X.Cell Bluetooth Earpods Soul 7 bundle",139.0),
    ("OD23","JBL Sound Bar 2,1 Deep Bass",1199.0);

-- tvs ------------------------------------------------------------;

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
    ("TV09","Philips Smart TV 4K UHD",4899.0),
    ("TV10","TCL UHD Android TV 75P718",5604.0),
    ("TV11","TCl UHD Android TV 50P618",1749.0),
    ("TV12","Samsung UHD TV",3099.0),
    ("TV13","LG UHD TV",2999.0),
    ("TV14","LG OLED TV",8499.0);
    
-- toys -----------------------------------------------------------;

    create table toys(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into toys values
    ("TO01","Engineering Truck Set",199.0),
    ("TO02","Parking Garage Set",150.0),
    ("TO03","Nerf Alpha Battlion Set",235.0),
    ("TO04","RC Remote Controlled Car ",89.0),
    ("TO05","RC Remote Controlled Jeep",99.0),
    ("TO06","Lego Architecture Dubai",189.0),
    ("TO07","Lego Prison Building Set",225.0),
    ("TO08","Axis Gyro Quadcopter Small",110.0),
    ("TO09","UNO Game Card",35.0),
    ("TO10","Volley Ball",30.0),
    ("TO11","Marvel Action Figures Set",20.0),
    ("TO12","Monopoly Electronic Banking",150.0);

-- milk -----------------------------------------------------------;
    create table milk(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into milk values
    ("MI01","Almarie Milk 500ml",3.50),
    ("MI02","Al Rawabi Milk 500ml",3.50),
    ("MI03","Almarie Laban 500ml",3.0),
    ("MI04","Al Rawabi Laban 500ml",3.0),
    ("MI05","Almarie Strawberry Milk 500ml",5.0),
    ("MI06","Al Rawabi Strawberry Milk 500ml",5.0),
    ("MI07","Almarie Chocolate Milk 500ml",5.0),
    ("MI08","Al Rawabi Chocolate Milk 500ml",5.0),
    ("MI09","Almarie Milk 1L",10.0),
    ("MI10","Almarine Milk 1L Low Fat",11.0),
    ("MI11","Al Rawabi Milk 1L",10.0),
    ("MI12","Al Rawabi Milk 1L Low fat",11.0),
    ("MI13","Almarie Milk 2L",20.50),
    ("MI14","Al Rawabi Milk 2L",20.50),
    ("MI15","Almarie Laban 1L",6.99),
    ("MI16","Al Rawabi Laban 1L",6.99),
    ("MI17","Almarie Laban 2L",12.0),
    ("MI18","Al Rawabi 2L",12.0),
    ("MI19","Amul Butter Salted",15.25),
    ("MI20","Kwality Butter Salted",17.55),
    ("MI21","Amul Butter UnSalted",20.99),
    ("MI22","Kwality Butter Unsalted",23.30),
    ("MI23","Amul Cheese",24.25),
    ("MI24","Regal Picon Portion Cheese 120gm x 5",9.50),
    ("MI25","Mozaralla Cheese",22.0),
    ("MI26","Chedder Cheese",25.0),
    ("MI27","Igloo Vanilla Ice Cream 1Kg",20.0),
    ("MI28","Kwality Vanilla Ice Cream 1Kg",22.0),
    ("MI29","Baskin Robins Vanilla Ice Cream 1Kg",25.65),
    ("MI30","Igloo Chocolate Ice Cream 1Kg",20.0),
    ("MI31","Kwality Chocolate Ice Cream 1Kg",22.0),
    ("MI32","Baskin Robins Chocolate Ice Cream 1Kg",25.65),
    ("MI33","Igloo Strawberry Ice cream 1Kg",20.0),
    ("MI34","Kwality Strwberry Ice Cream 1Kg",22.0),
    ("MI35","Igloo Mango Ice Cream 1Kg",20.0),
    ("MI36","Kwality Mango Ice Cream 1Kg",22.0),
    ("MI37","Igloo Kulfi Ice Cream 1Kg",23.0),
    ("MI38","Kwality Kulfi Ice Cream 1Kg",28.0),
    ("MI39","Baskin Robins Cotton Candy 1Kg",35.65),
    ("MI40","Baskin Robins Oreo Cookies'n Cream 1Kg",35.65),
    ("MI41","Baskin Robins Chocolate Fudge 1Kg",35.65),
    ("MI42","Baskin Robins World Class Chocolate 1Kg",35.65),
    ("MI43","Amul Paneer",9.75),
    ("MI44","Kwality Malai Paneer",20.95),
    ("MI45","Puck Slice Cheese",24.0),
    ("MI46","Kiri Al Jarra Spreadable Cream Cheese",32.0),
    ("MI47","Solgnon Goat Plain Cheese",17.0),
    ("MI48","Amul Pure Ghee 425g",16.85),
    ("MI49","Qbb Pure Ghee 400g",17.45),
    ("MI50","Qbb Pure Ghee 800g",28.70),
    ("MI51","Qbb Pure Ghee 1.6Kg",59.70),
    ("MI52","Gowardhan Pure Cow Ghee 905g",35.70),
    ("MI53","Ashirvaad Svasti Pure Cow Ghee 200ml",15.0),
    ("MI54","Ashirvaad Svasti Pure Cow Ghee 500ml",25.0),
    ("MI55","Ashirvaad Svasti Pure Cow Ghee 1L",48.50),
    ("MI56","Nambisan's Pure Ghee Jar 200ml",10.45),
    ("MI57","Nambisan's Pure Ghee Jar 1L",41.95),
    ("MI58","Verka Desi Ghee 900g",32.0),
    ("MI59","RKG Classic Pure Cow Ghee 100ml",6.0),
    ("MI60","RKG Pure Cow Ghee 200ml",9.95),
    ("MI61","RKG Pure Cow Ghee 1L",44.95),
    ("MI62","Almarai Ghee Butter 400g",19.85),
    ("MI63","Almarai Ghee Butter 800g",30.60),
    ("MI64","Almarai Ghee Butter 1.6Kg",66.40),
    ("MI65","Sakthi Agmark Ghee 500ml",21.65),
    ("MI66","GRB Pure Ghee 200ml",9.50);

-- rice -----------------------------------------------------------;

    create table rice(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into rice values
    ("RI01","India Gate Classic Basmati Rice 5Kg",69.85),
    ("RI02","India Gate Classic Basmati Rice 2Kg",29.15),
    ("RI03","Shehrazade Indian Basmati Rice 5Kg",45.45),
    ("RI04","India Gate Super Basmati 5Kg",47.99),
    ("RI05","India Gate Super Basmati 2Kg",20.95),
    ("RI06","GAutam Basmati Rice 20Kg",154.0),
    ("RI07","India Gate Sona Masoori 5Kg",28.96),
    ("RI08","Gold Sella Basmati Rice 10Kg",40.95),
    ("RI09","Sinnara White Long Grain BAsmati Rice 5Kg",29.95),
    ("RI10","Silver Swan Fragnant Jasmine Rice 10Kg",61.45),
    ("RI11","India Gate Brown Basmati Rice 2Kg",22.75),
    ("RI12","India Gate Sella Basmati Rice 5Kg",44.75),
    ("RI13","Natures Choice Palakkadam Matta Rice 5Kg",25.75),
    ("RI14","Natures Choice Jeerakasala Rice 2Kg",21.55),
    ("RI15","Daawat Devaaya Basmati Rice 5Kg",29.85),
    ("RI16","Lucky Gold Indian Sona Masoori Rice 5Kg",18.50),
    ("RI17","Mahamood VVIP Sella Basmati Rice 10Kg",49.50);

-- oil ------------------------------------------------------------;
    
    create table oil(
        Id char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into oil values
    ("OI01","Noor Canola Oil 750ml",11.25),
    ("OI02","Noor Sunflower Oil 750ml",11.35),
    ("OI03","Noor Sunflower Oil 3L",34.95),
    ("OI04","Noor Sunflower Oil 5L",52.90),
    ("OI05","Noor Sunflower Oil 9L",104.85),
    ("OI06","Mazola Corn Oil 750ml",11.25),
    ("OI07","Mazola Corn Oil 3L",38.50),
    ("OI08","Al Douri Sunflower Oil 1.8L",13.25),
    ("OI09","Parachute Edible Oil 200ml",5.25),
    ("OI10","Parachute Edible Oil 975ml",15.60),
    ("OI11","Teeba Peanut Oil 250ml",14.72),
    ("OI12","Teeba Extra Virgin Olive Oil 1L",18.45),
    ("OI13","Teeba Virgin Oil 3L",65.45),
    ("OI14","Teeba Clove Oil 250ml",28.37),
    ("OI15","Teeba Hazel Nut Oil 250ml",15.36),
    ("OI16","Borges Extra Virgin Olive Oil 500ml",16.20),
    ("OI17","Borges Extra Light Olive Oil 1L",34.25),
    ("OI18","Borges Grape Seed Oil 1L",29.75),
    ("OI19","Borges Classic Olive Oil 1L",31.15),
    ("OI20","Alagha Virgin Olive Oil 1L",20.45),
    ("OI21","Pran Virgin Mustard Oil 200ml",4.95),
    ("OI22","KLF Tilnad Seasame Oil 500ml",11.15),
    ("OI23","KLF Tilnad Seasame Oil 1L",22.75),
    ("OI24","KLF Nirmal Virgin Coconut Oil 500ml",22.0),
    ("OI25","KLF COCONAD Pure Coconut Cooking Oil 1L",21.25),
    ("OI26","KLF Nirmal Cold Pressured Virgin Coconut Oil 400ml",20.0),
    ("OI27","Earths Finest Virgin Coconut Oil 500ml",25.55),
    ("OI28","Sunny Sun Active Blended Vegetable Oil 750ml",7.75),
    ("OI29","Natures Choice Mustard Oil 1L",17.25),
    ("OI30","Golden Shine Sesame Oil 1L",19.65),
    ("OI31","Beratolli Extra Virgin Oil 750ml",29.70),
    ("OI32","Alokozay Sunflower Oil 750ml",7.99),
    ("OI33","Bharat Pure Mustard Oil 5L",58.77),
    ("OI34","Alwedaya Virgin Olive Oil 3L",53.85);

-- sugar ----------------------------------------------------------;
    
    create table sugar(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into sugar values
    ("SU01","Natures Choice Fine Granulated Sugar 500g",2.18),
    ("SU02","Natures Choice Fine Granulated Sugar 1Kg",3.25),
    ("SU03","Natures Choice Fine Granulated Sugae 2Kg",7.25),
    ("SU04","Natures Choice Fine Granulated Sugar 5Kg",16.68),
    ("SU05","Natures Choice Light Brown Sugar Raw 500g",6.0),
    ("SU06","Natures Choice Light Brown Sugar Raw 1Kg",9.90),
    ("SU07","Natures Choice Raw Dark Brown Sugar 500g",5.15),
    ("SU08","Natures Choice Dark Brown Sugar 1Kg",11.45),
    ("SU09","Natures Choice Lump Sugar (Misri) 200g",2.0),
    ("SU10","Green Valley White Sugar 1Kg",4.55),
    ("SU11","Green Valley Lump Sugar 500g",6.0),
    ("SU12","Spoonz Pure Refined Cane Sugar 2Kg",5.90),
    ("SU13","Spoonz Pure Refined Cane Sugar 5Kg",12.61),
    ("SU14","Mubarak Sugar 5Kg",14.15),
    ("SU15","SIS Brown Sugar 1Kg",12.0),
    ("SU16","SIS Icing Sugar 500g",5.75),
    ("SU17","SIS Raw Sugar 1Kg",11.0),
    ("SU18","KLF Natural Coconut Sugar 300g",17.50),
    ("SU19","Down To Earth Organic Coconut Sugar 500g",22.0),
    ("SU20","Down To Earth Organic Brown Sugar 1Kg",14.38),
    ("SU21","Purna White Crystal Sugar 1Kg",0.0),
    ("SU22","Purna White Crystal Sugar 5Kg",16.77),
    ("SU23","Al-Osra Sugar 2Kg",9.75),
    ("SU24","Al-Osra Natural Brown Sugar 500g",5.12),
    ("SU25","Al-Osra Natural Brown Sugar 1Kg",10.10),
    ("SU26","Daily Fresh Fine Granulated Sugar 2Kg",6.75),
    ("SU27","Aling Conching Brown Sugar 1Kg",12.50),
    ("SU28","Safa Sugar Cube 1Kg",6.57);

-- salt -----------------------------------------------------------;

    create table salt(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into salt values
    ("SA01","Nezo Fine Table Salt Blue 600g",2.65),
    ("SA02","Nezo Fine Table Salt Blue 1Kg",3.50),
    ("SA03","Nezo Fine Iodized Vacuum Salt Red 1Kg",3.40),
    ("SA04","Nezo Extra Fine Table Iodized Salt 125g",2.60),
    ("SA05","Nezo Coarse Seasalt 500g",8.10),
    ("SA06","Nezo Fine Iodized Table Salt Low Sodium 450g",10.45),
    ("SA07","Bayara Iodized Table Salt 1Kg",2.25),
    ("SA08","Bayara Iodized Table Salt 700g",2.65),
    ("SA09","Bayara Fine Table Salt Bottle 700g",2.60),
    ("SA10","Teeba Pure Salt Non Iodized 1Kg",1.45),
    ("SA11","Natures Choice Himalayan Pink Salt 600g",7.25),
    ("SA12","Natures Choice Black Salt Powder 100g",1.33),
    ("SA13","Natures Choice Iodized Salt 1Kg",1.33),
    ("SA14","TATA Salt Lite 1Kg",5.0),
    ("SA15","Natures Finest Pink Crystal Salt 500g",11.85),
    ("SA16","Aashirvaad Iodised Salt 1Kg",3.12),
    ("SA17","Uncle J's Black Salt 1Kg",7.28);

-- bathroom_items -------------------------------------------;

    create table bathroom_items(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into bathroom_items values
    ("BI01","Colgate Optic White Toothpaste 75ml",12.15),
    ("BI02","Colgate Maximum Cavity Protection Toothpaste 150ml",28.55),
    ("BI03","Colgate Maximum Cavity Protection Toothpaste 50ml",3.35),
    ("BI04","Colgate Toothpaste Kids 50ml",5.50),
    ("BI05","Colgate Optic White Charcoal Toothpaste 75ml",12.44),
    ("BI06","Colgate Max Fresh Cool Mint Toothpaste 100ml",8.60),
    ("BI07","Colgate Total 12 Pro Gum Toothpaste 75ml",14.20),
    ("BI08","Colgate Natural Extracts Charcoal Toothpaste 75ml",15.00),
    ("BI09","Colgate Herbal Toothpaste 125ml",6.00),
    ("BI10","Colgate Total 12 Toothpaste ",9.25),
    ("BI11","Colgate Advanced Whitening Toothpaste 125ml",9.80),
    ("BI12","Colgate Fresh Confidence Red Toothpaste 125ml",6.50),
    ("BI13","Colgate Max Fresh Mint Toothpaste 100ml",7.40),
    ("BI14","Colgate Total 12 Pro Whitening Toothpaste 75ml",16.90),
    ("BI15","Himalaya Mint Fresh Herbal Toothpaste",4.80),
    ("BI16","Himalaya Stain-Away Herbal Toothpaste 100ml",7.70),
    ("BI17","Himalaya Sparkly White Herbal Toothpaste 50ml",4.20),
    ("BI18","Oral-B Complete Fresh Mint Toothpaste 100ml",7.55),
    ("BI19","Oral-B Gum Repair Toothpaste 75ml",18.20),
    ("BI20","Oral-B Pro-Expert Mint Toothpaste 75ml",16.11),
    ("BI21","Dabur Miswak Toothpaste 190g + Free Toothbrush",4.75),
    ("BI22","Dabur Red Toothpaste 100ml",2.95),
    ("BI23","Dabur Herbal Clove Toothpaste 150ml",5.60),
    ("BI24","Dabur Herbal Neem Toothpaste 150g",5.60),
    ("BI25","Dabur Herbal Charcoal Toothpaste 150ml",12.30),
    ("BI26","Dabur Herbal Whitening Toothpaste 150ml",6.32),
    ("BI27","Dabur Miswaak Gold Toothpaste and Free Toothbrush",6.49),
    ("BI28","Jordan Junior Toothpaste 50ml",8.0),
    ("BI29","Jordan Kids Toothpaste 50ml",8.0),
    ("BI30","Jordan Green Clean Toothpaste 75ml",10.00),
    ("BI31","Aquafresh Kids Toothpaste 50ml",6.35),
    ("BI32","Parodontax Flouride Toothpaste 75ml",19.75),
    ("BI33","Crest 3D White Deluxe Toothpaste 75ml",17.20),
    ("BI34","Crest Cavity Protection Mint Toothpaste 125ml",8.65),
    ("BI35","Crest Active Fluoride Salt Toothpaste 125ml",5.45),
    ("BI36","Sensodyne Flouride Toothpaste 75ml",19.20),
    ("BI37","Sensodyne Extra Fresh Toothpaste 50ml",13.75),
    ("BI38","Sensodyne Specialist Whitening Toothpaste",29.95),
    ("BI39","Sensodyne Daily Repair Toothpaste 75ml",26.20),
    ("BI40","Sensodyne Sensitivity & Gum Toothpaste 75ml",30.65),
    ("BI41","Sensodyne Toothpaste Original 75ml",19.20),
    ("BI42","Sensodyne Multi Care + Whitening Toothpaste 75ml",24.95),
    ("BI43","Sensodyne Rapid Action Toothpaste 75ml",28.00),
    ("BI44","Elgydium Whitening Toothpaste 75ml",20.80),
    ("BI45","Signal Kids Toothpaste Strawberry 75ml",10.00),
    ("BI46","Signal Nature Element Charcoal Toothpaste 100ml",11.50),
    ("BI47","Signal Toothpaste Cavity Fighter 120ml",6.25),
    ("BI48","Signal Toothpaste Witening 100ml",10.65),
    ("BI49","Signal Complete 8 Toothpaste Gold 100ml",8.10),
    ("BI50","Closeup Menthol Toothpaste 120ml",14.71),
    ("BI51","Closeup Anti-Bacterial Toothpaste 120ml",8.30),
    ("BI52","Closeup Anti-Bacterial Toothpaste Red 120ml",8.95),
    ("BI53","Euthymol Original Toothpaste 75ml",16.34),
    ("BI54","Signal Junior Toothpaste 75ml",10.00),
    ("BI55","Crest 3D White Brilliance Blast Toothpaste 75ml",27.00),
    ("BI56","Sensodyne Pronamel Toothpaste 75ml",37.47);

-- .r

-- .r 
-- accounts-------------------------------------------------------;
    create table accounts(
        Name varchar(25),
        Email_ID varchar(50) primary key,
        Password varchar(25),
        Phone_No varchar(20),
        Gender char(1),
        Date_of_Birth date
    );


-- cart-----------------------------------------------------------;
    create table cart(
        Product_ID char(4),
        Product_Name varchar(50),
        Price decimal(10,2),
        Quantity int
    );

-- .y
