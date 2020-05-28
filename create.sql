create database bankdb;

\c bankdb

CREATE TABLE BANK (
	bname char(30) NOT NULL UNIQUE,
	bnumber varchar(8) NOT NULL UNIQUE,
	CONSTRAINT BANK_pk PRIMARY KEY (bnumber)
	
) ;



CREATE TABLE BRANCH (
	IFSC varchar(14) NOT NULL UNIQUE,
	Location varchar(30) NOT NULL UNIQUE,
	Bnk_No varchar(8) NOT NULL,
	CONSTRAINT BRANCH_pk PRIMARY KEY (IFSC)
	
);


CREATE TABLE ADDRESS (
	House_no varchar(10) NOT NULL,
	Street varchar(30) NOT NULL,
	City varchar(20) NOT NULL,
	Cust_ID varchar(14) NOT NULL
	
) ;


CREATE TABLE ACCOUNT (
	Balance DECIMAL NOT NULL,
	acc_number varchar(10) NOT NULL UNIQUE,
	Type varchar(20) NOT NULL,
	Cust_ID varchar(14) NOT NULL,
	CONSTRAINT ACCOUNT_pk PRIMARY KEY (acc_number),
	b_code varchar(14) NOT NULL
	
) ;


CREATE TABLE LOAN (
	Amount DECIMAL NOT NULL,
	Loan_ID varchar(20) NOT NULL,
	Description varchar(100) NOT NULL,
	Cust_ID varchar(14) NOT NULL,
	CONSTRAINT LOAN_pk PRIMARY KEY (Loan_ID),
	b_code varchar(14) NOT NULL
	
) ;


-- CREATE TABLE ATM (
-- 	ATM_NO int NOT NULL UNIQUE,
-- 	Card_Limit int NOT NULL,
-- 	Cust_ID varchar(14) NOT NULL,
-- 	CONSTRAINT ATM_pk PRIMARY KEY (ATM_NO)
	
-- ) ;


CREATE TABLE CUSTOMER (
	ID varchar(14) NOT NULL UNIQUE,
	Gender char(1) NOT NULL,
	Name varchar(30) NOT NULL,
	DOB DATE NOT NULL,
	Age int NOT NULL,
	CONSTRAINT CUSTOMER_pk PRIMARY KEY (ID)
	
) ;

CREATE TABLE TRANSACTION(
	-- CHQ_DEP int NOT NULL,
	CSH_DEP DECIMAL NOT NULL,
	CSH_WID DECIMAL NOT NULL,
	acc_num varchar(10) NOT NULL UNIQUE,
	-- ATM_NO int NOT NULL
	CONSTRAINT TRANSACTION_pk PRIMARY KEY (acc_num)
	
) ;


CREATE TABLE CUST_ACC (
	Cust_ID varchar(14) NOT NULL,
	Acc_No varchar(10) NOT NULL
	
) ;


CREATE TABLE CUST_LOAN (
	Loan_ID varchar(20) NOT NULL,
	Cust_ID varchar(14) NOT NULL
	
) ;

CREATE TABLE LOAN_APP (
	Amt DECIMAL NOT NULL,
	Description varchar(100) NOT NULL,
	Cust_ID varchar(14) NOT NULL,
	Loan_ID varchar(20) NOT NULL,
	Gut DECIMAL NOT NULL,
	b_code varchar(14) NOT NULL,
	CONSTRAINT LOAN_app_pk PRIMARY KEY (Loan_ID)
	
) ;


ALTER TABLE BRANCH ADD CONSTRAINT BRANCH_fk0 FOREIGN KEY (Bnk_No) REFERENCES BANK(bnumber) ON DELETE CASCADE;


ALTER TABLE ADDRESS ADD CONSTRAINT ADDRESS_fk0 FOREIGN KEY (Cust_ID) REFERENCES CUSTOMER(ID) ON DELETE CASCADE;


ALTER TABLE LOAN ADD CONSTRAINT LOAN_fk0 FOREIGN KEY (Cust_ID) REFERENCES CUSTOMER(ID) ON DELETE CASCADE;


ALTER TABLE TRANSACTION ADD CONSTRAINT TRANSACTION_fk0 FOREIGN KEY (acc_num) REFERENCES ACCOUNT(acc_number) ON DELETE CASCADE;

ALTER TABLE CUST_ACC ADD CONSTRAINT CUST_ACC_fk0 FOREIGN KEY (Cust_ID) REFERENCES CUSTOMER(ID) ON DELETE CASCADE;
ALTER TABLE CUST_ACC ADD CONSTRAINT CUST_ACC_fk1 FOREIGN KEY (Acc_No) REFERENCES ACCOUNT(acc_number) ON DELETE CASCADE;

ALTER TABLE CUST_LOAN ADD CONSTRAINT CUST_LOAN_fk0 FOREIGN KEY (Loan_ID) REFERENCES LOAN(Loan_ID) ON DELETE CASCADE;
ALTER TABLE CUST_LOAN ADD CONSTRAINT CUST_LOAN_fk1 FOREIGN KEY (Cust_ID) REFERENCES CUSTOMER(ID) ON DELETE CASCADE;
ALTER TABLE ACCOUNT ADD CONSTRAINT ACC_FK FOREIGN KEY (Cust_ID) REFERENCES CUSTOMER(ID) ON DELETE CASCADE;

ALTER TABLE LOAN_APP ADD CONSTRAINT LOAN_APP_fk1 FOREIGN KEY (Cust_ID) REFERENCES CUSTOMER(ID) ON DELETE CASCADE;

ALTER TABLE ACCOUNT ADD CONSTRAINT ACC_FK1 FOREIGN KEY (b_code) REFERENCES BRANCH(IFSC) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE LOAN ADD CONSTRAINT LOAN_fk1 FOREIGN KEY (b_code) REFERENCES BRANCH(IFSC) ON UPDATE CASCADE ON DELETE CASCADE;


