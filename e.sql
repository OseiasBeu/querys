SELECT * FROM EXTRACT;
SELECT * FROM CORS

--DROP TABLE EXTRACT;

--DROP TABLE CORS



SELECT * FROM EXTRACT WHERE NUMBER = 951


SELECT 
extract.[policy],CORS.[ID_Policy], extract.[city], extract.[insured Name],
CORS.[reference Field 1], CORS.[Policy Holder Formal Name]
FROM extract
INNER JOIN CORS ON extract.[Policy]= CORS.[ID_Policy];


CREATE VIEW relatorio AS
SELECT 
extract.[policy],CORS.[ID_Policy], extract.[city], extract.[insured Name],
CORS.[reference Field 1], CORS.[Policy Holder Formal Name]
FROM extract
INNER JOIN CORS ON extract.[Policy]= CORS.[ID_Policy]

SELECT * FROM relatorio


	