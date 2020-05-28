
CREATE OR REPLACE FUNCTION transaction_bit()
	 RETURNS trigger 
	 LANGUAGE plpgsql
	 AS $$
    DECLARE
    newbalance DECIMAL;
    BEGIN
	 UPDATE ACCOUNT
	 		SET BALANCE= BALANCE + COALESCE(NEW.CSH_DEP, 0::DECIMAL) - 
            COALESCE(NEW.CSH_WID, 0::DECIMAL)
            WHERE acc_number=NEW.acc_num
            RETURNING BALANCE INTO newbalance;
            IF COALESCE(NEW.CSH_DEP, 0::DECIMAL) < 0::DECIMAL THEN
        RAISE EXCEPTION 'Debit value must be non-negative';
    END IF;
 
    IF COALESCE(NEW.CSH_WID, 0::DECIMAL) < 0::DECIMAL THEN
        RAISE EXCEPTION 'Credit value must be non-negative';
    END IF;
    IF newbalance < 0::DECIMAL THEN
        RAISE EXCEPTION 'Insufficient funds: %', NEW;
    END IF;
    RETURN NEW;
    END;
    $$