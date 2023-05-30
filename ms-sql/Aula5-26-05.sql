

USE AdventureWorks2012

--UNION

SELECT FirstName, Title, MiddleName FROM Person.Person
WHERE Title = 'Mr.' --AND MiddleName IS NOT NULL
UNION
SELECT FirstName, Title,MiddleName FROM Person.Person
WHERE MiddleName = 'A' --AND Title IS NOT NULL 
ORDER BY FirstName ASC

USE northwind

--SELF JOIN

SELECT A.FirstName, A.HireDate, B.FirstName, B.HireDate FROM Employees A, Employees B
WHERE DATEPART(YEAR, A.HireDate) = DATEPART(YEAR, B.HireDate)

USE AdventureWorks2012

--DATAS

SELECT * FROM Sales.SalesOrderHeader

SELECT AVG(TotalDue) AS 'MÉDIA MENSAL', DATEPART(MONTH, OrderDate) AS 'MÊS' FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY 2

SELECT AVG(TotalDue) AS 'MÉDIA ANUAL', DATEPART(YEAR, OrderDate) AS 'ANO' FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, OrderDate)
ORDER BY 2

--SUB SELECT
--QUAIS SAO PRODUTOS QUE ESTAO ACIMA DA MEDIA DE VENDAS


SELECT ProductID, Name, ListPrice FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)




