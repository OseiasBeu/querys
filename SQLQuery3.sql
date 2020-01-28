SELECT * FROM EXTRACT;
SELECT * FROM CORS

--DROP TABLE EXTRACT;

--DROP TABLE CORS
------------------------------------------------------------------------------------------------------------------------------
--O QUE NÃO ESTÁ NAS DUAS TABELAS?
------------------------------------------------------------------------------------------------------------------------------
--VIEWS DIFERENCA_CORS_EXT -> MOSTRA O QUE NÃO TEM DE CORS EM EXTRACT
CREATE VIEW DIFERENCA_CORS_EXTRACT AS
SELECT * FROM CRS
WHERE  NOT EXISTS (SELECT 1  FROM ESTRATEGY WHERE CRS.[POLICY] = ESTRATEGY.[ID_POLICY])

CREATE VIEW DIFERENCA_CORS_EXTRACT AS
	SELECT * FROM CORS
	WHERE  NOT EXISTS (SELECT 1  FROM EXTRACT WHERE CORS.[ID_POLICY] = EXTRACT.[POLICY])

SELECT * FROM DIFERENCA_CORS_EXTRACT

SELECT * FROM CORS WHERE ID_POLICY = 'AZULN300379663'
SELECT * FROM EXTRACT WHERE POLICY = 'AZULN300405264'


--VIEWS DIFERENCA_EXT_CORS -> MOSTRA O QUE NÃO TEM DE EXTRACT EM CORS
	SELECT * FROM EXTRACT
	WHERE  NOT EXISTS (SELECT 1  FROM CORS WHERE EXTRACT.[POLICY] = CORS.[ID_POLICY] )

CREATE VIEW DIFERENCA_EXTRACT_CORS AS
	SELECT * FROM EXTRACT
	WHERE  NOT EXISTS (SELECT 1  FROM CORS WHERE EXTRACT.[POLICY] = CORS.[ID_POLICY] )

SELECT * FROM DIFERENCA_EXTRACT_CORS
SELECT * FROM DIFERENCA_CORS_EXTRACT

------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------
--O QUE ESTÁ NAS DUAS TABELAS?
------------------------------------------------------------------------------------------------------------------------------
--VIEWS CORS_EXT -> MOSTRA O QUE ESTÁ NAS DUAS TABELAS
SELECT * FROM EXTRACT WHERE NUMBER = 951

--SELECT 
--extract.[policy],CORS.[ID_Policy], extract.[city], extract.[insured Name],
--CORS.[reference Field 1], CORS.[Policy Holder Formal Name]
--FROM extract
--INNER JOIN CORS ON extract.[Policy]= CORS.[ID_Policy];


--CREATE VIEW CORS_EXTRACT AS
--SELECT 
--extract.[policy],CORS.[ID_Policy], extract.[city], extract.[insured Name],
--CORS.[reference Field 1], CORS.[Policy Holder Formal Name]
--FROM extract
--INNER JOIN CORS ON extract.[Policy]= CORS.[ID_Policy]


--DROP VIEW CORS_EXTRACT

SELECT * FROM CORS WHERE ID_POLICY = 'AZULN300379663'
SELECT * FROM EXTRACT WHERE POLICY = 'AZULN300405264'






CREATE VIEW CORS_EXTRACT AS
SELECT 
extract.[policy],
CORS.[ID_Policy], 
extract.[Contact Number],
extract.[Producer code],
extract.[Number],
extract.[Payment Reference Number],
extract.[Product],
extract.[Category],
extract.[city], 
extract.[insured Name],
extract.[User ID],
CORS.[Premium],
CORS.[Métrica],
CORS.[Admission Issue Date],
CORS.[Sponsor DESC],
CORS.[Sponsor ID],
CORS.[reference Field 1], 
CORS.[Policy Holder Formal Name],
CORS.[Policy Holder Personal ID]
FROM extract
INNER JOIN CORS ON extract.[Policy]= CORS.[ID_Policy]


CREATE VIEW CORS_EXTRACT AS
SELECT 
extract.*,
CORS.*
FROM extract
INNER JOIN CORS ON extract.[Policy]= CORS.[ID_Policy]


