CREATE DATABASE AulaJoin

USE AulaJoin

CREATE TABLE TabelaA (
Id int,
Nome varchar(10)

)

CREATE TABLE TabelaB (
Id int,
Nome varchar(10)

)



INSERT INTO TabelaA
VALUES (1, 'Robo')

INSERT INTO TabelaA
VALUES (2, 'Macaco')

INSERT INTO TabelaA
VALUES (3, 'Samurai')

INSERT INTO TabelaA
VALUES (4, 'Monitor')

INSERT INTO TabelaB
VALUES (1, 'Espada')

INSERT INTO TabelaB
VALUES (2, 'Robo')

INSERT INTO TabelaB
VALUES (3, 'Mario')

INSERT INTO TabelaB
VALUES (4, 'Samurai')


SELECT * FROM sys.tables

SELECT * FROM TabelaA

SELECT * FROM TabelaB

--INNER JOIN 

SELECT * FROM TabelaA AS A --'A' É UM APELIDO PARA A TabelaA 
INNER JOIN TabelaB AS B  --'B' É UM APELIDO PARA A TabelaB 
ON A.Nome = B.Nome

--FULL OUTER JOIN

SELECT * FROM TabelaA AS A
FULL OUTER JOIN TabelaB AS B
ON A.Nome = B.Nome

--LEFT E RIGHT JOIN

SELECT * FROM TabelaA AS A
LEFT JOIN TabelaB AS B
ON A.Nome = B.Nome
--MOSTRANDO SOMENTE QUEM É NULO
--WHERE B.Nome IS NULL

SELECT * FROM TabelaA AS A
RIGHT JOIN TabelaB AS B
ON A.Nome = B.Nome
--MOSTRANDO SOMENTE QUEM É NULO
--WHERE A.Nome IS NULL


USE AdventureWorks2012

--UNION

SELECT ProductID, Name, ProductNumber FROM Production.Product
WHERE Name LIKE '%chai%'
UNION
SELECT ProductID, Name, ProductNumber FROM Production.Product
WHERE Name LIKE '%decal%'
ORDER BY Name DESC

--DESAFIOS
SELECT A.BusinessEntityID, A.FirstName, A.LastName, C.JobTitle, B.EmailAddress FROM Person.Person A
INNER JOIN Person.EmailAddress B
ON A.BusinessEntityID = B.BusinessEntityID
INNER JOIN HumanResources.Employee C
ON A.BusinessEntityID = C.BusinessEntityID
WHERE C.JobTitle LIKE '%desi%'

SELECT * FROM HumanResources.Employee

--NOME DOS PRODUTOS E AS INFORMAÇOES DE SUBCATEGORIA 
--LISTPRICE, NOME, NOME SUBCATEGORIA

SELECT * FROM Production.ProductSubcategory
SELECT * FROM Production.Product

SELECT ListPrice, A.Name, B.Name AS 'Subcategory Name' FROM Production.Product A
INNER JOIN Production.ProductSubcategory B
ON A.ProductSubcategoryID = B.ProductSubcategoryID

--TRAZE O CLIENTe ID, TIPO DE TELEFONE, O ID DO TELEFONE, O NUMERO DO TELEFONE

SELECT * FROM Person.PersonPhone
SELECT * FROM Person.PhoneNumberType

SELECT A.BusinessEntityID,C.FirstName, C.LastName, B.Name AS 'Tipo de telefone', B.PhoneNumberTypeID, A.PhoneNumber FROM Person.PersonPhone A
INNER JOIN Person.PhoneNumberType B
ON A.PhoneNumberTypeID = B.PhoneNumberTypeID
INNER JOIN Person.Person C
ON A.BusinessEntityID = C.BusinessEntityID

--QUAIS PESSOAS QUE TEM UM CARTAO DE CREDITO REGISTRADO

SELECT * FROM Person.Person
SELECT * FROM Sales.PersonCreditCard

SELECT A.BusinessEntityID, A.FirstName, B.CreditCardID, C.EmailAddress FROM Person.Person AS A
INNER JOIN Sales.PersonCreditCard AS B
ON A.BusinessEntityID = B.BusinessEntityID
INNER JOIN Person.EmailAddress AS C
ON A.BusinessEntityID = C.BusinessEntityID

--PESSOAS QUE NAO TEM UM CARTAO DE CREDITO

SELECT A.BusinessEntityID, A.FirstName, B.CreditCardID, C.EmailAddress FROM Person.Person AS A
LEFT JOIN Sales.PersonCreditCard AS B
ON A.BusinessEntityID = B.BusinessEntityID
INNER JOIN Person.EmailAddress C
ON A.BusinessEntityID = C.BusinessEntityID
WHERE B.CreditCardID is null 
AND C.EmailAddress IS NOT NULL


--SUBSELECT

SELECT * FROM Production.Product
ORDER BY ListPrice DESC

SELECT ProductID, Name, ListPrice FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)

SELECT FirstName FROM Person.Person
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.Employee WHERE JobTitle = 'Design Engineer')

SELECT FirstName From Person.Person A
INNER JOIN HumanResources.Employee B
ON A.BusinessEntityID = B.BusinessEntityID
WHERE JobTitle = 'Design Engineer'










