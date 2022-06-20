create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

insert into employees(id, employee_name)
values (default, 'Alex'),
	   (default, 'Boris'),
	   (default, 'Sergey'),
	   (default, 'Dmitriy'),
	   (default, 'Vladimir'),
	   (default, 'Eugene'),
	   (default, 'Stanislav'),
	   (default, 'Alexey'),
	   (default, 'Vladislav'),
	   (default, 'Vadim'),
	   (default, 'Valery'),
	   (default, 'Konstantin'),
	   (default, 'Gleb'),
	   (default, 'Semen'),
	   (default, 'Oleg'),
	   (default, 'Valentin'),
	   (default, 'Anatoli'),
	   (default, 'Mihail'),
	   (default, 'Nikolay'),
	   (default, 'Petr'),
	   (default, 'Ivan'),
	   (default, 'Olga'),
	   (default, 'Tatyana'),
	   (default, 'Marina'),
	   (default, 'Svetlana'),
	   (default, 'Natalia'),
	   (default, 'Julia'),
	   (default, 'Lilya'),
	   (default, 'Lubov'),
	   (default, 'Nadejda'),
	   (default, 'Vera'),
	   (default, 'Valentina'),
	   (default, 'Maria'),
	   (default, 'Elena'),
	   (default, 'Irina'),
	   (default, 'Anna'),
	   (default, 'Alla'),
	   (default, 'Ludmila'),
	   (default, 'Ekaterina'),
	   (default, 'Viktoria'),
	   (default, 'Anastasia'),
	   (default, 'Galina'),
	   (default, 'Oksana'),
	   (default, 'Aurora'),
	   (default, 'Alina'),
	   (default, 'Alena'),
	   (default, 'Alisa'),
	   (default, 'Anfisa'),
	   (default, 'Asya'),
	   (default, 'Valeria'),
	   (default, 'Vanessa'),
	   (default, 'Varvara'),
	   (default, 'Veronika'),
	   (default, 'Sofia'),
	   (default, 'Daria'),
	   (default, 'Janna'),
	   (default, 'Zlata'),
	   (default, 'Inna'),
	   (default, 'Karina'),
	   (default, 'Kristina'),
	   (default, 'Kira'),
	   (default, 'Ksenya'),
	   (default, 'Lera'),
	   (default, 'larisa'),
	   (default, 'Artem'),
	   (default, 'Daniil'),
	   (default, 'Lev'),
	   (default, 'Matvey'),
	   (default, 'Makar'),
	   (default, 'Mark'),
	   (default, 'Kirill');
	  
create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

insert into salary(id, monthly_salary)
values (default, 1000),
	   (default, 1100),
	   (default, 1200),
	   (default, 1300),
	   (default, 1400),
	   (default, 1500),
	   (default, 1600),
	   (default, 1700),
	   (default, 1800),
	   (default, 1900),
	   (default, 2000),
	   (default, 2100),
	   (default, 2200),
	   (default, 2300),
	   (default, 2400),
	   (default, 2500);
	   
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null	
);

select * from employee_salary;

insert into employee_salary(id, employee_id, salary_id)
values (default, 5000, 1),
	   (default, 5001, 2),
	   (default, 5002, 3),
	   (default, 5003, 4),
	   (default, 5005, 5),
	   (default, 5006, 6),
	   (default, 5007, 7),
	   (default, 5008, 8),
	   (default, 5009, 9),
	   (default, 5010, 10),
	   (default, 1, 1),
	   (default, 2, 2),
	   (default, 3, 3),
	   (default, 4, 4),
	   (default, 5, 5),
	   (default, 6, 6),
	   (default, 7, 7),
	   (default, 8, 8),
	   (default, 9, 9),
	   (default, 10, 10),
	   (default, 11, 11),
	   (default, 12, 12),
	   (default, 13, 13),
	   (default, 14, 14),
	   (default, 15, 15),
	   (default, 16, 11),
	   (default, 17, 11),
	   (default, 18, 10),
	   (default, 19, 1),
	   (default, 20, 2),
	   (default, 21, 2),
	   (default, 22, 2),
	   (default, 23, 2),
	   (default, 24, 4),
	   (default, 25, 5),
	   (default, 26, 6),
	   (default, 27, 7),
	   (default, 28, 8),
	   (default, 29, 9),
	   (default, 30, 5);
	  
select * from employee_salary;

create table roles(
	id serial primary key,
	role_name int unique not null
);	
	   
alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

select * from roles;


insert into roles(id, role_name)
values (default, 'Junior Python developer'),
	   (default, 'Middle Python developer'),
	   (default, 'Senior Python developer'),
	   (default, 'Junior Java developer'),
	   (default, 'Middle Java developer'),
	   (default, 'Senior Java developer'),
	   (default, 'Junior JavaScript developer'),
	   (default, 'Middle JavaScript developer'),
	   (default, 'Senior JavaScript developer'),
	   (default, 'Junior Manual QA engineer'),
	   (default, 'Middle Manual QA engineer'),
	   (default, 'Senior Manual QA engineer'),
	   (default, 'Project Manager'),
	   (default, 'Designer'),
	   (default, 'HR'),
	   (default, 'CEO'),
	   (default, 'Sales Manager'),
	   (default, 'Junior Automation QA engineer'),
	   (default, 'Middle Automation QA engineer'),
	   (default, 'Senior Automation QA engineer');
	   
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
		foreign key (employee_id)
			references employees(id),
		foreign key (role_id)
			references roles(id)	
);

insert into roles_employee (id, employee_id, role_id)
values (default, 7, 7),
       (default, 1, 1),
       (default, 2, 2),
       (default, 3, 3),
       (default, 4, 4),
       (default, 5, 5),
       (default, 6, 6),
       (default, 8, 8),
       (default, 9, 9),
       (default, 10, 10),
       (default, 11, 11),
       (default, 12, 12),
       (default, 13, 13),
       (default, 14, 14),
       (default, 15, 15),
       (default, 16, 16),
       (default, 17, 17),
       (default, 18, 18),
       (default, 19, 19),
       (default, 20, 20),
       (default, 21, 19),
       (default, 22, 18),
       (default, 23, 17),
       (default, 24, 16),
       (default, 25, 15),
       (default, 26, 14),
       (default, 27, 13),
       (default, 28, 12),
       (default, 29, 11),
       (default, 30, 10),
       (default, 31, 9),
       (default, 32, 8),
       (default, 33, 7),
       (default, 34, 6),
       (default, 35, 5),
       (default, 36, 4),
       (default, 37, 3),
       (default, 38, 2),
       (default, 39, 1),
       (default, 40, 10);
       