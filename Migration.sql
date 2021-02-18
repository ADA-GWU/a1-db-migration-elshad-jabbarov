/* Migration */ 

alter table students
rename column st_id to student_id;

alter table students
ALTER COLUMN st_last  type   varchar(30),
 ALTER COLUMN st_name  type  varchar(30);

create table interests_new as
(select n.student_id, array_agg(n.interest) as interests
 from interests n group by n.student_id order by n.student_id asc );

alter table interests_new 
add CONSTRAINT interests_student_id_fkey 
foreign key (student_id) references students(student_id);

alter table interests rename to interests_old;

alter table interests_new rename to interests;
----------------------------------------------