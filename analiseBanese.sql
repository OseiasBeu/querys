USE PAC
SELECT * 
FROM PAC.Arquivo 
WHERE codKit = 'BDP520' 
ORDER BY timeStamp Desc


SELECT
SUBSTRING([Policy Main Product Package ID],3,6) AS PRODUTO,[Policy Main Product Package ID],*
FROM BANESE_MICRO 



SELECT
		  [Policy Main Product Package ID],
	COUNT([Policy Main Product Package ID]) AS SOMA_POR_PRODUTO
FROM BANESE_MICRO 
GROUP BY [Policy Main Product Package ID] 


SELECT 
	SUBSTRING(A.ARQUIVO,27,9) AS DATA_REFERENTE, 
	SUBSTRING(A.ARQUIVO,13,6) AS PRODUTO_PDF,
	SUBSTRING(B.[Policy Main Product Package ID],3,6) AS PRODUTO_MICRO
FROM LEITURA_CERTIFICADO_PDF A
	INNER JOIN BANESE_MICRO  B
		ON SUBSTRING(B.[Policy Main Product Package ID],3,6) = SUBSTRING(A.ARQUIVO,13,6)


		SELECT * FROM LEITURA_CERTIFICADO_PDF
		

		SELECT * FROM BANESE_MICRO
		WHERE POLICY IN (SELECT SUBSTRING(POLICY,14,15) FROM LEITURA_CERTIFICADO_PDF)


SELECT
	codKit,
	COUNT(codKit) AS REPETIÇÃO_PRODUTO,
	SUM(paginas) AS QUANTIDADE_PAGINAS
	FROM PAC.PAC.Arquivo
	GROUP BY codKit
	ORDER BY QUANTIDADE_PAGINAS DESC
	

SELECT 	* FROM PAC.PAC.Arquivo 
	WHERE [timeStamp] = '2019-01-02'  --'2019-01-10' '2019-01-16' '2019-01-21''2019-01-22' '2019-01-24' '2019-01-29' '2019-01-30' '2019-01-31' 
	ORDER BY [timeStamp] Desc


select * from ASSISTENCIA..Sponsors_Contrato where DESC_PRODUTO like '%banese%' and STATUS like '%ativo%'

--------------------
BDP282
BDP520
BDP521
BDP521
BDP571
BDP522
BDP523
--PRODUTO BANESE
--------------------
USE PAC
SELECT codKit,
		SUM(paginas)	AS QTD_PAGINAS_PRODUTO,
		SUM(paginas)/2	AS QTD_docs
	FROM .PAC.Arquivo
	WHERE codKit IN('BPE525',
					'BPE534',
					'@BDP96',
					'BPE013',
					'@BPE07',
					'BPE189',
					'BPE533',
					'BZZ14 ',
					'BDP735',
					'BDP736',
					'BDP737',
					'BDP738',
					'BDP739',
					'BDP740',
					'BDP741',
					'BDP742')
	AND [timeStamp] > '2018-12-01'
	AND [timeStamp] < '2019-01-01'
	GROUP BY codKit
	--ORDER BY [timeStamp] DESC


SELECT *
	FROM .PAC.Arquivo
	WHERE codKit IN('BPE525',
					'BPE534',
					'@BDP96',
					'BPE013',
					'@BPE07',
					'BPE189',
					'BPE533',
					'BZZ14 ',
					'BDP735',
					'BDP736',
					'BDP737',
					'BDP738',
					'BDP739',
					'BDP740',
					'BDP741',
					'BDP742')
	AND [timeStamp] > '2018-12-01'
	AND [timeStamp] < '2019-01-01'
	ORDER BY [timeStamp] DESC

SELECT 
	SUM(paginas) AS QUANTIDADE_GERAL_DE_PAGINAS
	FROM .PAC.Arquivo
	WHERE codKit IN('BPE525',
					'BPE534',
					'@BDP96',
					'BPE013',
					'@BPE07',
					'BPE189',
					'BPE533',
					'BZZ14 ',
					'BDP735',
					'BDP736',
					'BDP737',
					'BDP738',
					'BDP739',
					'BDP740',
					'BDP741',
					'BDP742')
	AND [timeStamp] > '2018-12-01'
	AND [timeStamp] < '2019-01-01'

