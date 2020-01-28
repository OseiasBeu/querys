------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
--------------------------------MODIFICAR DATA DAS VARIÁVEIS------------------------------------------
DECLARE @DATAINICIAL DATE, @DATAFINAL DATE
SET @DATAINICIAL = '2019-05-01'
SET @DATAFINAL   = '2019-05-31'
------------------------------------------------------------------------------------------------------
SELECT
	A.codKit, 
	B.descricao,
	SUM(A.paginas) AS QTD_PAGINAS,
	CASE A.idTipoOperacao WHEN 1 THEN '1º VIA' ELSE '2º VIA' END AS CENTRO_DE_CUSTO2
FROM PAC.Arquivo A
	INNER JOIN Ace.Produtos B
		ON A.codKit = B.codProduto 
WHERE [timeStamp] BETWEEN @DATAINICIAL AND @DATAFINAL
GROUP BY A.codKit, 
B.descricao, 
CASE A.idTipoOperacao WHEN 1 THEN '1º VIA' ELSE '2º VIA' END
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
