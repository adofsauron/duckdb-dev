
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


