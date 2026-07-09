-- Enable output
SET SERVEROUTPUT ON;



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