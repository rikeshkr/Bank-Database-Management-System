CREATE OR REPLACE FUNCTION loan_app()
	 RETURNS trigger 
	 LANGUAGE plpgsql
	 AS $$
     BEGIN
	insert into loan(Amount,Loan_id,Description,Cust_ID,b_code)
	values(NEW.AMT , NEW.LOAN_ID, NEW.DESCRIPTION, NEW.CUST_ID, NEW.b_code);
            IF NEW.AMT > (0.8)*NEW.GUT THEN
        RAISE EXCEPTION 'Sorry cant pass the loan: %', NEW;
    END IF;
	RETURN NEW;
    END;
    $$
    