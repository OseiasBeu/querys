USE CAPITALIZACAO_PAG
TRUNCATE TABLE RANGE_FINAL
TRUNCATE TABLE RANGE_TMP


-- INSERE HEADER (OBS: ALTERAR COD_PRODUTO DE ACORDO COM O PRODUTO A SER GERADO)

-------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO RANGE_FINAL
SELECT TOP(1) SUBSTRING(HEADER,1,16)+CONVERT(VARCHAR(8), GETDATE(), 112)+CONVERT(VARCHAR(8),YEAR(GETDATE()))+'001',
'1645' -- Alterar Contrato
FROM CONTROLE_RANGE
WHERE COD_PRODUTO ='1645' -- Alterar Contrato

--------------------------------------------------------------------------------------------------------------------------------------------------

-- INSERE NÚMEROS DA SORTE NA TABELA DE AUXÍLIO 
--(OBS: ALTERAR QUANTIDADE NA FUNÇÃO TOP DE ACORDO COM A QUANTIDADE POR CONTRATO, ALTERAR TAMBÉM CONTRATO)

INSERT INTO RANGE_TMP
SELECT TOP(120)'1645', NSORTE FROM CAPITALIZACAO_HOMOLOGACAO..RANGE_MILHAO
ORDER BY NEWID() DESC -- Série 1 Milhão

INSERT INTO RANGE_TMP
SELECT TOP(4000)'4725', NSORTE FROM CAPITALIZACAO_HOMOLOGACAO..ORDEM_RANGE_MIL
ORDER BY NEWID() DESC -- Série 100 Mil


--------------------------------------------------------------------------------------------------------------------------------------------------

--INSERE REGISTROS 1 MILHÃO

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO RANGE_FINAL
SELECT 'D201907'+ -- Alterar Mês de Sorteio
'00100'+B.NSORTE+MAX(A.PU)+'201907'+ -- Alterar Mês Sorteio
CASE 
WHEN A.SORTEIO > 15 THEN '27' -- Alterar dia do último sábado do sorteio
ELSE '06' END -- Alterar dia do primeiro sábado do sorteio
 + 'CHUBBSEGUROSSA0     ' + REPLICATE('0',9-LEN(CAST(ROW_NUMBER() OVER(ORDER BY A.HEADER DESC) AS VARCHAR)))+CAST(ROW_NUMBER() OVER(ORDER BY A.HEADER DESC) AS VARCHAR)
 ,'1645' -- ALTERAR CONTRATO
FROM RANGE_TMP B
INNER JOIN 
CONTROLE_RANGE A
ON A.COD_PRODUTO = B.COD_PRODUTO
GROUP BY HEADER,SORTEIO,NSORTE
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- INSERE REGISTROS 100 MIL
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO RANGE_FINAL
SELECT 'D201906'+ -- Alterar Mês de Sorteio
'001000'+B.NSORTE+MAX(A.PU)+'201906'+ -- Alterar Mês Sorteio
CASE 
WHEN A.SORTEIO > 15 THEN '29' -- Alterar dia do último sábado do sorteio
ELSE '08' END -- Alterar dia do primeiro sábado do sorteio
 + 'CHUBBSEGUROSSA0     ' + REPLICATE('0',9-LEN(CAST(ROW_NUMBER() OVER(ORDER BY A.HEADER DESC) AS VARCHAR)))+CAST(ROW_NUMBER() OVER(ORDER BY A.HEADER DESC) AS VARCHAR)
 ,'4725' -- ALTERAR CONTRATO
FROM RANGE_TMP B
INNER JOIN 
CONTROLE_RANGE A
ON A.COD_PRODUTO = B.COD_PRODUTO
GROUP BY HEADER,SORTEIO,NSORTE


 

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- INSERE TRAILER 

---------------------------------------------------------------------------------
INSERT INTO  RANGE_FINAL
SELECT 'T'+REPLICATE('0',9-LEN(COUNT(ID)+1)) + CAST(COUNT(ID)+1 AS VARCHAR)+
+REPLACE((CAST(((COUNT(A.ID)-2) * MAX(0.40)) AS MONEY) / 10000000000),'.','')+'00000',
B.plano
FROM RANGE_FINAL A
INNER JOIN ICATU_CONTRATOS_ACE B
ON A.COD_PRODUTO = B.PLANO
WHERE SUBSTRING(A.LINHA,1,1) NOT LIKE '%H%' OR SUBSTRING(A.LINHA,1,1) NOT LIKE '%T%'
GROUP BY B.PLANO


-----------------------------------------------------------------------------------


/*CREATE TABLE RANGE_ARQUIVO
(ID INT IDENTITY (1,1),
NUMEROS NVARCHAR(12),
REFERENCIA NVARCHAR(14),
COD_PRODUTO NVARCHAR(4) )*/

SELECT * FROM RANGE_FINAL

SELECT 'BPE534|00001/'+SUBSTRING(LINHA,14,5)+'|2019-04-26|2024-04-26' FROM RANGE_FINAL
WHERE LINHA LIKE '%CHUBB%' -- Arquivo para processamento 100k

SELECT 'BPE534|00001/'+SUBSTRING(LINHA,13,6)+'|2019-04-26|2024-04-26' FROM RANGE_FINAL
WHERE LINHA LIKE '%CHUBB%' -- Arquivo para processamento 1 Milhão


