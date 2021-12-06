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

insert into shop (code,name,address,price,quantity,worktime,delivery,email),
values(null,'Links','Avenija Dubrovnik 14 10000 Zagreb','7999,99','15','Monday-Friday 08:00AM-08:00PM','Monday-Friday 09:00AM-05:00PM','ambienta@links.hr'),
values(null,'Ipon','Francia út. 40/b Budapest','10999,99','20','Monday-Friday 10:00AM-04:00PM','Monday-Friday 09:00AM-05:00PM','info@iponcomp.hr'),
values(null,'Ibyte','Andrije Hebraanga 9 21000 Zadar','13999,99','10','Monday-Friday 08:00AM-04:00PM','Monday-Friday 09:00AM-05:00PM','info@ibyte.hr'),
values(null,'Proxima Informatika','Stjepana Radića 15 44250 Petrinja','14869,99','5','Monday-Friday 08:00AM-08:00PM','Monday-Friday 09:00AM-05:00PM','petrinja@proxima-informatika.hr'),