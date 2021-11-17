create database Market
use Market
Create table Products 
(
Id INT IDENTITY PRIMARY KEY,
Name NVARCHAR(30) NOT NULL,
price int not null
)

create table Brands
(
Id INT IDENTITY PRIMARY KEY,
Name NVARCHAR(30) NOT NULL,
)
alter table  Products
ADD BrandsId INT CONSTRAINT FK_Faculties_BrandsIS FOREIGN KEY(BrandsId) REFERENCES Brands(Id) not null
insert into Brands
values
('simple products'),
('electromic products')

insert into  Products
values
('milk',3,1),
('1 kq rice',5,1),
('coca cola',4,1),
('IPhone 10',700,2),
('Acer turbo',800,2),
('Blomberg kondisoner',400,2),
('5 kq Sugar',9,1),
('Rotmons silver compact',3,1),
('Xiomi mi pods',30,2),
('Xiomi mi bands',50,2)
select * from Products
select * from Products where price>10
select * from Products where len(name)>5
select avg (price) from Products
select * from Products where price>(select avg(price) from Products)