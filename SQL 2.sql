create database travel; #crearting the data base
use travel;  #make it active
create table planes(  #create table inside our database 
num integer primary key, #putting our columns and making sure it's not null
country_start char(25),
country_arrival char(25)
 );

# putting raw data in our table
insert into planes VALUES(5,'FRANCE','USA'); 
insert into planes VALUES(2,'FRANCE','CANDA');
insert into planes VALUES(20,'JAPAN','MEXICO');
insert into planes VALUES(12,'Russia','morroco');

select * from planes; # show the table we just made
select * from planes order by country_start; # order it alphbitcally bu the country_start column
select * from planes limit 3; #putting limit to the table

select country_start as 'start' from planes; #making country_start column as the start and use it only

create table ftype( # create another table inside our database 
num integer primary key,  #putting our columns and making sure it's not null
flight_type char(25) not null,
food_on_plane char(25)not null,
flight_number int not null,
foreign key (flight_number) references planes(num)  #connecting the 2 tables together using the foreign key num 
);

# putting raw data in our table
insert into ftype values('1','direct','yes','5');
insert into ftype values('2','direct','yes','2');
insert into ftype values('3','stop','yes','20');
insert into ftype values('4','2 stops','no','12');
select * from ftype; # showing the table

select * from planes
WHERE country_start like "%US%"; #showing the rows with us in it 
 
 # modifying the table which number 3 food on plane to no
 update ftype 
 set food_on_plane = 'no'
 where num = 3;

#logical conditions
select * from ftype
where food_on_plane like "%y%" and flight_type like "%st%";

select * from ftype
where food_on_plane like "%y%" or flight_type like "%st%";

# select rows from 1 to 3
select * from ftype
where num between 1 and 3 ;

delete from ftype where num = 4;

select * from planes 
left join ftype on planes.num = ftype.flight_number;