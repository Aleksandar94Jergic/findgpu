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