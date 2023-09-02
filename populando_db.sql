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