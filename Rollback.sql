/* Roll back the migration */ 
alter table interests rename to interests_off;

alter table interests_old rename to interests;

alter table students
rename column student_id to st_id;

alter table students
ALTER COLUMN st_last  type   varchar(15),
ALTER COLUMN st_name  type  varchar(15);
--------------------------------------