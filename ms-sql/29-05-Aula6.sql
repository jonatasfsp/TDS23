USE AdventureWorks2012

SELECT * FROM Person.Person

--UPPER - TUDO MAIUSCULO
--LOWER - TUDO MINUSCULO
SELECT FirstName, UPPER(FirstName) AS 'TUDO MAIUSCULO', LastName, LOWER(LastName)AS 'TUDO MINUSCULO' FROM Person.Person

--LENGTH - LEN

SELECT FirstName, LEN(FirstName) FROM Person.Person
WHERE LEN(FirstName) <=  2

--SUBSTRING
SELECT FirstName, SUBSTRING(FirstName,2,1) FROM Person.Person
--WHERE SUBSTRING(FirstName, 2,1) = '.'

--REPLACE

SELECT * FROM Production.Product

SELECT ProductNumber, REPLACE(ProductNumber, '-', '-2023-') FROM Production.Product

--VIEW



CREATE VIEW NOMES AS SELECT FirstName, MiddleName, LastName FROM Person.Person
WHERE Title = 'Mr.'

CREATE VIEW NOMESDASMs AS SELECT FirstName, MiddleName, LastName FROM Person.Person
WHERE Title = 'Ms.'

SELECT * FROM NOMES
ORDER BY 3 DESC

CREATE OR ALTER VIEW Email_Pessoas AS  SELECT A.BusinessEntityID, A.FirstName, B.EmailAddress AS Email FROM Person.Person AS A
INNER JOIN Person.EmailAddress AS B 
ON A.BusinessEntityID = B.BusinessEntityID

SELECT * FROM Email_Pessoas

--APAGA A VIEW
DROP VIEW NOMES








