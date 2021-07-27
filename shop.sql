drop database shop;
create database shop;
use shop;

-- snacks---------------------------------------------------------;

    create table snacks(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into snacks values
    ("SN01","Lays Chilli",0.0),
    ("SN02","Lays Salt",0.0),
    ("SN03","Lays Tomato Ketchup",0.0),
    ("SN04","Cheetos Flamming Hot",0.0),
    ("SN05","Cheetos Cheese",0.0),
    ("SN06","Dorittos",0.0),
    ("SN07","Sunbites",0.0),
    ("SN08","Pringles",0.0);

-- fruits---------------------------------------------------------;

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
    ("FR10","Watermelon",0.0);

-- veg------------------------------------------------------------;

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
    ("VE09","Cocunut",0.0),
    ("VE10","Garlic",0.0),
    ("VE11","Broccoli",0.0);

-- fish-----------------------------------------------------------;

    create table fish(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into fish values
    ("FI01","Sardines",0.1),
    ("FI02","Prawns",0.23),
    ("FI03","Salmon",0.17),
    ("FI04","Sheri",0.15);

-- bakery---------------------------------------------------------;

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
    ("BA07","Veg Puffs",0.0),
    ("BA08","Chicken Puffs",0.0),
    ("BA09","Egg Puffs",0.0),
    ("BA10","Chicken Cutlet",0.0),
    ("BA11","Veg Cutlet",0.0),
    ("BA12","Bread",0.0),
    ("BA13","Biscut",0.0),
    ("BA14","Cupcakes",0.0);

-- drinks---------------------------------------------------------;

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
    ("DR17","Almarai Milk 2 l",0.0);

-- medicine-------------------------------------------------------;

    create table medicine(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into medicine values
    ("ME01","Hansaplast Plastic Bandage",0.0),
    ("ME02","Hansaplast Aqua Protector Bandage",0.0),
    ("ME03","Baby Ointment",0.0);

-- utensils-------------------------------------------------------;

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
    ("UT08","Cutlery WoELen Block",0.0),
    ("UT09","Steel Spoons",0.0),
    ("UT10","Steel Turner",0.0),
    ("UT11","Apple Slicer",0.0),
    ("UT12","Melon Slicer",0.0);

-- computers------------------------------------------------------;

    create table computers(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into computers values
    ("CO01","Apple Macbook Air 2020",0.0),
    ("CO02","Dell XPS",0.0),
    ("CO03","Acer Aspire",0.0),
    ("CO04","Asus Notebook",0.0),
    ("CO05","Lenovo Yoga",0.0),
    ("CO06","HP Envy",0.0),
    ("CO07","Microsoft Surface",0.0),
    ("CO08","Microsoft Surface Pro",0.0);

-- phones---------------------------------------------------------;

    create table phones(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into phones values
    ("PH01","Vivo",0.0),
    ("PH02","Apple Iphone 12",0.0),
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
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

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
    ("TV09","Philips Smart TV 4K UHD",0.0);
    
-- toys-----------------------------------------------------------;

    create table toys(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal(10,2)
    );

    insert into toys values
    ("TO01","Engineering Truck Ser",0.0),
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


-- .r 

