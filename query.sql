/*AGGREGATE FUNCTIONS*/
/* shows the total ,average , minimun and maximum loan taken from a bank*/
select sum(amount),avg(amount),min(amount),max(amount)
from loan;


/*USE OF COUNT*/
/* tells how many customers are there in the bank*/
select count(*)
from customer;


/*EXISTS (EDUCATION LOAN)*/
/*shows the details of customer who have taken business loan*/
select *
from customer
where exists(select *
				from loan
				where loan.Description='Business' and loan.Cust_ID=customer.id);



/* Shows how many customer have taken loan for more  than 20 lakh*/
SELECT COUNT(ID) 
FROM CUSTOMER,LOAN 
WHERE ID = CUST_ID AND AMOUNT > 2000000;




