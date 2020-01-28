USE PAC


SELECT * 
FROM PAC.Arquivo  WITH(NOLOCK)
WHERE [timeStamp] < '2019-03-29'
AND	  [timeStamp] >	'2019-03-01' 
ORDER BY TIMESTAMP DESC

SELECT * FROM ASSISTENCIA..Sponsors_Contrato  WITH(NOLOCK) WHERE SPONSOR LIKE '%VIVO%' AND [STATUS] LIKE 'ATIVO%'



SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_ID like '%BDP587%'



CREATE TABLE [dbo].[ANALISE_VIVO_TEMP](
	[LINHA] [varchar](max) NULL,
	[NOME_ARQUIVO] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

SELECT 
* FROM 
[ANALISE_VIVO_TEMP]

SELECT 
SUBSTRING(LINHA, CHARINDEX('_',LINHA) + 1, 6) AS PRODUTO,
COUNT(SUBSTRING(LINHA, CHARINDEX('_',LINHA) + 1, 6)) AS REPETIÇÕES
FROM [ANALISE_VIVO_TEMP]
GROUP BY SUBSTRING(LINHA, CHARINDEX('_',LINHA) + 1, 6)

SELECT * FROM PAC.Arquivo where codKit in(
'BSV393',
'BSV394',
'BSV395') order by timeStamp desc

SELECT * FROM PAC.Arquivo where codKit in(
'BSV611',
'BSV613',
'BSV615') order by timeStamp desc


SELECT * FROM PAC.Arquivo where codKit in(
'BPE380','BPE381','BPE382') order by timeStamp desc

SELECT * FROM PAC.Arquivo where codKit in(
'BPE383','BPE384','BPE385') order by timeStamp desc

SELECT * FROM PAC.Arquivo where codKit in(
'BPE386','BPE387','BPE388') order by timeStamp desc



SELECT * FROM PAC.Arquivo where codKit in(
'BPE398','BPE399','BPE400') order by timeStamp desc

SELECT * FROM PAC.Arquivo where codKit in(
'BPE401','BPE402','BPE403') order by timeStamp desc


SELECT * FROM PAC.Arquivo where codKit in(
'BPE419','BPE420','BPE421') order by timeStamp desc  BSV635,BSV637


SELECT * FROM PAC.Arquivo where codKit in(
'BSV635','BSV637') order by timeStamp desc  

SELECT * FROM PAC.Arquivo where codKit in(
'BSV431','BSV432') order by timeStamp desc  






