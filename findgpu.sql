drop database if exists findgpu;
create database findgpu;
use findgpu;

create table shop(
    code int not null primary key auto_increment,
    name int not null,
    address varchar(50),
    price decimal(45.99),
    quantity int(10),
    worktime datetime,
    delivery int not null,
    email varchar(50)
);

create table products(
    code int not null primary key auto_increment,
    name varchar(50),
    price decimal(45.99),
    quantity int(10),
    warranty int(2),
    serialnumber int(12),
    specification varchar(50) not null
);

create table delivery(
    code int not null primary key auto_increment,
    deliverytime datetime,
    name varchar(50),
    deliverytype varchar(50),
    deliverytracking varchar(50)
);

create table products_shop(
    code int not null primary key auto_increment,
    shop int not null,
    products int not null
);

alter table products_shop add foreign key (products) references products(code);
alter table products_shop add foreign key (shop) references shop(code);
alter table shop add foreign key (delivery) references delivery(code);

insert into shop (code,name,address,price,quantity,worktime,delivery,email)
values(null,'Links','Avenija Dubrovnik 14 10000 Zagreb','7999,99','15','Monday-Friday 08:00AM-08:00PM','Monday-Friday 09:00AM-05:00PM','ambienta@links.hr'),
values(null,'Ipon','Francia út. 40/b Budapest','10999,99','20','Monday-Friday 10:00AM-04:00PM','Monday-Friday 09:00AM-05:00PM','info@iponcomp.hr'),
values(null,'Ibyte','Andrije Hebraanga 9 21000 Zadar','13999,99','10','Monday-Friday 08:00AM-04:00PM','Monday-Friday 09:00AM-05:00PM','info@ibyte.hr'),
values(null,'Proxima Informatika','Stjepana Radića 15 44250 Petrinja','14869,99','5','Monday-Friday 08:00AM-08:00PM','Monday-Friday 09:00AM-05:00PM','petrinja@proxima-informatika.hr'),
values(null,'Futura IT','Donje Vrapče 53 10000 Zagreb','12599,99','24','Monday-Friday 09:00AM-02:00PM','Monday-Friday 09:00AM-04:00PM','info@futura-it.hr');

insert into products (code,name,price,quantity,warranty,serialnumber,specification)
values(null,'GeForce RTX 3080 Phantom+','13,999','7','24 months','877288762973','GDDR6X,10GB,320BIT,1755MHz'),
values(null,'Gigabyte RTX 3080 10GB GDDR6X GAMING OC','15,999','12','24 months','432665579396','GDDR6X,10GB,320BIT,1755MHz'),
values(null,'INNO3D GeForce RTX 3080 iChill Black LHR','13,769','31','24 months','843986642633','GDDR6X,10GB,320BIT,1440-1755MHz'),
values(null,'VGA Gigabyte GF RTX3080 AORUS X','14,599','4','24 months','894394772988','GDDR6X,10GB,320BIT,1755MHz'),
values(null,'INNO3D GeForce RTX 3080 iChill X4 10 GB GDDR6X LHR','13,999','9','24 months','429289563723','GDDR6X,10GB,320BIT,1770MHz');

