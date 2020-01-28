USE PAC

---------------------------------------------
DECLARE @DataInicio VARCHAR(MAX)
DECLARE @DataFim	VARCHAR(MAX)
---------------------------------------------
SET @DataInicio = '2019-02-01'
SET @DataFim	= '2019-04-17'
---------------------------------------------


SELECT codKit,
		SUM(paginas)	AS QTD_PAGINAS_PRODUTO,
		SUM(paginas)/2	AS QTD_docs
	FROM .PAC.Arquivo
	WHERE codKit IN('@BCF73',
'@BCF81',
'@BDPG3',
'BPE291',
'@BPED2')

	AND [timeStamp] >  @DataInicio
	AND [timeStamp] <  @DataFim
	GROUP BY codKit
	--ORDER BY [timeStamp] DESC


SELECT *
	FROM .PAC.Arquivo
	WHERE codKit IN('@BCF73',
'@BCF81',
'@BDPG3',
'BPE291',
'@BPED2')

	AND [timeStamp] > @DataInicio
	AND [timeStamp] < @DataFim
	ORDER BY [timeStamp] DESC

SELECT 
	SUM(paginas) AS QUANTIDADE_GERAL_DE_PAGINAS,
	SUM(paginas)*2 AS QUANTIDADE_DE_DOCS
	FROM .PAC.Arquivo
	WHERE codKit IN('@BCF73',
'@BCF81',
'@BDPG3',
'BPE291',
'@BPED2')
	AND [timeStamp] > @DataInicio
	AND [timeStamp] < @DataFim

