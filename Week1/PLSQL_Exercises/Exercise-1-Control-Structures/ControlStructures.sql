-- Enable output
SET SERVEROUTPUT ON;

----------------------------------------------------------
-- Scenario 1
-- Apply 1% discount to loan interest rates
-- for customers above 60 years old
----------------------------------------------------------

BEGIN

    FOR customer_record IN (
        SELECT CustomerID
        FROM Customers
        WHERE Age > 60
    )
    LOOP

        UPDATE Loans
        SET InterestRate = InterestRate - 1
        WHERE CustomerID = customer_record.CustomerID;

    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Interest rates updated successfully.');

END;
/

----------------------------------------------------------
-- Scenario 2
-- Set VIP status for customers with balance > 10000
----------------------------------------------------------

BEGIN

    FOR customer_record IN (
        SELECT CustomerID
        FROM Customers
        WHERE Balance > 10000
    )
    LOOP

        UPDATE Customers
        SET IsVIP = 'TRUE'
        WHERE CustomerID = customer_record.CustomerID;

    END LOOP;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('VIP customers updated successfully.');

END;
/

----------------------------------------------------------
-- Scenario 3
-- Print reminder for loans due within 30 days
----------------------------------------------------------

BEGIN

    FOR loan_record IN (

        SELECT
            CustomerID,
            LoanID,
            DueDate

        FROM Loans

        WHERE DueDate BETWEEN SYSDATE AND SYSDATE + 30

    )
    LOOP

        DBMS_OUTPUT.PUT_LINE(
            'Reminder: Loan '
            || loan_record.LoanID
            || ' for Customer '
            || loan_record.CustomerID
            || ' is due on '
            || loan_record.DueDate
        );

    END LOOP;

END;
/