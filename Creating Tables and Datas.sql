/* Creating Tables. and inserting datas*/ 

CREATE TABLE STUDENTS (
st_id integer primary key,
st_name varchar(15),
st_last varchar(15)
);

create table interests (
student_id integer,
interest varchar(15),
foreign key (student_id) references students(st_id)
);

insert into students (st_id, st_name, st_last)
values(1,'Jasmine', 'Grant'),
(2,'Michael', 'Farrell'),
(3,'Owen', 'Taylor'),
(4,'Oscar', 'Smith'),
(5,'Alfred', 'Farrell');

insert into interests (student_id, interest)
values(1,'Tennis'),(1,'football'),(1,'Literature'),
(1,'Math'),(2,'Acroyoga'),(2,'Acting'),
(2,'rugby'),(4,'barre'),(4,'stretching'),
(4,'bowling'),(5,'surfing'),(5,'tennis'),
(5,'baseball'),(3,'Math'),(3,'Music'),
(2,'Football'),(1,'Chemistry'),(3,'Chess');