CREATE TRIGGER transaction_bit 
      BEFORE INSERT ON transaction
      FOR EACH ROW EXECUTE PROCEDURE transaction_bit();