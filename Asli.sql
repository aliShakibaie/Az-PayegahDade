

create table person (id int not null primary key identity (1,1) , fname varchar(30) not null, lname varchar(30) not null, codemelli varchar(10) not null unique, birthyear smallint not null, birthmonth smallint not null,birthday smallint not null, fathername varchar(10) not null)

create table teachers(id int not null primary key identity (1,1), education varchar(30) not null, expertise varchar(10) not null, personid int not null foreign key references person(id))

create table students(id int not null primary key identity (1,1), enteringdate varchar(10) not null, compelitiondate varchar(10) null, personid int not null foreign key references person(id))

create table majors(id int not null primary key identity(1,1), name varchar(20), numberofunits int not null )

create table courses(id int not null primary key identity(1,1), name varchar(20), numberofunits int not null )

create table st_cr(studentid int not null foreign key references students(id),courseid int not null foreign key references courses(id), primary key (studentid,courseid) )

create table payment(studentid int not null foreign key references students(id),salary varchar(20), primary key (studentid) )

insert into person (fname,lname,codemelli,birthyear,birthmonth,birthday,fathername) values ('ali','alipour','111','98','11','06','Hossein');
insert into person (fname,lname,codemelli,birthyear,birthmonth,birthday,fathername) values ('Abass','Mohammadi','222','91','01','08','Hassan');
insert into person (fname,lname,codemelli,birthyear,birthmonth,birthday,fathername) values ('Mina','Ahmadi','333','90','02','25','Mohammad');
insert into person (fname,lname,codemelli,birthyear,birthmonth,birthday,fathername) values ('Sahar','Asghari','444','86','10','12','Ali Asqar');
insert into person (fname,lname,codemelli,birthyear,birthmonth,birthday,fathername) values ('Mohsen','Afzali','555','50','09','18','Habib');
select * from person;
insert into teachers (education,expertise,personid) values ('PHD','IT',1);
insert into teachers (education,expertise,personid) values ('lisance','Programmer',5);
select * from teachers;
insert into students (enteringdate,compelitiondate,personid) values ('1396','1397',2);
insert into students (enteringdate,compelitiondate,personid) values ('1393','1396',3);
insert into students (enteringdate,compelitiondate,personid) values ('1390','1395',4);
select * from students;
insert into majors (name,numberofunits) values ('IT',74);
insert into majors (name,numberofunits) values ('ICT',84);
insert into majors (name,numberofunits) values ('Physic',96);
select * from majors;
insert into courses (name,numberofunits) values ('Network',3);
insert into courses (name,numberofunits) values ('Security',2);
insert into courses (name,numberofunits) values ('C#',3);
insert into courses (name,numberofunits) values ('Java',3);
select * from courses;
insert into payment (studentid,salary) values (2,'2500');
insert into payment (studentid,salary) values (3,'1000');
insert into payment (studentid,salary) values (1,'1000');
select * from payment;

select COUNT(*) from payment where salary=1000;
select AVG (birthyear) from person;
select sum (numberofunits) from majors;


select * from students join person on person.id=students.id;

select * from students left join person on person.id=students.id;

select * from payment where salary>1000;

select * from payment where salary>1000 and salary<3000;

select * from person where birthyear<90;

select * from person where birthmonth<10 and birthmonth>5;







