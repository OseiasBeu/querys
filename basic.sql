--INSERT INTO TABLE (columns)
--VALUES (values);

--time_stamp = CONVERT(VARCHAR(8), GETDATE(), 10)



--select * from information_schema.columns where table_name = 'table-name'


--UPDATE table_name
--SET column1 = value1, column2 = value2, ...
--WHERE condition;

--SELECT * FROM tabLogUsuario
--WHERE datCadastro BETWEEN 2010/09/10 AND 2011/10/10

--select   * from  ASSISTENCIA..Sponsors_Contrato order by time_stamp DESC

--SELECT column_name(s)
--FROM table_name
--WHERE column_name IN (value1, value2, ...);

-- SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
-- FROM Orders
-- INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

-- CREATE VIEW view_name AS
-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition;


-- SELECT DISTINCT column1, column2, ...
-- FROM table_name;

-- Select * from Tabela1
-- Where Tabela1.ID NOT IN (Select ID * from Tabela2)


-- CREATE VIEW CORS_EXTRACT AS
-- SELECT 
-- extract.[policy],CORS.[ID_Policy], extract.[city], extract.[insured Name],
-- CORS.[reference Field 1], CORS.[Policy Holder Formal Name]
-- FROM extract
-- INNER JOIN CORS ON extract.[Policy]= CORS.[ID_Policy]