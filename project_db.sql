create schema if not exists company_constraints;
use company_constraints;

-- restrição atribuida a um domínio
-- create domain D_num as int check(D_num > 0 and D_num<21)

-- drop table employee;

create table employee(
	Fname varchar(15) NOT NULL,
    Minit char, 
    Lname varchar(15) NOT NULL,
    Ssn char(9) NOT NULL,
    Bdate date,
    Adrress varchar(30),
    sex char,
    Salary decimal(10, 2),
    Super_ssn char(9),
    Dno int NOT NULL,
    constraint chk_salary_employee check (Salary > 2000.0),
    constraint pk_employee primary key (Ssn)
);

desc employee;

create table departament(
	Dname varchar(15) NOT NULL,
    Dnumber int NOT NULL,
    Mgr_ssn char(9),
    Mgr_start_date date,
    Dept_create_date date,
    constraint chk_date_dept check(Dept_create_date < Mgr_start_date),
    constraint pk_department primary key(Dnumber),
    constraint unique_name_dept Unique(Dname),
    foreign key(Mgr_ssn) references Employee(Ssn)
);

desc departament;

-- def	company_constraints	departament_ibfk_1	company_constraints	departament	FOREIGN KEY	YES
alter table departament drop constraint chk_date_dept;
alter table departament
	add constraint fk_dept foreign key(Mgr_ssn) references Employee(Ssn)
	on update cascade;
    
create table dep_location(
	Dnumber int not null,
    Dlocation varchar(15) not null,
    constraint pk_dept_locations primary key(Dnumber, Dlocation),
    constraint fk_dpt_locations foreign key(Dnumber) references departament(Dnumber)
);

alter table dept_locations drop constraint fk_dpt_locations; 

alter table dept_locations
	add constraint fk_dpt_locations foreign key(Dnumber) references departament(Dnumber)
	on delete cascade
    on update cascade;

create table project(
	pname varchar(15) not null,
    Pnumber int not null,
    Plocation varchar(15), 
    Dnum int not null,
    primary key (Pnumber),
    constraint unique_project unique (Pname),
    constraint fk_project foreign key (Dnum) references departament(Dnumber)
);

create table works_on(
	Essn char(9) not null,
    Pno int not null,
    Hours decimal(3, 1) not null,
    primary key (Essn, Pno),
    constraint fk_works_on_employee foreign key(Essn) references employee(Ssn),
    constraint fk_works_on_project foreign key(Pno) references project(Pnumber)
    
);

drop table dependent;


create table dependent(
	Essn char(9) not null,
    Dependent_name varchar(15) not null,
    Sex char, -- F ou M
    Bdate date, 
    Relationship varchar(8),
    constraint pk_dependent primary key(Essn, Dependent_name),
    constraint fk_dependent foreign key(Essn) references employee(Ssn)
);

show tables;

alter table employee
	add constraint fk_employee
    foreign key	(Super_ssn) references employee(Ssn)
    on delete set null
    on update cascade;
    

select * from information_schema.table_constraints
	where constraint_schema = 'company_constraints';