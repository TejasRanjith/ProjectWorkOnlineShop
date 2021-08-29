drop database shop;
create database shop;
use shop;

delimiter //
create procedure cats ()
begin
    show tables;
end//
delimiter ;
-- snacks --------------------------------------------------------;

    create table snacks(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into snacks values
    ("SN01","Lay's Chilli Chips 170g",6.55),
    ("SN02","Lay's Salted Chips 23g",2.55),
    ("SN03","Lay's Tomato Ketchup Chips",2.95),
    ("SN04","Lay's Forno Black Pepper 170g",6.80),
    ("SN05","Lay's Max Mexican Chilli Chips 200g",7.25),
    ("SN06","Cheetos Flamming Hot Chips",2.95),
    ("SN07","Cheetos Cheese Chips",2.95),
    ("SN08","Doritos Nacho Cheese Tortilla Chips 180g",6.15),
    ("SN09","Doritos Sweet Chilli Totilla Chips 180g",6.70),
    ("SN10","Doritos Flaming Hot Tortilla Chips 175g",7.10),
    ("SN11","Sunbites Chips",3.25),
    ("SN12","Pringles Sour Cream & Onion Chips 200g",7.25),
    ("SN13","Pringles Original Flavoured Chips 200g",7.20),
    ("SN14","Pringles Hot & Spicy Flavoured Chips 200g",7.20),
    ("SN15","Pringles Barbecue Chips 200g",8.50),
    ("SN16","Pringles Salt & Vinegar Chips 200g",8.10),
    ("SN17","Pringles Sour Cream & Onion Chips 200g",6.99),
    ("SN18","Pringles Cheesy Cheese Chips 200g",7.90),
    ("SN19","Pringles Ketchup Chips 200g",7.90),
    ("SN20","Pringles Sizzl'n Spicy BBQ Chips 160g",10.66),
    ("SN21","Pringles Sour Cream & Original Chips 200g",8.50),
    ("SN22","Pringles Sizzl'n Sour Cream & Onion Chips 160g",10.77),
    ("SN23","Tiffany Finns Chips",3.55),
    ("SN24","Tiffany Dlight Choc Chips",10.99),
    ("SN25","Oriental Super Ring Cheese Chips 60g",2.60),
    ("SN26","Britannia Marie Gold",10.99),
    ("SN27","Britannia Milk Rusk",9.99),
    ("SN28","Britannia Wheat Rusk",9.99),
    ("SN29","Britannia Bourbn Cream",9.99),
    ("SN30","Tiffany Cookie Monsta Mini",8.99),
    ("SN31","Sunbites Olive & Oregano 23g x 12",11.90),
    ("SN32","Sunbites Cheese & Herbs 23g x 12",11.90),
    ("SN33","Loacker Minis Napolitaners 150g",7.80),
    ("SN34","Nestle Gold Cornflakes Cereal Bar Pack(8)",13.40),
    ("SN35","Mr Krips Cheese Balls Chips 80g",2.30),
    ("SN36","Eat Real Hummus Chips 45g",5.75),
    ("SN37","Britannia Cake Rusk 12 x 240g",7.10);

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

-- phones --------------------------------------------------------;

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
    ("PH14","Samsung Galaxy S20 FE 5G",1829.55),
    ("PH15","Samsung Galaxy Note 10 Plus",2038.0),
    ("PH16","Samsung Galaxy Note 10",2649.0),
    ("PH17","Samsung Galaxy A32",999.0),
    ("PH18","Samsung Galaxy A22 LTE",669),
    ("PH19","Samsung Galaxy A12",597.0),
    ("PH20","Samsung Galaxy A02",411.0),
    ("PH21","Samsung Galaxy M12 LTE",529.0),
    ("PH22","OnePlus 9 Pro",3500.0),
    ("PH23","OnePlus 9",2500.0),
    ("PH24","OnePlus 8 Pro",2365.0),
    ("PH25","OnePlus 8t",2399.0),
    ("PH26","OnePlus 8",1450.0),
    ("PH27","OnePlus Nord CE 5G",1290.0),
    ("PH28","OnePlus Nord N100",499.0),
    ("PH29","Huawei Mate 40 Pro 5G",3749.0),
    ("PH30","Huawei Nova 7 SE",1259.0),
    ("PH31","Huawei P40 Lite",799.0),
    ("PH32","Huawei Nova 7i",797),
    ("PH33","Huawei Y7a",655.54),
    ("PH34","Xiaomi Mi 10",3099.0),
    ("PH35","Xiaomi Poco X3 Pro",1120.0),
    ("PH36","Xiaomi Poco X3 GT",1197.0),
    ("PH37","Xiaomi Poco X3 LTE",1099.0),
    ("PH38","Xiaomi Redmi 9A",326.29),
    ("PH39","Oppo Reno5 Pro 5G",2339.0),
    ("PH40","Oppo Reno5 Z 5G",1299.00),
    ("PH41","Oppo A94",1242.0),
    ("PH42","Oppo A73 5G",1100.0),
    ("PH43","Oppo A54",559.0),
    ("PH44","Oppo Reno 5G",1699.0),
    ("PH45","Samsung A22 LTE",849.0),
    ("PH46","Lenovo Legion",1799.0),
    ("PH47","Sony Xperia XA1 4G",279.0),
    ("PH48","Nokia X20 5G",1128.60),
    ("PH49","Nokia 8 5G",1039.0),
    ("PH50","Nokia X10",930.0),
    ("PH51","Nokia C10",285.0),
    ("PH52","Realme 8 5G",795.0),
    ("PH53","Asus ROG Phone 5",2779.0),
    ("PH54","Motorola G20",646.66),
    ("PH55","Google Pixel 5",2709.0),
    ("PH56","LG V60 ThinQ 5G",1679);

-- electronic_accessories ----------------------------------------;

    create table electronic_accessories(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into electronic_accessories values
    ("EA01","Sony Bluetooth Headset",499.0),
    ("EA02","Bose Wireless Earpiece",395.0),
    ("EA03","JBL Wireless Speaker",120.0),
    ("EA04","Micro SD Card 32GB",18.0),
    ("EA05","Micro SD Card 64GB",27.0),
    ("EA06","Micro SD Card 128GB",49.0),
    ("EA07","Micro SD Card 256GB",157.0),
    ("EA08","Micro SD Card 1TB",239.0),
    ("EA09","Toshiba External Hard Drive 1TB",159.0),
    ("EA10","Dell Gaming Monitor",1999.0),
    ("EA11","Benq Gaming Monitor",2911.0),
    ("EA12","Logitech Webcam",469.0),
    ("EA13","D-Link Wireless IP Webcam DC56500",279.0),
    ("EA14","Logitech Wireless Mouse and Keypad Small",199.0),
    ("EA15","Logitech Wireless Mouse and Keypad Big",250.0),
    ("EA16","Microsoft Keyboard + Mouse",135.0),
    ("EA17","Dell Laptop Back Pack",150.0),
    ("EA18","Canon All in one Printer",249.0),
    ("EA19","Apple Earpods",65.0),
    ("EA20","Promate Earphones Motive Sport",104.0),
    ("EA21","X.Cell Bluetooth Earpods Soul 7 bundle",139.0),
    ("EA22","JBL Sound Bar 2,1 Deep Bass",1199.0),
    ("EA23","Toshiba Heavy Duty AA Pack(24) Battery",17.45),
    ("EA24","Toshiba Heavy Duty AAA Pack(24) Battery",16.45),
    ("EA25","Toshiba 3V Lithinum Coin Cell Pack(5) Battery",12.99),
    ("EA26","Toshiba Alkaline AA Pack(20) Battery",25.80),
    ("EA27","Anker Alkaline AA Pack(48) Battery",59.00),
    ("EA28","Anker Alkaline AAA Pack(48) Battery",55.00),
    ("EA29","Anker Alkaline AAA Pack(24) Battery",35.00),
    ("EA30","Energizer AA Pack(12) Battery",36.70),
    ("EA31","Energizer Alkaline AA Pack(20) Battery",42.00),
    ("EA32","Energizer Rechargable AA & AAA Battery Charger",98.36),
    ("EA33","GP Green Cell AA Pack(40) Battery",15.00),
    ("EA34","GP Green Cell AAA Pack(40) Battery",15.00),
    ("EA35","NiMH Rechargeable AA Battery",46.99),
    ("EA36","Duracell 9V Pack(2) Battery",26.25),
    ("EA37","Duracell Plus Power AA Pack(20) Battery",41.00),
    ("EA38","Duracell 3V Lithium Coin Pack(2) Battery",10.00),
    ("EA39","Duracell Plus Power AAA Pack(20) Battery",42.75),
    ("EA40","Eveready Carcon Zinc - C Pack(2) Battery",5.75),
    ("EA41","Toshiba AA Alkaline Pack(40) Battery",46.45),
    ("EA42","Anker 20000mAh Power Bank",139.0),
    ("EA43","Xiaomi Redmi 20000mAh Power Bank",46.00),
    ("EA44","Xiaomi Redmi 10000mAh Power Bank",41.00),
    ("EA45","CHarmast 23800mAh Power Bank",129.00),
    ("EA46","Chamast 20000mAh Wireless Power Bank",149.00),
    ("EA47","Anker Wireless 100000mAh Power Bank",199.98),
    ("EA48","UGREEN HDMI 2.0 Cable 4K",33.00),
    ("EA49","UGREEN HDMI 2.1 Cable 8K",47.00),
    ("EA50","UGREEN USB C 3.1 to HDMI 4K",68.00),
    ("EA51","S-TEK 4K HDMI Cable Ulta Slim 4K",26.99),
    ("EA52","Samsung S Pen",116.0),;

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

-- bathroom_items ------------------------------------------------;

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
    ("BI56","Sensodyne Pronamel Toothpaste 75ml",37.47),
    ("BI58","Epeios Electric Sonic Toothbrush 8 Brush Heads",88.99),
    ("BI59","Colgate Zigzag Toothbrush Medium 3",11.20),
    ("BI60","Oral-B Pro Expert Toothbrush Medium 2",23.40),
    ("BI61","Oral-B Vitality Electric Toothbrush",99.48),
    ("BI62","Colgate Extra Clean Toothbrush Medium 4",12.75),
    ("BI63","Oral-B Pro 2500 Electric Toothbrush",191.00),
    ("BI64","Oral-B Pro Expert Sensitive Toothbrush 2",23.09),
    ("BI65","Sensodyne Toothbrush Gum Care",17.87),
    ("BI66","Colgate Slim Soft Charcoal Toothbrush 3",39.55),
    ("BI67","Oral-B 3D White Luxe Pro-Flex Toothbrush 2",25.15),
    ("BI68","Colgate Kids Toothbrush 2",22.40),
    ("BI69","Colgate 360 Charcoal Toothbrush",14.20),
    ("BI70","Dettol Fresh Anti-Bacteria Citrus Orange Blossom Soap Pack(4) 165g",15.95),
    ("BI71","Cinthol Lime Soap Pack(6) 125g",0),
    ("BI72","Lux Botanicals Skin Renewal Soap Pack(4) 12g",10.20),
    ("BI73","Dettol Original Anti-Bacterial Soap Pack(4) 165g",15.60),
    ("BI74","Dettol Skincare Anti-Bacterial Rose & Blossom Soap Pack(4) 165g",18.96),
    ("BI75","Himalaya Neem & Turmeric Soap 165g",9.99),
    ("BI76","Palmolive Naturals Aloe & Olive Soap Pack(6) 170g",21.55),
    ("BI77","Dove Purely Pampering Beauty Cream 135g",5.30),
    ("BI78","Lux Soft Touch Soap Pack(6) 170g",20.95),
    ("BI79","Himalaya Almond Moisturing Soap 125g",9.98),
    ("BI80","Cinthol Original Soap Pack(6) 100g",12.49),
    ("BI81","Lifebuoy Anti Bacterial Soap Pack(3) 160g",12.00),
    ("BI82","Dove Beauty Cream Soap Pack(4) 135g",21.95),
    ("BI83","Yardley Soap Pack(6) 100g",19.85),
    ("BI84","Cinthol Herbal Soap Pack(6) 125g",6.95),
    ("BI85","Nivia Honey & Oil Soap Pack(6) 100g",19.60),
    ("BI86","Nivia Cream Soft Soap Pack(6) 100g",19.61),
    ("BI87","Nivia Pearl & Beauty Soap Pack(6) 100g",26.91),
    ("BI88","Himalaya Purehands Tulsi & Aloe Vera Hand Wash Pack(3) 125ml",14.30),
    ("BI89","Himalaya Purehands Tulsi & Lemon Hand Wash Pack(3) 125ml",14.30),
    ("BI90","Lifebuoy Anti-Bacterial Hand Wash Pack(2) 200ml",9.75),
    ("BI91","Lifebuoy Anti-Bacterial Cool Fresh Hand Wash 500ml",16.20),
    ("BI92","Dettol Skincare Anti-Bacterial Hand Wash Pack(3) 200ml",23.75),
    ("BI93","Dettol Original Anti-Bacterial Hand Wash Pack(3) 200ml",23.75),
    ("BI94","Dettol Fresh Anti-Bacterial Hand Wash Pack(3) 200ml",23.75),
    ("BI95","Dettol Cool Anti-Bacterial Hand Wash 400ml",14.60),
    ("BI96","Lux Moisturising Velvet Jasmine Body Wash Pack(2) 500ml",30.65),
    ("BI97","Lux Moisturising Soft Rose Body Wash Pack(2) 500ml",12.65),
    ("BI98","Lux Antibacterial Glycerine Enriched Hand Wash 500ml",18.00),
    ("BI99","Johnson's Anti-Bacterial Hand Wash Pack(2) 300ml",17.29),
    ("BI100","Johnson's Anti-Bacterial Micellar Mint Hand Wash 300ml",12.65),
    ("BI101","Jennifer's Anti-Bacterial Hand Wash Pack(3) 500ml",15.44),
    ("BI102","Palmolive Foaming Hand Wash Jasmine 250ml",12.60),
    ("BI103","Pears Pure & Gentle Hand Hand Wash 250ml",11.35),
    ("BI104","Dove Nourishing Secrets Lotus Flower Extract Hand Wash 250ml",12.80),
    ("BI105","Fay Bathroom Mat Non-Slip Rug",51.20),
    ("BI107","Diatomarceous Earth Bathroom Mat Non-Slip Fast Drying",159.00),
    ("BI108","Diatomaceous Earth Bathroom Mat Non-Slip Fast Dryig",80.00),
    ("BI109","OGX Biotin & Collagen Shampoo 385ml",36.90),
    ("BI110","OGX Weightless Hydration + Coconut Water Shampoo 385ml",36.02),
    ("BI111","OGX Renewing + Argan Oil Of Morocco 385ml",36.02)
    ("BI112","Herbal Essences Argan Oil Of Morroco Shampoo 400ml",20.77),
    ("BI113","Herbal Essences Coconut Milk Shampoo 400ml",25.00),
    ("BI114","Pantene Smooth & Silky Shampoo Pack(2)",14.25),
    ("BI115","Pantene Pro-V Anti-Hair Fall Shampoo 1000ml",39.80),
    ("BI116","Pantene Pro-V Smooth & Silky Shampoo 1000ml",29.30),
    ("BI117","Pantene Pro-V Daily Care Shampoo 1000ml",32.60),
    ("BI118","Head & Shoulders Menthol Refresh Anti-Dandruff Shampoo 1000ml",34.10),
    ("BI119","Head & Shoulders Classic Clean Anti-Dandruff Shampoo 400ml",22.00),
    ("BI120","Clear Men's Cool Sport Menthol Shampoo Pack(2) 400ml",19.25),
    ("BI121","L'Oreal Paris Elvive Total Repair Shampoo 400ml",20.95),
    ("BI122","Dove Nourishing Secrets Lanvender Shampoo 320ml",21.95),
    ("BI123","Dove Nourishing Secrets Avacado Shampoo 400ml",17.75),
    ("BI124","Sebamed Baby Shampoo 500ml",24.30),
    ("BI125","Sunsilk Shampoo Shine & Strength 400ml",21.95),
    ("BI126","Sunsilk Coconut Moisture Shampoo 400ml",20.11)
    ("BI127","Vatika Shampoo Repair & Restore 400ml",7.70);

-- chocolate -----------------------------------------------------;

    create table chcolate(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    ("CH01","Hershey's Semi Sweet Chocolate Chips 425g",26.64),
    ("CH02","Hershey's Cookies 'n' Creme Chocolate Bar 40g",2.45),
    ("CH03","Hershey;s Dark Chocolate Pearls 50g",8.65),
    ("CH04","Hershey's Kisses Classic Milk Chocolate 226g",20.68),
    ("CH05","Hershey's Chocolate Syrup 650g",13.95),
    ("CH06","Hershey's Cocoa Creations Original Chocolate 100g",9.56),
    ("CH07","Nestle KitKat Crispy Miniatures Chocolate 110g",7.50),
    ("CH08","Nestle KitKat Milk Chocolate 20.5g Pieces(36)",0),
    ("CH09","Snickers Minitures Chocolate Mini Bar 150g",11.0),
    ("CH10","Snickers Peanut Butter Chocolate Bar 36.5g Pack(24)",0),
    ("CH11","Best Of Minis Chocolate Bag 500g",31.90),
    ("CH12","Mackintosh's Quality Street Chocolate 850g",43.15),
    ("CH13","Mackintosh's Quality Street Chocolate 375g",27.90),
    ("CH14","Tiffanu Eclairs Chocolate 250g",4.85),
    ("CH15","Toblerone Mini Milk Chocolate 200g",9.0),
    ("CH16","Toblerone Essentially Swiss Chocolate Pack(6) 50g",19.65),
    ("CH17","Chiko Milk Eclairs Chocolate 300g",13.34),
    ("CH18","Snikers Chocolate Bar 50g x 24",22.35),
    ("CH19","Lindt Swiss Tradition Deluxe Chocolate 145g",35.40),
    ("CH20","Lindt Excellence Dark Chocolate 100g",9.30),
    ("CH21","Lindt Excellence Dark Orange Pack(2) 100g",20.92),
    ("CH22","Lindt Excellence Cocoa Pack(2) 100g",20.92),
    ("CH23","Lindt Excellence Mint Intense Pack(2) 100g",20.92),
    ("CH24","Lindt Excellence Sea Salt Paxk(2) 100g",20.92),
    ("CH25","Lindt Excellence Dark Chilli Chocolate 100g",9.60),
    ("CH26","Linst Excellence Cherry Intense Dark Chocolate 100g",9.60),
    ("CH27","Lindt Dark Hazelnut Pack(2) 100g",16.88),
    ("CH28","Lindt Assorted Lindor Balls 500g",52.67),
    ("CH29","Lindt Swiss Classic White Chocolate 100g",9.90),
    ("CH30","Lindt Les Grandes Milk Hazel Nut Chocolate 150g",18.55),
    ("CH31","Godiva 72% Cacao Dark Chocolate Tablet",11.55),
    ("CH32","Al Alali Rich Cocoa Powder 100g",5.90),
    ("CH33","American Garden Chocolate Syrup 680g",13.98),
    ("CH34","American Garden Chocolate Syrup 524g",14.90),
    ("CH35","American Garden Caramel Syrup 680g",15.35),
    ("CH36","Walden Farms Calorie Free Chocolate Syrup 355ml",57.49),
    ("CH37","Monin Chocolate Syrup 700ml",65.00),
    ("CH38","Griffard White Chocolate Syrup 1000ml",60.0),
    ("CH39","Al Alali Chcoclate Syrup 675g",15.16),
    ("CH40","Hershey's Caramel Syrup 623g",15.70);

-- stationaries ---------------------------------------------;

    create table stationaries(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    ("ST01","Maxi Classic Graphite Pencil HB 12Pc",4.25),
    ("ST02","Maxi Classic Graphite Pencil HB 48Pc",16.0),
    ("ST03","Faber-Castell Bonanza Graphite Pencil HB 12Pc",5.20),
    ("ST04","Faber-Castell Triangular Graphite Pencil HB 12Pc",7.0),
    ("ST05","Faber-Castell Dessin Graphite Pencil HB 12Pc",10.0),
    ("ST06","Deli Graphite Pencil HB 12Pc",4.57),
    ("ST07","Staedler Noris Pencil 12Pc",17.42),
    ("ST08","Bic Multifunction Blister Mechanical Pencil",11.90),
    ("ST09","Faber-Castell Gripmatic Mechanical Pencil",6.00),
    ("ST10","Faber-Castell Shark Mechanical Pencil",5.00),
    ("ST11","Faber-Castell Econ Mechanical Pencil Pack(4)",9.60),
    ("ST12","Faber-Castell Apollo Mechanical Pencil",9.0),
    ("ST13","Faber-Castell Polymatic Mechanical Pencil",9.0),
    ("ST14","Faber-Castell Grip Tex Mechanical Pencil Pack(4)",7.50),
    ("ST15","Faber-Castell Leads 0.5mm",4.0),
    ("ST16","Faber-Castell Leads 0.7mm",4.0),
    ("ST17","Faber-Castell Leads 0.8mm",4.0),
    ("ST18","Staedler Mars Micro Carbon Mechanical Pencil Refills",34.80),
    ("ST19","Deli Ball Point Pen 3Pc Blue",5.75),
    ("ST20","Faber-Castell Ball Pen 5Pc Tri-color",5.0),
    ("ST21","Uni Pin Fineliner 0.03 to 0.08 Set of 6 Black",24.99),
    ("ST22","Uni Ball Eye 3Pc Blue",17.79),
    ("ST23","Uni Ball 4pc (Black, Blue, Red, Green)",27.65),
    ("ST24","Cello Swift Ball Pen 5Pc Blue",4.80),
    ("ST25","Cello Trimate Ball Pen 25Pc Blue",13.50),
    ("ST26","Watermark Expert Black Ballpoint Pen Blue",295.0),
    ("ST27","Maxi Gel Pen Blue 2Pc",5.50),
    ("ST28","Pilot Frixion Erasable Pen 4Pc (Black, Blue, Green, Red)",33.40),
    ("ST29","Faber-Castell Connector Felt Pen 20Pc",13.60),
    ("ST30","Faber-Castell Sketch Pen 30Pc",15.0),
    ("ST30","Faber-Castell Sketch Pen 12Pc",6.0),
    ("ST31","Sky-Touch 20Pc Sketch Pen",18.16),
    ("ST32","Marker Painting Sketch Pen 80Pc",49.09),
    ("ST33","Bespoke Sketch Pen 24Pc",25.0),
    ("ST34","Stabilo Tri Jumbo Sketch Pen 12Pc",21.0),
    ("ST35","Faber-Castell Whiteboard Marker 4Pc (Green, Blue, Red, Black)",9.0),
    ("ST36","Sharpie Permanent Marker 3Pc Black",23.90),
    ("ST37","Maxi Permanent Marker 4Pc (Blue, Black, Red, Green)",6.0),
    ("ST38","Faber-Castell Classic Highlighter Pen 4Pc",12.0),
    ("ST39","Stabilo Highlighter Pen 8Pc",18.42),
    ("ST40","Steadler Textsurf Highlighter 6Pc",23.75),
    ("ST41","Faber-Castell Pastel Highlighter 4Pc",11.0),
    ("ST42","Maxi Super-Fluo Mini Highlighter 4Pc",7.0),
    ("ST43","Deli Correction Whitener Pen",8.0),
    ("ST44","Deli Correction Whitener Pen Easy Uncapping",2.12),
    ("ST45","Pentel Correction Whitener Pen",16.25),
    ("ST46","Fis Correction Whitener Pen 12Pc",15.0),
    ("ST47","Scotch Household Scissors 8inches Red",6.62),
    ("ST48","Scotch Muti-Purpose Scissor 6inches Red",5.01),
    ("ST49","Deli Scissors Polished Blade",3.45),
    ("ST50","Faber-Castell Student Scissors 3Pc",7.20),
    ("ST51","Faber-Castell Kinder Scissor with Plastic Blade",5.0),
    ("ST52","Livingo Small School Scissors 5Pc",36.99),
    ("ST53","Livingo 2Pc 8inches Titanium Non-Stick Stainless Steel",59.99),
    ("ST54","Livingo Premium Tailor Scissors",65.99),
    ("ST55","Scissors Professional Super Sharp Tailor",15.0),
    ("ST56","Fiskars Razor Edge Scissors 8inches",90.02),
    ("ST57","Tailor Scissors Professional 10.5inches",18.50),
    ("ST58","GVTECH 40x30cm Double Sided Whiteboard",19.99),
    ("ST59","White Board 60x90cm Whiteboard",89.99),
    ("ST60","Womdee Small Dry Erase Whiteboard",35.90),
    ("ST61","Maxi Double Sided A4 Whiteboard",15.0),
    ("ST62","Deli Whiteboard Eraser",3.36),
    ("ST63","Magnetic Whiteboard Eraser",12.99),
    ("ST64","Maxi Medium Magnetic White Board Eraser",4.0),
    ("ST65","Faber-Castell PVC-Free Eraser 16Pc",7.20),
    ("ST66","Faber-Castell PVC-Free Big Eraser Black 2Pc",4.75),
    ("ST67","Steadler Large Rasoplast Eraser 5Pc",19.75),
    ("ST68","Faber-Castell Dust_Free Eraser 6Pc",9.60),
    ("ST69","Raso Plast Eraser Box 30Pc",36.95),
    ("ST70","Steadler Rasoplast 3Pc",4.56),
    ("ST71","Manuscript Notebook 8mm Single Ruled A4 (210x297mm) 5Pc",52.94),
    ("ST72","Manuscript Notebook 8mm Single Ruled With Spiral A4 (210x297mm) 5Pc",47.34),
    ("ST73","Manuscript Notebook 8mm Single Ruled A4 (148x210mm) 5Pc",40.35),
    ("ST74","Manuscript Notebook 5mm Single Ruled With Spiral A4 (148x210mm) 5Pc",38.65),
    ("ST75","Manuscript Notebook 8mm Single Ruled A4 (210x330mm) 5Pc",66.25),
    ("ST76","Manuscript Notebook 8mm Single Ruled A4 100pages",29),
    ("ST77","Maxi Register Book A4",13.0),
    ("ST78","Password Code Locked Notebook Business Premium Leather Diary",29.99),
    ("ST79","Soft Touch Hardcover Notebook",18.0),
    ("ST80","2021 Diary",25.36),
    ("ST81","2022 Diary",25.36),
    ("ST82","Faber-Castell Drawing Book A4 36 Sheets",5.0),
    ("ST83","Cartidge Sketch Pad Drawing Book A4",3.75),
    ("ST84","Deli Sketchbook Spiral Bound A4 40 Sheets",21.77),
    ("ST85","Avengers Coloring Book Kids",15.32),
    ("ST86","Disney Frozen 2 Coloring Book Kids",17.79),
    ("ST87","UHU Stic 8.2g 3Pc",7.80),
    ("ST88","UHU Super Glue Control 3g",4.0),
    ("ST89","Deli White Glue Washable Glue",3.78),
    ("ST90","Deli Super Glue 3gm",1.20),
    ("ST91","Faber-Castell White Glue 250ml",5.60),
    ("ST92","Faber-Castell White Glue 480ml",10.0),
    ("ST93","Elmer's Clear Washable Liquid Glue",27.75),
    ("ST94","Scola Washable Glue 5 Litre",49.78),
    ("ST95","Gorilla Super Glue 3g",28.25),
    ("ST96","Bosch Glue Gun",109.06),
    ("ST97","Mini Hot Glue Gun with 50Pc Glue Stick",30.0),
    ("ST98","Skeido Hot Glue Gun with 12Pc Glue Stick",18.99),
    ("ST99","Supvox 100Pc A4 Color Paper",16.0),
    ("ST101","Double A A4 Printer Copy Paper 500 Pages",17.60),
    ("ST102","Double A A4 Printer Copy Paper 100 Pages",5.50),
    ("ST103","High Plus Premium Quality Paper 500 Pages",47.99),
    ("ST104","12 Pockets Expanding File A4 organizer",18.90),
    ("ST105","10-Piece FIS Rado Box File 8cm",48.25);

-- story_book -----------------------------------------------;

    create table story_book(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    ("SB00","Harry Potter And The Philosofer's Stone Book",29.99),
    ("SB00","Harry Potter And The Chamber Of Secrets Book",26.65),
    ("SB00","Harry Potter And The Prisoner Of Azkaban",22.32),
    ("SB00","Harry Potter And The Goblet Of Fire",27.32),
    ("SB00","Harry Potter And The Order Of The Pheonix",25.55),
    ("SB00","Harry Potter And The Half Blood Prince",23.32),
    ("SB00","Harry Potter And The Dethly Hallows",27.32),
    ("SB00","Harry Potter And The Cursed Child",28.25),
    ("SB00","Percy Jackson And The Olympians Book 1 The Lighting Theif",38.99),
    ("SB00","Percy Jackson And The Olympians Book 2 The Sea Of Monsters",29.99),
    ("SB00","Percy Jackson And The Olympians Book 3 The Titan's Curse",32.51),
    ("SB00","Percy Jackson And The Olympians Book 4 The Battle Of The Laybirth",29.68),
    ("SB00","Percy Jackson And The Olympians Book 5 The Last Olympian",30.37),
    ("SB00","The Alchemist - Paulo Caelho",28.51),
    ("SB00","Sherlock Holmes Volume I",26.07),
    ("SB00","Sherlock Holmes Volume II",22.37),
    ("SB00","Hamley - William Shakespeare",22.78),
    ("SB00","Macbeth - William Shakespeare",35.0),
    ("SB00","Romeo And Juliet - William Shakespeare",24.96),
    ("SB00","Diary Of A Wimpy Kid Book 1",24.09),
    ("SB00","Diary Of A Wimpy Kid: Rodrick Rules Book 2",24.23),
    ("SB00","Diary Of A Wimpy Kid: The Last Straw Book 3",25.36),
    ("SB00","Diary Of A Wimpy Kid: The Dog Days Book 4",27.23),
    ("SB00","Diary Of A Wimpy Kid: The Ugly Truth Book 5",23.69),
    ("SB00","Diary Of A Wimpy Kid: Cabin Fever Book 6",),
    ("SB00","Diary Of A Wimpy Kid: The Third Wheel Book 7",22.84),
    ("SB00","Diary Of A Wimpy Kid: Hard Luck Book 8",23.95),
    ("SB00","Diary Of A Wimpy Kid: The Long Haul Book 9",24.01),
    ("SB00","Diary Of A Wimpy Kid: Old School Book 10",24.21),
    ("SB00","Diary Of A Wimpy Kid: Double Down Book 11",27.41),
    ("SB00","Diary Of A Wimpy Kid: The Getaway Book 12",26.39),
    ("SB00","Diary Of A Wimpy Kid: The Meltdown Book 13",29.88),
    ("SB00","Diary Of A Wimpy Kid: Wrecking Ball Book 14",37.19),
    ("SB00","Diary Of A Wimpy Kid: The Deep End Book 15",34.76),
    ("SB00","Diary Of A Wimpy Kid: Big Shot Book 16",53.94),
    ("SB00","A Promised Land - Barack Obama",160.0),
    ("SB00","Roald Dahl Charlie And The Chocolate Factory",23.56),
    ("SB00","Roald Dahl George's Marvellous Medicine",25.13),
    ("SB00","Roald Dahl Charlie And The Great Glass Elevator",28.09),
    ("SB00","Roald Dahl James And The Giant Peach",23.31),
    ("SB00","Roald Dahl The Magic Finger",26.03),
    ("SB00","Roald Dahl The BFG",28.09),
    ("SB00","Roald Dahl Fantastic Mr Fox",25.75),
    ("SB00","Roald Dahl Billy And The Minpins",27.36),
    ("SB00","Roald Dahl The Twits",22.53),
    ("SB00","Roald Dahl Matilda",25.36),
    ("SB00","Roald Dahl The Witches",28.09),
    ("SB00","Dork Diaries",29.0),
    ("SB00","Dork Diaries: Party Time",29.0),
    ("SB00","Dork Diaries: Pop Star ",29.0),
    ("SB00","Dork Diaries: How to Dork Your Diary",21.0),
    ("SB00","Dork Diaries: Skating Sensation",27.0),
    ("SB00","Dork Diaries: Dear Dork",28.36),
    ("SB00","Dork Diaries: Holiday Heartbreak",30.0),
    ("SB00","Dork Diaries: TV Star "29.0,),
    ("SB00","Dork Diaries: Once Upon a Dork",31.93),
    ("SB00","Dork Diaries: Drama Queen",29.20),
    ("SB00","Dork Diaries: Puppy Love",29.0),
    ("SB00","Dork Diaries: Frenemies Forever",31.93),
    ("SB00","Dork Diaries: Crush Catastrophe",29.0),
    ("SB00","Dork Diaries: Birthday Drama",31.95),
    ("SB00","Dork Diaries: Spectacular Superstar",31.93),
    ("SB00","Dork Diaries: I Love Paris!",32.56),
    ("SB00","",);

-- gaming_console -------------------------------------------;

    create table gaming_console(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    ("GS01","Sony Playstation 5 Console Standard Edition White",3030.00),
    ("GS02","Sony Playstation 5 Console Standard Edition Black",3030.00),
    ("GS03","Sony Playstation 4 Slim 500GB",1476.0),
    ("GS04","Sony Playstation 4 1TB",1805.0),
    ("GS05","Xbox Series X",2478.0),
    ("GS06","Nintendo Switch",1201.47),
    ("GS07","Nintendo Switch Lite",715.0);
    
-- game_cds -------------------------------------------------;

    create table game_cds(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    ("GC01","PS5-Fortnite: The Last Laugh",115.00),
    ("GC02","PS5-The Pathless",201.95),
    ("GC03","PS5-Control Unlimited Edition",145.00),
    ("GC04","PS5-Spider-Man: Miles Morales",145.56),
    ("GC05","PS5-Assassin's Creed Valhalla",152.25),
    ("GC06","PS5-Mortal Kombat 11 Ultimate",117.95),
    ("GC07","PS5-DiRT 5 Day 1 Edition",148.00),
    ("GC08","PS5-Hitman 3",161.00),
    ("GC09","PS5-Marvel Avengers",160.00),
    ("GC10","PS5-Ghost Of Tsushima Director's Cut",305.0),
    ("GC11","PS5-Tom Clancy's Rainbow Six Siege Deluxe Edition",98.41),
    ("GC12","PS5-Watch Dogs: Legion",149.0),
    ("GC13","PS5-Ranchet & Clank: Rift Apart With DLC",279.0),
    ("GC14","PS5-Just Dance 2021",131.92),
    ("GC15","PS5-WRC 9",165.03),
    ("GC16","PS5-Star Wars Jedi: Fallen Order",166.62),
    ("GC17","PS5-Maneater",78.45),
    ("GC18","PS5-Immortals Fenyx Rising",121.03),
    ("GC19","PS5-Monster Truck Championship",132),
    ("GC20","PS5-Hades",120.49),
    ("GC21","PS5-Tennis World Tour 2 Complete Edition",160.30),
    ("GC22","PS5-Ride 4",69.32),
    ("GC23","PS5-NBA 2K21",99.00),
    ("GC24","PS5-Call Of Duty Black Ops Cold War",290.0),
    ("GC25","PS5-Godfall: Deluxe Edition",364.27),
    ("GC26","PS5-Battlefield 2042",299.00),
    ("GC27","PS5-Sackboy: A Big Adventure",176.0),
    ("GC28","PS4-FIFA 21",73.35),
    ("GC29","PS4-Tom Clancy's Ghost Recon Breakpoint",35.0),
    ("GC30","PS4-The Crew 2",59.19),
    ("GC31","PS4-Call Of Duty Black Ops 4",43.10),
    ("GC32","PS4-Need For Speed Rivals",60.27),
    ("GC33","PS4-Spider-Man",76.39),
    ("GC34","PS4-LEGO The Increadibles",61.99),
    ("GC35","PS4-Spider-Man: Miles Morales",159.99),
    ("GC36","PS4-Uncharted: Thief's End",38.00),
    ("GC37","PS4-Tom Clancy's The Division 2",48.41),
    ("GC38","PS4-LEGO Marvel Super Heros",65.29),
    ("GC39","PS4-Ghost Of Tsushima",115.00),
    ("GC40","PS4-Minecraft",90.38),
    ("GC41","PS4-Mortal Kombat 11",82.35),
    ("GC42","PS4-Tekken 7",56.02),
    ("GC43","PS4-Last Of Us Remastered",60.31),
    ("GC44","PS4-Destiny 2",40.21),
    ("GC45","PS4-Marvel's Avengers",101.66),
    ("GC46","PS4-Little Nightmare",70.00),
    ("GC47","PS4-FIFA 20",64.00),
    ("GC48","PS4-Watch Dogs 2",57.26),
    ("GC49","PS4-LEGO Jurassic World",61),
    ("GC50","PS4-Minecraft Dungeons",97.36),
    ("GC51","XBOX-Hitman 3",210.0),
    ("GC52","XBOX-Call Of Duty: Black Ops Cold War",241.02),
    ("GC53","XBOX-FIFA 21",172.0),
    ("GC54","XBOX-Resident Evil Village",229.0),
    ("GC55","XBOX-Just Dance 2021",125.53),
    ("GC56","XBOX-Assassin's Creed Valhalla",98.05),
    ("GC57","XBOX-The Dark Pictures: Little Hopes",84.78),
    ("GC58","XBOX-NBA 2K21",49.99),
    ("GC59","XBOX-Crash Bandicoot 4 It's About Time",205.88),
    ("GC60","XBOX-Cyberpunk 2077",138.0),
    ("GC61","XBOX-Outriders",137.33),
    ("GC62","Nintendo Switch-Super Smash Bro's Ultimate",187.61),
    ("GC63","Nintendo Switch-The Legend Of Zelda Breath Of The Wild",198.49),
    ("GC64","Nintendo Switch-Sonic Forces",104.0),
    ("GC65","Nintendo Switch-LEGO Jurassic World",98.90),
    ("GC66","Nintendo Switch-Minecraft",104.97),
    ("GC67","Nintendo Switch-Super Mario 3D World",104.97),
    ("GC68","Nintendo Switch-Animal Crossing New Horizon",187.68),
    ("GC69","Nintendo Switch-Crash Bandicoot 4 It's About Time",186.45),
    ("GC70","Nintendo Switch-Rayman Legends: Definitive",85.37),
    ("GC71","Nintendo Switch-Mario Kart 8",187.95),
    ("GC72","Nintendo Switch-Marvel Superheroes 2",99.42),
    ("GC73","Nintendo Switch-Pokemon Sheild",187.00),
    ("GC74","Nintendo Switch-Minecraft Dungeons",98.0),
    ("GC75","Nintendo Switch-Just Dance 2021",126.0);

-- sports ---------------------------------------;

    create table sports(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    ("SP01","Premiere League Football Blue",49.99),
    ("SP02","Premiere League Football Red",49.99),
    ("SP03","Synplay Machine Stich Football",29.00),
    ("SP04","Vector X Men England Football",20.46),
    ("SP05","Vector X Men Football Green-Black",0),
    ("SP06","Synplay Rubber Football Black",26.00),
    ("SP07","Football Goal Post For Children",135.00),
    ("SP08","Nivia 742 Raptor Torrido Football Goalkeeper Gloves",44.18),
    ("SP09","Nivia 642 Ditmar Spider Goalkeeper Gloves",43.50),
    ("SP10","Puma Unisex One Grip Goalkeeper Gloves",61.57),
    ("SP11","Justdolife Kids Cricket Set",16.55),
    ("SP12","Pro Impact Classic Kashmir Cricket Bat",270.0),
    ("SP13","SG Scorer Classisc Kashmir Willow Cricket Bat",82.83),
    ("SP14","SG Max Cover Kashmir Willow Cricket Bat",86.25),
    ("SP15","Sportaxis Premium Cricket Bat",175.06),
    ("SP16","DS Cricket Wind-Ball - Yellow",15.0),
    ("SP17","Gray Nicolls Club Cricket Ball",37.0),
    ("SP18","Dawnson Sport Cricket Wind-Ball",19.0),
    ("SP19","DSC Premium Complete Kit With Helmet Cricket Mens",398.0),
    ("SP20","Gray Nicolls Cricket Wicket Keeping Glovs Cotton White",34.18),
    ("SP21","DSC Condor Atoms Leather Cricket Wicket Keeping Gloves",106.70),
    ("SP22","GM Siren Cricket Wicket Keeping Gloves",49.84),
    ("SP23","Cricket Stumps With Spring 28 inches",73.20),
    ("SP24","Cricket Stumps With Wood Base",47.00),
    ("SP25","Cricket Stumps With Metal Base Spring STand 28 inches",70.00),
    ("SP26","Pro Impact Cricket Stumps",240.0),
    ("SP27","GM Spring Cricket Stumps Set",130.87),
    ("SP28","Wilson Tennis Racket Fusion XL Red-Black",130.63),
    ("SP29","Dawson Sports Unisex Adult Tennis Racket",69.00),
    ("SP30","Dunlop For All Court Tennis Balls 3Pc",24.24),
    ("SP31","Wilson Champ Extra Duty Tennis Balls",35.0),
    ("SP32","Head Radical Tennis Balls 12Pc",63.47),
    ("SP33","2 Table Tennis Racket Set Solid Wood With 3 Balls",19.0),
    ("SP34","Stiga Pure Advanced Table Tennis Racket",117.69),
    ("SP35","Retractable Adjustable Table Tennis Nets Post Set",29.55),
    ("SP36","Steel Table Tennis Table International Standard Size",699.0),
    ("SP37","Stansom Professional Foldable Table Tennis Table",1495.0),
    ("SP38","Badminton Set Including 2 Shuttlecock and 2 Badminton",23.9),
    ("SP39","Yonex Badminton Racket Blue-White",93.75),
    ("SP40","Yonex 2 Racket With 2 SHuttlecock Blue",110.0),
    ("SP41","Dorsa Outdoor Light Weight Badminton Racket Set",27.34),
    ("SP42","Yonex 4 Player Badminton Set",189.0),
    ("SP43","Yonex Nano Flare Badminton Racket Turquoise-Black",168.0),
    ("SP44","Delee Portable Badminton Net",102.77),
    ("SP45","Carlton Unisex Shuttlecock",21.92),
    ("SP46","Yonex Mavis 2000 Nylon Badminton Shuttlcock",57.48),
    ("SP47","Dunlop Carlton Badminton Shuttlecock 6Pc",30.45),
    ("SP48","Spalding NBA Gold Series Basketball Size 7",106.73),
    ("SP49","Spalding NBA Silver Series Basketball Size 7",63.50),
    ("SP50","Spalding NBA Gold Series Basketball SIze 7",58.89),
    ("SP51","Spalding NBA Neverflat Basketball",153.06),
    ("SP52","NBA Graffiti Size 7 Rubber Basketball",59.32),
    ("SP53","Spalding NBA Basketball Hoop",4119.0),
    ("SP54","Adjustable 160cm Kids Basketball Hoop Set",50.98),
    ("SP55","Idealt Children Standing Basketball Hoop",178.0),
    ("SP56","Spalding Extreme Pro Wave Volleyball",59.0),
    ("SP57","Legend Volleyball",44.99),
    ("SP58","Mikasa Beach Volleyball",284),
    ("SP59","Wilson Super Soft Play Volleyball",76.90),
    ("SP60","Volleyball Net Portable 9.5x1m",99.75);

-- indoor_games ---------------------------------------;

    create table indoor_games(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    ("IG00","Berry Wooden Tradistional Chess Game",59.99),
    ("IG00","Blessing Decor Collecrible Sovient Metal Brass Chess",1088.58),
    ("IG00","Festnight Portable Wooden Magnetic Chess Game",78.0),
    ("IG00","Radical 15 inches Large Handmade White-Green Onyx Chess Game",489.0),
    ("IG00","Umbra Wobble Chess Set",650.52),
    ("IG00","Amerous Magnetic Wooden Chess Set",89.46),
    ("IG00","Rubix's Cube 3x3",41.87),
    ("IG00","Spped Cube 2x2",0),
    ("IG00","",0),
    ("IG00","",0),
    ("IG00","",0),
    ("IG00","",0),
    ("IG00","",0),
    ("IG00","",0),
    ("IG00","",0),
    ("IG00","",0),
    ("IG00","",0),
    ("IG00","",0),
    ("IG00","",0),
    ("IG00","",0),
    ("IG00","",0),
    ;

-- .r

-- .r 
-- accounts-------------------------------------------------------;
    create table accounts(
        Email_ID varchar(50) primary key,
        Info varchar(7999)
    );


-- cart-----------------------------------------------------------;
    create table cart(
        Product_ID char(4),
        Product_Name varchar(50),
        Price decimal(10,2),
        Quantity int
    );

-- .y
