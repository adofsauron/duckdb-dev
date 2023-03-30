
use memory;

create table b(b1 int, b2 varchar(2), primary key(b1)) ;
 
create table a(a1 int, a2 varchar(2), foreign key(a1) references b(b1)) ;
 
create table c(c1 int, c2 varchar(2)) ;
 
create table d(d1 int, d2 varchar(2)) ;

insert into a values(1, 'a1');
 
insert into a values(null, 'a2');
 
insert into a values(3, 'a3');
 
insert into b values(1, 'b1');
 
insert into b values(2, 'b2');
 
insert into b values(3, 'b3');
 
insert into c values(1, 'c1');
 
insert into c values(2, 'c2');
 
insert into c values(null, 'c3');
 
insert into d values(1, 'd1');
 
insert into d values(2, 'd2');

insert into d values(1, 'd3');
 
insert into d values(2, 'd4');
 
insert into d values(null, 'd5');


CREATE TABLE test_order (
 description VARCHAR(255),
 cost DECIMAL(19,4) NOT NULL,
 seat double
);

INSERT INTO test_order(description,cost,seat)
VALUES('Bicycle', 500.34, 400.34),('Seat',10.23, 9.23),('Break',5.21, 4.21);


CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  gender VARCHAR(10),
  score INT
);


INSERT INTO students VALUES
  (1, 'Tom', 18, 'Male', 90),
  (2, 'Alice', 20, 'Female', 88),
  (3, 'John', 19, 'Male', 85),
  (4, 'Lily', 21, 'Female', 92),
  (5, 'Bob', 19, 'Male', 87),
  (6, 'Marry', 22, 'Female', 88),
  (7, 'Tony', 20, 'Male', 89),
  (8, 'Lucy', 21, 'Female', 91),
  (9, 'Peter', 19, 'Male', 86),
  (10, 'Grace', 20, 'Female', 93);


