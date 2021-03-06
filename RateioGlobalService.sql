USE ASSISTENCIA
---------------------------------
DECLARE @REFERENCIA  VARCHAR(6)
DECLARE @NOTA		 VARCHAR(80)
DECLARE @PRESTADORA  VARCHAR(50)
DECLARE @VENCIMENTO	 DATE
DECLARE @RECEBIMENTO DATE
DECLARE @VALOR_NOTA	 NUMERIC(10,2)
-------------------------------------
SET @REFERENCIA = '201904'
SET @NOTA		= '002972'		 
SET @PRESTADORA = 'IKE'
SET @VENCIMENTO = '2019-05-28'
SET @RECEBIMENTO= '2019-05-14'
SET @VALOR_NOTA = 81558.87
-----------------------------------

SELECT  CONTRATO, PRODUTO
INTO #PROD_TEMP
FROM Sponsors_Contrato 
WHERE CONTRATO IN(566,567,734,737,738) 
AND STATUS = 'ATIVO' 
AND ID <> 1171 
ORDER BY CONTRATO ASC

-----------------------------
SELECT TOP(6) B.CONTRATO, A.SPONSOR, A.PRODUTO, A.Qtd, A.EMAIL_DATA
INTO #QTDS_TEMP
FROM Relatorio_Gerencial AS A
INNER JOIN #PROD_TEMP B
ON A.Produto = B.PRODUTO
ORDER BY Time_Stamp DESC

-----------------------------
SELECT * FROM #QTDS_TEMP 
SELECT * FROM Nota_Fiscal

-------------------------------
--DECLARE @REFERENCIA  VARCHAR(6)
--DECLARE @NOTA		 VARCHAR(80)
--DECLARE @PRESTADORA  VARCHAR(50)
--DECLARE @VENCIMENTO	 DATE
--DECLARE @RECEBIMENTO DATE
--DECLARE @VALOR_NOTA	 NUMERIC(10,2)
-------------------------------
--SET @REFERENCIA = '201904'
--SET @NOTA		= '002972'		 
--SET @PRESTADORA = 'IKE'
--SET @VENCIMENTO = '2019-05-28'
--SET @RECEBIMENTO= '2019-05-14'
--SET @VALOR_NOTA = 81558.87
-------------------------------

DECLARE @QTD_TOTAL DECIMAL(5)
SET @QTD_TOTAL = (SELECT CONVERT(DECIMAL(5),SUM(Qtd)) from #QTDS_TEMP)
-----------------------------
SELECT
@PRESTADORA		AS PRESTADORA,
CONTRATO		AS CONTRATO,
SPONSOR			AS COD_SPONSOR,
PRODUTO,
@NOTA			AS NOTA_FISCAL,
@RECEBIMENTO	AS DATA_RECEBIMENTO,
@REFERENCIA		AS REFERENCIA,
@VENCIMENTO		AS VENCIMENTO,
convert(NUMERIC(4,2),Qtd/ @QTD_TOTAL) * @VALOR_NOTA AS VALOR_ITEM,
convert(NUMERIC(4,2),Qtd/ @QTD_TOTAL) * 0 AS VALOR_EXCECAO,
convert(NUMERIC(4,2),Qtd/ @QTD_TOTAL) * 0 AS VALOR_MINIMO,
convert(NUMERIC(4,2),Qtd/ @QTD_TOTAL) * 0 AS TAXA_ADMINISTRACAO,
convert(NUMERIC(4,2),Qtd/ @QTD_TOTAL) * @VALOR_NOTA AS VALOR_TOTAL,
' ' AS OBSERVACOES,
0 AS TIPO_NF,
GETDATE() AS TIME_STAMP,
0 AS BASE,
NULL AS AUTORIZACAO_AH,
NULL AS AUTORIZACAO_PL,
NULL AS CANCELAMENTO,
NULL AS ENDOSSO
	INTO #TEMP_nota_Fiscal
FROM #QTDS_TEMP

-----------------------------
	
BEGIN TRANSACTION
INSERT INTO Nota_Fiscal
SELECT * FROM #TEMP_nota_Fiscal
COMMIT

SELECT 'INSERT REALIZADO COM SUCESSO!!!!'
SELECT * FROM Nota_Fiscal WHERE NOTA_FISCAL = @NOTA

--DROP TABLE #TEMP_nota_Fiscal
--DROP TABLE #QTDS_TEMP
--DROP TABLE #PROD_TEMP

