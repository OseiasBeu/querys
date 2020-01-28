USE ASSISTENCIA
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
DECLARE @TO_DATE VARCHAR(10)
------------------------------------------------------------------------------------------------------------
SET @TO_DATE = '05/01/2019'
------------------------------------------------------------------------------------------------------------
--CONSULTA AS QUANTIDADES E INSERE EM UMA TABELA TEMPORÁRIA
SELECT DISTINCT	
		A.Produto AS PROD_RELA_GER,
		B.PRODUTO AS PROD_SPON_CON,
		B.COD_SPONSOR,
		B.SPONSOR,
		A.To_Date,
		A.Qtd AS QTD_REGISTROS,
		B.CONTRATO,
		B.SUCURSAL_AH,
		B.RAMO_AH,
		B.APOLICE_AH,
		B.SUCURSAL_PL,
		B.RAMO_PL,
		B.APOLICE_PL,
		B.DESC_PRODUTO,
		B.DESC_ASSISTENCIA,
		B.STATUS,
		B.Time_Stamp
INTO #TEMP_SPONSORS_QTD
FROM relatorio_gerencial A
	INNER JOIN Sponsors_Contrato B 
		ON A.PRODUTO = B.PRODUTO
WHERE To_Date = @TO_DATE 
	AND QTD = 0 
	AND B.[STATUS] LIKE 'ATIVO%'
ORDER BY B.Time_Stamp DESC
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------

SELECT * 
FROM #TEMP_SPONSORS_QTD A WITH(NOLOCK) 
	INNER JOIN CTRL_OPERACOES..CTRL_OPERACIONAL B
	ON A.COD_SPONSOR = B.SponsorID


SELECT TOP 100 * 
FROM CTRL_OPERACOES..CTRL_OPERACIONAL WITH(NOLOCK)
WHERE SponsorID LIKE '%R69%'
ORDER BY TIME_STAMP DESC


SELECT * FROM relatorio_gerencial WHERE Produto = 'BPE524' ORDER BY Time_Stamp DESC
SELECT * FROM relatorio_gerencial WHERE Produto = 'BPE294' ORDER BY Time_Stamp DESC


