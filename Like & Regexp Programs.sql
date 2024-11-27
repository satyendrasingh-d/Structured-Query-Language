# Question No. 01
create database Library;
use Library;
create table Books(Id int primary key auto_increment,
Title varchar(255),
Author varchar(100),
Year year,
genre varchar(100)
);

# Questio No. 02
insert into Books(Title, Author, Year, Genre)
values("The Great Gatsby","F.Scott Fitzgerald",1925,"Fiction"),
      ("Pride and Prejudice","Jane Austen",1913,"Romance"),
	  ("To Kill a Mockingbird","Harper Lee",1960,"Fiction"),
      ("1994","George Orwell",1949,"Dystopian"),
      ("Moby Dick","Herman Melville",1951,"Adventure");
      
# Questio No. 03
select * from Books where Title like 'T%';

# Question No. 04
select * from Books where Author like '%son';

# Question No. 05
select * from Books where Title like '%and%';

# Questio No. 06
select * from Books where Title like '%bird';

# Questio No. 07
select * from Books where Title regexp '^__$';

# Questio No. 08
select * from Books where Title regexp '[0-9]';

# Question No. 09
select * from Books where Author regexp '[A-J]';

# Questio No. 10
select * from Books where Genre regexp 'Fiction|Adventure$';

# Question No. 11
select * from Books where Title regexp '[A-Z]';

# Questio No. 12
select * from Books where Year between 1800 and 1950;

# Question No. 13
select * from Books where Author regexp'^__&';

# Questio No. 14
select * from Books where Author regexp 'p_&';

# Question No. 15
select * from Books where Title regexp '[!@#\$%&*]';


select * from books;