use AdventureWorks2012


SELECT * FROM PERSON.Person

SELECT * FROM PERSON.PERSON
WHERE BusinessEntityID = 5

/*
AND - E
OR - OU
NOT - ACOMPANHADO

=
>
<
<> - DIFERENTE
>=
<=

*/

--OR
SELECT * FROM PERSON.PERSON
WHERE BusinessEntityID = 5 
OR BusinessEntityID = 111 
OR BusinessEntityID = 23

--AND
SELECT Weight FROM Production.Product
WHERE Weight > 500 AND Weight <= 700

--AND
SELECT * FROM HumanResources.Employee
WHERE MaritalStatus = 'M' 
AND SalariedFlag = 1 
AND BirthDate <= '1983/01/01'

SELECT * FROM Person.Person
WHERE FirstName = 'Peter' AND LastName = 'Krebs'

SELECT * FROM Person.EmailAddress
WHERE BusinessEntityID = 26



SELECT Person.Person.FirstName, Person.Person.LastName, Person.EmailAddress.EmailAddress 
FROM Person.Person, Person.EmailAddress 
WHERE Person.BusinessEntityID = EmailAddress.BusinessEntityID AND Person.BusinessEntityID = 26



SELECT COUNT (*) AS 'QTDE DE PRODUTOS' FROM Production.Product 
SELECT DISTINCT Name FROM Production.Product

SELECT DISTINCT Title FROM Person.Person

--LIKE

-- R% Começa com R
SELECT * FROM Person.Person
WHERE FirstName LIKE 'R%'

-- %R termina com R
SELECT * FROM Person.Person
WHERE FirstName LIKE '%R'

-- _ Representa um caracter
SELECT * FROM Person.Person
WHERE FirstName LIKE 'Ro_'

--%% esta no meio
SELECT * FROM Person.Person
WHERE FirstName LIKE '%essa%'


--BETWEEN
SELECT ListPrice FROM Production.Product
WHERE ListPrice BETWEEN  1000 AND 1500

SELECT * FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'

-- IN operador permite especificar vários valores em uma WHEREcláusula.
-- IN operador é um atalho para várias OR condições.

SELECT * FROM PERSON.PERSON
WHERE BusinessEntityID IN (5, 111, 23)

--QUANTOS PRODUTOS TEMOS ACIMA DE 1500
SELECT COUNT(*) FROM Production.Product
WHERE ListPrice > 1500

--QUANTAS PESSOAS TEM O SOBRENOME QUE COMEÇA COM A LETRA P
SELECT COUNT(*) FROM Person.Person
WHERE LastName Like 'P%'

--EM QUANTAS CIDADES UNICAS ESTAO AS PESSOAS
SELECT COUNT (DISTINCT City) FROM Person.Address





