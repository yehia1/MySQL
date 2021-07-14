CREATE DATABASE resturant; #crearting the data base
USE resturant; #make it active
create TABLE RLIST( #create table inside our database 
num INT NOT NULL, # putting our columns and making sure it's not null
RNAME varchar(216) NOT NULL,
address varchar(216)NOT NULL,
icnome int NOT NULL,
primary key(num) # making the num our primary key 
); 

CREATE TABLE menu( #create another table inside our database 
num int not null,
meals varchar(216) not null,
mealtype varchar(216) not null,
price int not null,
primary key(num),
rnum int not null,
foreign key(rnum) references RLIST(num) #connecting the 2 tables together using the foreign key num 
);

