USE TSQLDemoDB;

SELECT Country, COUNT (*) AS NUMBEROFCUSTOMERS
FROM Customers
gROUP BY Country;

INSERT INTO Customers (Customer, COUNTRY)
VALUES ('JANE', NULL);