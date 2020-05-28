-- \c bankdb


insert into bank values('abc',12345678);
insert into branch values('abc12345','bsk',12345678);
insert into branch values('abc67892','pat',12345678);
insert into branch values('abc78524','del',12345678);

insert into customer values(705,'M','c1','1998-07-10',20.);
insert into account values(30000,9608370700,'Savings',705,'abc12345');
insert into address values(405,'white_field','Bangalore',705);
insert into cust_acc values(705,9608370700);
insert into loan values(1600000,0070738069,'Business',705,'abc12345');
insert into cust_loan values(0070738069,705);


insert into customer values(701,'M','c2','1998-08-15',20);
insert into account values(25000.34,9971121532,'Savings',701,'abc67892');
insert into address values(406,'white_field','Bangalore',701);
insert into cust_acc values(701,9971121532);
insert into loan values(50000,2351211799,'Education',701,'abc67892');
insert into cust_loan values(2351211799,701);

insert into customer values(810,'M','c3','1998-01-26',21);
insert into account values(50000,9729903550,'Savings',810,'abc78524');
insert into address values(407,'white_field','Bangalore',810);
insert into cust_acc values(810,9729903550);
insert into loan values(3000000,0553099279,'Business',810,'abc78524');
insert into cust_loan values(0553099279,810);


insert into customer values(813,'F','c4','1998-10-02',20);
insert into account values(7000,9113717359,'Savings',813,'abc12345');
insert into address values(40,'Sarojni_Nagar','Delhi',813);
insert into cust_acc values(813,9113717359);
insert into loan values(1200000,9537173119,'Education',813,'abc12345');
insert into cust_loan values(9537173119,813);

insert into customer values(420,'M','c5','1998-10-02',20);
insert into account values(20459.60,8235444823,'Savings',420,'abc78524');
insert into address values(404,'white_field','Bangalore',420);
insert into cust_acc values(420,8235444823);
insert into loan values(104000.40,3284445328,'House',420,'abc78524');
insert into cust_loan values(3284445328,420);

insert into customer values(706,'F','c6','1997-09-10',21);
insert into account values(30287,9608370985,'Savings',706,'abc67892');
insert into address values(415,'white_field','Bangalore',706);
insert into cust_acc values(420,8235444823);
insert into loan values(2000000,9537173114,'House',706,'abc67892');
insert into cust_loan values(9537173114,706);


insert into customer values(785,'M','c7','1998-08-20',20);
insert into account values(65025,9608985051,'Savings',785,'abc12345');
insert into address values(407,'malad','mumbai',785);
insert into cust_acc values(785,9608985051);

insert into customer values(790,'M','c8','1999-07-26',19);
insert into account values(15000,9608370952,'Savings',790,'abc78524');
insert into address values(78,'bandra','Bangalore',790);
insert into cust_acc values(790,9608370952);

insert into customer values(708,'F','c9','1995-07-10',23);
insert into account values(382540,9608379860,'Savings',708,'abc67892');
insert into address values(15,'sharjapur','Bangalore',708);
insert into cust_acc values(708,9608379860);

insert into customer values(852,'M','d1','1992-09-08',27);
insert into account values(95874,9608379647,'Savings',852,'abc12345');
insert into address values(7,'colaba','mumbai',852);
insert into cust_acc values(852,9608379647);

insert into customer values(968,'M','d2','1997-09-05',21);
insert into account values(25483,9608376574,'Savings',968,'abc78524');
insert into address values(47,'sharjapur','Bangalore',968);
insert into cust_acc values(968,9608376574);
insert into loan values(2200000,9577173119,'car',968,'abc78524');
insert into cust_loan values(9577173119,968);

insert into customer values(745,'F','d3','1995-07-25',23);
insert into account values(36000,9608398745,'Savings',745,'abc67892');
insert into address values(18,'M.G Road','Bangalore',745);
insert into cust_acc values(745,9608398745);

insert into customer values(715,'M','d4','1985-07-10',35);
insert into account values(85210,9608372478,'Savings',715,'abc67892');
insert into address values(6,'kormangala','Bangalore',715);
insert into cust_acc values(715,9608372478);
insert into loan values(1200000,9537173319,'Education',715,'abc67892');
insert into cust_loan values(9537173319,715);


insert into customer values(999,'M','d5','1999-12-31',18);
insert into account values(15402,9608379856,'Savings',999,'abc78524');
insert into address values(69,'malad','mumbai',999);
insert into cust_acc values(999,9608379856);

insert into customer values(445,'F','d6','1998-08-10',20);
insert into account values(55698,9608372547,'Savings',445,'abc78524');
insert into address values(52,'bandra','mumbai',810);
insert into cust_acc values(445,9608372547);

insert into customer values(896,'M','d7','1975-07-10',45);
insert into account values(385240,9608379632,'Savings',896,'abc67892');
insert into address values(100,'white_field','Bangalore',896);
insert into cust_acc values(896,9608379632);

insert into customer values(222,'M','d8','1995-12-25',25);
insert into account values(99999,9608376941,'Savings',222,'abc78524');
insert into address values(45,'Sarojni_Nagar','Delhi',222);
insert into cust_acc values(222,9608376941);
insert into loan values(4200000,9537173189,'House',222,'abc78524');
insert into cust_loan values(9537173189,222);


insert into customer values(685,'F','d9','1989-12-23',30);
insert into account values(98526,9608375555,'Savings',685,'abc67892');
insert into address values(985,'sharjapur','Bangalore',685);
insert into cust_acc values(685,9608375555);

