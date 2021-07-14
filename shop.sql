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

    select * from snacks;

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

    select * from fruits;

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

    select * from veg;

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
    
    select * from fish;

-- bakery---------------------------------------------------------;

    create table bakery(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal
    );

    insert into bakery values
    ();

-- drinks---------------------------------------------------------;

    create table drinks(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal
    );

    insert into drinks values
    ();

-- medicine-------------------------------------------------------;

    create table medicine(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal
    );

    insert into medicine values
    ();

-- utensils-------------------------------------------------------;

    create table utensils(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal
    );

    insert into utensils values
    ();

--computers------------------------------------------------------;

    create table computers(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal
    );

    insert into computers values
    ();

-- phones---------------------------------------------------------;

    create table phones(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal
    );

    insert into phones values
    ();

-- other_devices--------------------------------------------------;

    create table other_devices(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal
    );

    insert into other_devices values
    ();

-- tvs------------------------------------------------------------;

    create table tvs(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal
    );

    insert into tvs values
    ();
    
-- toys-----------------------------------------------------------;

    create table toys(
        ID char(4) primary key,
        Name varchar(50),
        Price decimal
    );

    insert into toys values
    ();




