-- inserção de dados no db
	use company_constraints;
    show tables;
    
insert into employee values('john', 'B', 'Smith', '123456789', '2002-02-02', '638 Voss Houston tx', 'M', '40000', '12638293', '5'),
						   ('Alice', 'C', 'Johnson', '987654321', '1995-05-15', '12 Elm Street, Los Angeles, CA', 'F', '60000', '56789123', '3'),
						   ('Michael', 'D', 'Brown', '555555555', '1990-10-10', '78 Oak Avenue, Chicago, IL', 'M', '75000', '98765432', '7'),
						   ('Emily', 'A', 'Davis', '222222222', '2003-12-14', '21 Road, New York, NY', 'F', '85000', '12345678', '4'),
						   ('David', 'B', 'Wilson', '444444444', '1980-08-08', '65 Lane, San Francisco, CA', 'M', '90000', '34567890', '6'),
	                       ('Olivia', 'C', 'Anderson', '777777777', '1994-07-25', '76 Drive, Miami, FL', 'F', '55000', '23456789', '2');
                           
select * from employee;

insert into dependent values ('123456789', 'Alicia', 'F', '1999-12-12', 'Daughter'),
							 ('987654321', 'Ethan', 'M', '2005-08-25', 'Son'),
							 ('555555555', 'Sophia', 'F', '2010-03-18', 'Daughter'),
							 ('222222222', 'Jacob', 'M', '2008-06-30', 'Son'),
							 ('444444444', 'Isabella', 'F', '2012-11-05', 'Daughter'),
							 ('777777777', 'Mason', 'M', '2014-09-14', 'Son');
select * from dependent;

insert into departament values ('Research', 5, '123456789' , '2019-12-23'),	
							  ('Administration', 4, '123456789', '2019-12-23'),
                              ('Headquarters', 1, '123456789' , '2019-12-23');
select * from departament;

insert into dep_location values (1, 'Heuston'),
								(4, 'Heuston'),
                                (4, 'Bellaire'),
                                (5, 'Heuston');
insert into project values
    ('Project A', 1, 'New York', 4),
    ('Project B', 2, 'Los Angeles', 4),
    ('Project C', 3, 'Chicago', 1),
    ('Project D', 4, 'Miami', 1),
    ('Project E', 5, 'San Francisco', 5),
    ('Project F', 6, 'Houston', 5);

desc project;

insert into works_on values
    ('123456789', 1, 40.0),
    ('987654321', 2, 35.5),
    ('555555555', 1, 42.0),
    ('222222222', 3, 38.5),
    ('444444444', 4, 37.0),
    ('777777777', 5, 39.5),
    ('123456789', 6, 41.0),
    ('555555555', 3, 36.5),
    ('987654321', 4, 40.5),
    ('777777777', 2, 38.0);



	