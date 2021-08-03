drop database shop;
create database shop;
use shop;

--| snacks |---------------------------------------------------------;

    create table snacks(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into snacks values
    ("SN01","Lays Chilli",0.0),
    ("SN02","Lays Salted",0.0),
    ("SN03","Lays Tomato Ketchup",0.0),
    ("SN04","Cheetos Flamming Hot",0.0),
    ("SN05","Cheetos Cheese",0.0),
    ("SN06","Dorittos",0.0),
    ("SN07","Sunbites",0.0),
    ("SN08","Pringles",0.0)
    ("SN09","Tiffany Finns Chips",0.0),
    ("SN10","Tiffany Dlight Choc Chips",10.99),
    ("SN11","Britannia Marie Gold",10.99),
    ("SN12","Britannia Milk Rusk",9.99),
    ("SN13","Britannia Wheat Rusk",9.99),
    ("SN14","Britannia Bourbn Cream",9.99),
    ("SN15","Tiffany Cookie Monsta Mini",8.99),;

--| fruits |---------------------------------------------------------;

    create table fruits(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into fruits values
    ("FR01","Green Apple",0.0),
    ("FR02","Red Apple",0.0),
    ("FR03","Orange",0.0),
    ("FR04","Lemon",0.0),
    ("FR05","Mango",0.0),
    ("FR06","Pineapple",0.0),
    ("FR07","Banana",0.0),
    ("FR08","Kiwi",0.0),
    ("FR09","Dates",0.0),
    ("FR10","Litchi",0.0),
    ("FR11","Pomegranate",0.0),
    ("FR12","Avocado",0.0),
    ("FR13","strawberry",0.0),
    ("FR14","Grapes",0.0),
    ("FR15","Papaya",0.0),
    ("FR16","Guava",0.0),
    ("FR17","Coconut",0.0),
    ("FR18","Watermelon",0.0),
    ("FR19","Blackberry",0.0),
    ("FR20","Blueberry",0.0),
    ("FR21","Cherry",0.0),
    ("FR22","Fig",0.0),
    ("FR23","Jackfruit",0.0),
    ("FR24","Raspberry",0.0),;

--| veg |------------------------------------------------------------;

    create table veg(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into veg values
    ("VE01","Red Chilli",0.0),
    ("VE02","Green Chilli",0.0),
    ("VE03","Green Capsicum",0.0),
    ("VE04","Red Capsicum",0.0),
    ("VE05","Onion",0.0),
    ("VE06","Tomato",0.0),
    ("VE07","Potato",0.0),
    ("VE08","Cucumber",0.0),
    ("VE09","Cabbage",0.0),
    ("VE10","Garlic",0.0),
    ("VE11","Ginger",0.0),
    ("VE12","Carrot",0.0),
    ("VE13","Eggplant",0.0),
    ("VE14","Yellow Pumbkin",0.0),
    ("VE15","White Pumbkin",0.0),
    ("VE16","Radish",0.0),
    ("VE17","Broccoli",0.0),
    ("VE18","Pea",0.0),
    ("VE19","Sweet Potato",0.0),
    ("VE20","Mushroom",0.0),
    ("VE21","Spinach",0.0),
    ("VE22","Kale",0.0),
    ("VE23","Green Beans",0.0),
    ("VE24","Lettuce",0.0),
    ("VE25","Bitter Gourd",0.0),
    ("VE26","Coriander Leaves",0.0),
    ("VE27","Curry Leaves",0.0),
    ("VE28","Beetroot",0.0),
    ("VE29","Olives",0.0);

--| fish |-----------------------------------------------------------;

    create table fish(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into fish values
    ("FI01","Sardines",0.1),
    ("FI02","Prawns",0.23),
    ("FI03","Salmon",0.17),
    ("FI04","Sheri",0.15),
    ("FI05","Tuna 1kg",9.99),
    ("FI06","Seema 1kg",13.99),

--| bakery |---------------------------------------------------------;

    create table bakery(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into bakery values
    ("BA01","Veg Samosa",0.0),
    ("BA02","Chicken Samosa",0.0),
    ("BA03","Punjabi Samosa",0.0),
    ("BA04","Choco Cream Cake",0.0),
    ("BA05","Dark Choco Cream Cake",0.0),
    ("BA06","White Cream Cake",0.0),
    ("BA07","Black Forest Cake",0.0),
    ("BA08","White Forest Cake",0.0),
    ("BA09","Red Velvet Cake",0.0),
    ("BA10","Honey Cake",0.0),
    ("BA11","Veg Puffs",0.0),
    ("BA12","Chicken Puffs",0.0),
    ("BA13","Egg Puffs",0.0),
    ("BA14","Chicken Cutlet",0.0),
    ("BA15","Veg Cutlet",0.0),
    ("BA16","Bread",0.0),
    ("BA17","Milk Bread",0.0),
    ("BA18","Brown Bread",0.0),
    ("BA19","Biscut",0.0),
    ("BA20","Cupcakes",0.0)
    ("BA21","Mini Doughnuts 12s",9.50),;

--| drinks |---------------------------------------------------------;

    create table drinks(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into drinks values
    ("DR01","Red Bull Energy Drink 355 ml",0.0),
    ("DR02","Red Bull Energy Drink 250 ml",0.0),
    ("DR03","Lancor Mango Juice 180 ml",0.0),
    ("DR04","Lancor Apple Juice 180 ml",0.0),
    ("DR05","Lancor Choclate Milk 180 ml",0.0),
    ("DR06","Bottled Drinking Water 500 ml",0.0),
    ("DR07","Bottled Drinking Water 1.5 L",0.0),
    ("DR08","Mountain Dew 155 ml",0.0),
    ("DR09","Seven Up 155 ml",0.0),
    ("DR10","Pepsi 155 ml",0.0),
    ("DR11","Sprite 330 ml",0.0),
    ("DR12","Al Rawabi Milk 500 ml",0.0),
    ("DR13","Al Rawabi Milk 1 L",0.0),
    ("DR14","Al Rawabi Milk 2 L",0.0),
    ("DR15","Almarai Milk 500 ml",0.0),
    ("DR16","Almarai Milk 1 L",0.0),
    ("DR17","Almarai Milk 2 l",0.0)
    ("DR18","Fresh Apple Juice 500ml",0.0)
    ("DR19","Fresh Watermelon Juice 500ml",0.0)
    ("DR20","Fresh Mango Juice 500ml",0.0)
    ("DR21","Fresh Lemonade 500ml",0.0)
    ("DR22","Fresh Sugarcane Juice 500ml",0.0);

--| medicine |-------------------------------------------------------;

    create table medicine(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into medicine values
    ("ME01","Hansaplast Plastic Bandage",0.0),
    ("ME02","Hansaplast Aqua Protector Bandage",0.0),
    ("ME03","Baby Ointment",0.0);

--| utensils |-------------------------------------------------------;

    create table utensils(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into utensils values
    ("UT01","Insulated Plastic Flask",0.0),
    ("UT02","Measuring Cup",0.0),
    ("UT03","Iron Fry Pan",0.0),
    ("UT04","Stainless Steal Saucepan",0.0),
    ("UT05","Coffee Maker",0.0),
    ("UT06","Dinner Plate",0.0),
    ("UT07","Plastic Plates",0.0),
    ("UT08","Cutlery Wooden Block",0.0),
    ("UT09","Steel Spoons",0.0),
    ("UT10","Steel Turner",0.0),
    ("UT11","Apple Slicer",0.0),
    ("UT12","Melon Slicer",0.0)
    ("UT13","Prestige Cookware Set 7 pc",199.0),;

--| computers |------------------------------------------------------;

    create table computers(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into computers values
    ("CO01","Apple Macbook Air 2020",0.0),
    ("CO02","Dell XPS",0.0),
    ("CO03","Acer Aspire 3",0.0),
    ("CO04","Asus Notebook",0.0),
    ("CO05","Lenovo Yoga",0.0),
    ("CO06","HP Envy",0.0),
    ("CO07","Microsoft Surface",0.0),
    ("CO08","Microsoft Surface Pro",0.0),
    ("CO06","Lenovo Flex 5",0.0)
    ("CO06","Lenovo Ideapad Gaming 3",0.0),
    ("CO07","Asus Notebook X515",1799.0),
    ("CO08","Lenovo Notebook Ideapad 3",2499.0),
    ("CO09","Huawei Notebook D14",2499.0),
    ("CO10","Acer Notebook Nitro 5",3999.0),
    ("CO11","Lenovo Notebook Legion 5",4799.0);

--| phones |---------------------------------------------------------;

    create table phones(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into phones values
    ("PH01","Vivo",0.0),
    ("PH02","Apple Iphone 12",0.0),
    ("PH03","Apple Iphone 12 Pro Max",0.0),
    ("PH04","Apple Iphone 11",0.0),
    ("PH05","Apple Iphone 11 Pro Max",0.0),
    ("PH06","Apple Iphone X",0.0),
    ("PH07","Samsung Galaxy S21 Ultra",0.0),
    ("PH08","Samsung Galaxy S21+",0.0),
    ("PH09","Samsung Galaxy S21",0.0),
    ("PH10","Samsung Galaxy S20 Ultra",0.0),
    ("PH11","Samsung Galaxy S20",0.0),
    ("PH12","Samsung Galaxy Note 20 Ultra",0.0),
    ("PH13","Samsung Galaxy Note 20",0.0),
    ("PH14","Samsung Galaxy Note 10 Ultra",0.0),
    ("PH15","Samsung Galaxy Note 10",0.0),
    ("PH16","Samsung Galaxy Note 8",0.0),
    ("PH17","Nokia X10",0.0),
    ("PH18","One Plus 9 Pro",0.0),
    ("PH19","One Plus 9",0.0),
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
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

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

    create table tvs(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into tvs values
    ("TV01","LG Smart TV 8K",0.0),
    ("TV02","LG Smart TV 8K",0.0),
    ("TV03","Samsung Smart TV 8K QLED",0.0),
    ("TV04","Samsung Smart TV 4K SUHD",0.0),
    ("TV05","Samsung Smart TV 4K Curved",0.0),
    ("TV06","Samsung Smart TV 4K UHD",0.0),
    ("TV07","Sony TV 8K SUHD",0.0),
    ("TV08","Sony TV 4K UHD",0.0),
    ("TV09","Philips Smart TV 4K UHD",0.0)
    ("TV10","TCL UHD Android TV 75P718",7604.0),
    ("TV11","TCl UHD Android TV 50P618",1749.0),
    ("TV12","Samsung UHD TV",0.0),
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
    ("MI09","Almarie Milk 1L",0.0),
    ("MI10","Almarine Milk 1L Low Fat",0.0),
    ("MI11","Al Rawabi Milk 1L",0.0),
    ("MI12","Al Rawabi Milk 1L Low fat",0.0),
    ("MI13","Almarie Milk 2L",0.0),
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

-- .r

