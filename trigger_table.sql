CREATE TABLE LOAN_APP (
	Amt DECIMAL NOT NULL,
	Description varchar(100) NOT NULL,
	Cust_ID varchar(14) NOT NULL,
	Loan_ID varchar(20) NOT NULL,
	Gut DECIMAL NOT NULL,
	CONSTRAINT LOAN_app_pk PRIMARY KEY (Loan_ID)
	
) ;


ALTER TABLE LOAN_APP ADD CONSTRAINT LOAN_APP_fk1 FOREIGN KEY (Cust_ID) REFERENCES CUSTOMER(ID) ON DELETE CASCADE;