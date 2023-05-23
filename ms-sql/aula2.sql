use pubs

SELECT * FROM sys.tables

SELECT au_fname, phone FROM dbo.authors
order by au_fname DESC;

SELECT au_fname, phone FROM dbo.authors
order by au_fname ASC

SELECT * FROM dbo.sales

SELECT TOP 5 * FROM dbo.sales
ORDER BY qty DESC

SELECT * FROM dbo.authors
WHERE state = 'CA' AND contract = 0
ORDER BY city


SELECT * FROM dbo.sales

SELECT SUM(qty) AS 'Vendas totais' FROM dbo.sales

--LIKE
SELECT au_id, au_lname, au_fname, phone, address, city, state, zip, contract FROM
authors WHERE au_fname LIKE 'a%'


SELECT authors.*, titleauthor.* 
FROM authors,titleauthor 
WHERE authors.au_id = titleauthor.au_id

SELECT * FROM dbo.titleauthor

SELECT * FROM dbo.authors

--UPDATE
UPDATE authors SET au_fname = 'Marina' WHERE au_id='998-72-3567';


--DELETE
DELETE FROM authors WHERE au_id = '998-72-3567'







