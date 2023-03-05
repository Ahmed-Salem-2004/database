create database if not exists Market;
use Market;
create table customers(
id int primary key not null,
firstname varchar(233) not null,
secondname varchar(233 ) not null,
city varchar(33) not null,
country varchar(44) default''
);
 create table products(
product_id int primary key not null,
product_name varchar(55) not null,
product_price decimal
);
create table orders (
order_number int primary key not null,
order_date date not null,
order_quantity int not null,
id int not null,
product_id int not null,
foreign key (id) references customers(id),
foreign key(product_id) references products(product_id)
);

