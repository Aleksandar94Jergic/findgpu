drop database if exists findgpu;
create database findgpu;
use findgpu;

create table shop(
    code int not null primary key auto_increment,
    name int not null,
    address varchar(50),
    worktime datetime,
    delivery int not null,
    email varchar(50)
);

create table products(
    code int not null primary key auto_increment,
    name int not null,
    price decimal(45.99),
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


alter table shop add foreign key (name) references products(code);
alter table products add foreign key (name) references delivery(code);
alter table shop add foreign key (delivery) references delivery(code);