SELECT * FROM CORS_EXTRACT


SELECT COUNT(DISTINCT  cors.[ID_Policy] EXTRACT.[POLICY]) FROM CORS WHERE cors.[ID_Policy] = EXTRACT.[POLICY]

select count(*) from cors;
select count(*) from extract

Select * from CORS
Where  NOT EXISTS (Select 1  from EXTRACT WHERE cors.[ID_Policy] = EXTRACT.[POLICY])


Select * from extract
Where EXTRACT.[POLICY] NOT IN (Select  cors.[ID_Policy] from CORS)


-------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------


CREATE VIEW EXT_CRS AS
SELECT * FROM CRS
WHERE  NOT EXISTS (SELECT 1  FROM ESTRATEGY WHERE CRS.[POLICY] != ESTRATEGY.[ID_POLICY])


SELECT * FROM EXT_CRS
SELECT * FROM CRS_EXT


SELECT * 
FROM EXT_CRS A, CRS_EXT B 
WHERE B.POLICY NOT IN( SELECT EXT_CRS.POLICY FROM EXT_CRS)

SELECT * FROM CRS;
CREATE VIEW CRS_EXT AS
SELECT	DISTINCT 
A.POLICY, 
ISNULL(B.ID_POLICY,'') tem_na_CRS,
A.[CONTACT NUMBER],
A.[PRODUCER CODE],
A.[NO#],
A.[PAYMENT REFERENCE NO#],
A.[PRODUCT],
A.[CATEGORY],
A.[CITY], 
A.[INSURED NAME],
A.[USER ID],
A.[NET PREMIUM],
A.[TOTAL PREMIUM],
A.[COMMISSION],
B.[Premium],
B.[Métrica],
B.[Admission Issue Date],
B.[Sponsor DESC],
B.[Sponsor ID],
B.[reference Field 1], 
B.[Policy Holder Formal Name],
B.[Policy Holder Personal ID]
FROM	CRS A
LEFT	JOIN ESTRATEGY B 
ON		A.POLICY = B.ID_POLICY 
AND		ISNULL(B.ID_POLICY,'') = ''
--ORDER	BY 1,2
UNION	ALL
SELECT	DISTINCT 
A.Policy, 
ISNULL(B.ID_POLICY,''),
A.[CONTACT NUMBER],
A.[PRODUCER CODE],
A.[NO#],
A.[PAYMENT REFERENCE NO#],
A.[PRODUCT],
A.[CATEGORY],
A.[CITY], 
A.[INSURED NAME],
A.[USER ID],
A.[NET PREMIUM],
A.[TOTAL PREMIUM],
A.[COMMISSION],
B.[Premium],
B.[Métrica],
B.[Admission Issue Date],
B.[Sponsor DESC],
B.[Sponsor ID],
B.[reference Field 1], 
B.[Policy Holder Formal Name],
B.[Policy Holder Personal ID]
FROM	ESTRATEGY B 
LEFT	JOIN CRS A
ON		A.Policy = B.ID_POLICY 
WHERE	ISNULL(A.Policy,'') = ''
ORDER	BY 1,2


SELECT * FROM CRS



SELECT	
B.[POLICY],
B.[CONTACT NUMBER],
B.[PRODUCER CODE],
B.[NO#],
B.[PAYMENT REFERENCE NO#],
B.[PRODUCT],
B.[CATEGORY],
B.[CITY], 
B.[INSURED NAME],
B.[USER ID],
B.[NET PREMIUM],
B.[TOTAL PREMIUM],
B.[COMMISSION]
FROM	CRS B
WHERE	ISNULL(B.POLICY, '') != ''
AND		NOT EXISTS ( SELECT * FROM ESTRATEGY A WHERE  B.POLICY != A.ID_Policy)


DROP VIEW TEMP

SELECT * FROM TEMP


SELECT * FROM REL


SELECT * FROM ESTRATEGY
SELECT * FROM CRS


SELECT * FROM ESTRATEGY WHERE ID_POLICY = 'AZULI100000868'
 
 












SELECT * FROM CRS;
--CREATE VIEW CRS_EXT AS
---------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------


SELECT	DISTINCT 
A.POLICY, 
ISNULL(B.ID_POLICY,'') tem_na_CRS,
A.[CONTACT NUMBER],
A.[PRODUCER CODE],
A.[NO#],
A.[PAYMENT REFERENCE NO#],
A.[PRODUCT],
A.[CATEGORY],
A.[CITY], 
A.[INSURED NAME],
A.[USER ID],
A.[NET PREMIUM],
A.[TOTAL PREMIUM],
A.[COMMISSION],
B.[Premium],
B.[Métrica],
B.[Admission Issue Date],
B.[Sponsor DESC],
B.[Sponsor ID],
B.[reference Field 1], 
B.[Policy Holder Formal Name],
B.[Policy Holder Personal ID]
FROM	CRS A
LEFT	JOIN ESTRATEGY B 
ON		A.POLICY = B.ID_POLICY 
AND		ISNULL(B.ID_POLICY,'') = ''
--ORDER	BY 1,2
UNION	ALL
SELECT	DISTINCT 
A.Policy, 
ISNULL(B.ID_POLICY,''),
A.[CONTACT NUMBER],
A.[PRODUCER CODE],
A.[NO#],
A.[PAYMENT REFERENCE NO#],
A.[PRODUCT],
A.[CATEGORY],
A.[CITY], 
A.[INSURED NAME],
A.[USER ID],
A.[NET PREMIUM],
A.[TOTAL PREMIUM],
A.[COMMISSION],
B.[Premium],
B.[Métrica],
B.[Admission Issue Date],
B.[Sponsor DESC],
B.[Sponsor ID],
B.[reference Field 1], 
B.[Policy Holder Formal Name],
B.[Policy Holder Personal ID]
FROM	ESTRATEGY B 
LEFT	JOIN CRS A
ON		A.Policy = B.ID_POLICY 
WHERE	ISNULL(A.Policy,'') = ''
ORDER	BY 1,2

---------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------
SELECT	DISTINCT 
B.POLICY, 
ISNULL(A.ID_POLICY,'') tem_na_ext,
B.[CONTACT NUMBER],
B.[PRODUCER CODE],
B.[NO#],
B.[PAYMENT REFERENCE NO#],
B.[PRODUCT],
B.[CATEGORY],
B.[CITY], 
B.[INSURED NAME],
B.[USER ID],
B.[NET PREMIUM],
B.[TOTAL PREMIUM],
B.[COMMISSION],
A.[Premium],
A.[Métrica],
A.[Admission Issue Date],
A.[Sponsor DESC],
A.[Sponsor ID],
A.[reference Field 1], 
A.[Policy Holder Formal Name],
A.[Policy Holder Personal ID]
FROM	ESTRATEGY A
LEFT	JOIN CRS B 
ON		A.ID_POLICY = B.POLICY 
AND		ISNULL(A.POLICY,'') = ''
--ORDER	BY 1,2
UNION	ALL
SELECT	DISTINCT 
B.Policy, 
ISNULL(A.ID_POLICY,''),
B.[CONTACT NUMBER],
B.[PRODUCER CODE],
B.[NO#],
B.[PAYMENT REFERENCE NO#],
B.[PRODUCT],
B.[CATEGORY],
B.[CITY], 
B.[INSURED NAME],
B.[USER ID],
B.[NET PREMIUM],
B.[TOTAL PREMIUM],
B.[COMMISSION],
A.[Premium],
A.[Métrica],
A.[Admission Issue Date],
A.[Sponsor DESC],
A.[Sponsor ID],
A.[reference Field 1], 
A.[Policy Holder Formal Name],
A.[Policy Holder Personal ID]
FROM	CRS B 
LEFT	JOIN ESTRATEGY A
ON		A.ID_Policy = B.POLICY 
WHERE	ISNULL(B.Policy,'') = ''
ORDER	BY 1,2

--DROP TABLE REL

SELECT * FROM SOLUCAO