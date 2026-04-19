drop database session04;
create database session04;
use session04;

create table Students (
    Student_Id int primary key auto_increment,
    Student_Fullname varchar(50) not null,
    Student_Dob date not null,
    Student_Email varchar(50) not null unique
);

create table Courses (
    Course_Id int primary key auto_increment,
    Course_Name varchar(255) not null,
    Course_Description text not null,
    Course_Total_Day int not null
);

create table Teachers (
    Teacher_Id int primary key auto_increment,
    Teacher_Fullname varchar(50) not null,
    Teacher_Email varchar(50) not null unique,
    Course_Id int not null,
    foreign key (Course_Id) references Courses(Course_Id)
);

create table Enrollment (
    Student_Id int not null,
    Course_Id int not null,
    Registration_Date date not null,
    primary key (Student_Id, Course_Id),
    foreign key (Student_Id) references Students(Student_Id),
    foreign key (Course_Id) references Courses(Course_Id)
);

create table Score (
    Student_Id int not null, 
    Course_Id int not null,
    Mid_Term decimal(4,2) not null check (Mid_Term between 0 and 10),
    End_Of_Term decimal(4,2) not null check (End_Of_Term between 0 and 10),
    foreign key (Student_Id) references Students(Student_Id),
    foreign key (Course_Id) references Courses(Course_Id)
);

insert into Courses (Course_Name, Course_Description, Course_Total_Day) values 
	('Lập trình C nâng cao', 'Cấu trúc dữ liệu và giải thuật cơ bản', 15),
	('Thiết kế Web cơ bản', 'Học HTML, CSS và làm quen với Bootstrap', 12),
	('Quản trị hệ thống Linux', 'Cài đặt và cấu hình Linux Mint', 10),
	('Cơ sở dữ liệu MySQL', 'Thiết kế hệ thống và truy vấn dữ liệu', 18),
	('Phát triển ứng dụng Mobile', 'Lập trình ứng dụng Android cơ bản', 20);

insert into Students (Student_Fullname, Student_Dob, Student_Email) values 
	('Khải Hoàn', '2005-10-27', 'khaihoan.dev@gmail.com'),
	('Nguyễn Minh Anh', '2005-02-15', 'minhanh.ng@gmail.com'),
	('Trần Văn Nam', '2004-05-20', 'vannam.tr@gmail.com'),
	('Lê Thu Thảo', '2005-12-01', 'thuthao.le@gmail.com'),
	('Phạm Quốc Bảo', '2005-08-30', 'quocbao.ph@gmail.com');

insert into Teachers (Teacher_Fullname, Teacher_Email, Course_Id) values 
	('Thầy Nguyễn Văn A', 'vana.teacher@gmail.com', 1),
	('Cô Trần Thị B', 'thib.teacher@gmail.com', 2),
	('Thầy Lê Văn C', 'vanc.teacher@gmail.com', 3),
	('Thầy Phạm Minh D', 'minhd.teacher@gmail.com', 4),
	('Cô Hoàng An E', 'ane.teacher@gmail.com', 5);

insert into Enrollment (Student_Id, Course_Id, Registration_Date) values 
	(1, 1, '2026-04-01'), 
	(1, 4, '2026-04-02'), 
	(2, 2, '2026-04-01'),
	(3, 3, '2026-04-05'),
	(4, 5, '2026-04-10'),
	(5, 1, '2026-04-01');

insert into Score (Student_Id, Course_Id, Mid_Term, End_Of_Term) values 
	(1, 1, 8.5, 9.0),
	(1, 4, 7.0, 8.5),
	(2, 2, 9.0, 9.5),
	(3, 3, 6.5, 7.0),
	(4, 5, 10.0, 9.0),
	(5, 1, 7.5, 8.0);

update Students 
set Student_Email = 'hoannzey@gmail.com' 
where Student_Id = 1;

update Courses 
set Course_Description = 'Hay' 
where Course_Id = 1;

update Score 
set Mid_Term = 10 where 
Student_Id = 1 and Course_Id = 1;

delete
from Score 
where Course_Id = 1;

delete
from Enrollment
where Course_Id = 1;

delete 
from Teachers 
where Course_Id = 1;

delete 
from Courses 
where Course_Id = 1;

select * from Students;
select * from Courses;
select * from Teachers;
select * from Enrollment;
select * from Score;