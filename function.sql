CREATE TRIGGER loan_app 
      BEFORE INSERT ON loan_app
      FOR EACH ROW EXECUTE PROCEDURE loan_app();

