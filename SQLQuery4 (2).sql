BEGIN TRANSACTION
INSERT INTO ASSISTENCIA..Nota_Fiscal

SELECT 
'IKE' AS PRESTADORA, 

-- CONTRATO
B.CONTRATO AS CONTRATO,

-- C�DIGO SPONSOR
B.COD_SPONSOR AS COD_SPONSOR,

-- PRODUTO 

B.PRODUTO AS PRODUTO,

--NOTA FISCAL

'000000' AS NOTA_FISCAL,

-- DATA RECEBIMENTO

'2019-05-13' AS DATA_RECEBIMENTO,

-- REFER�NCIA 
'201904' AS REFERENCIA,

-- VENCIMENTO
'2019-05-28' AS VENCIMENTO,

-- VALOR_ITEM
B.CUSTO_UNITARIO  AS VALOR_ITEM,

-- VALORES EXCE��O,MINIMO,ADM.
0 AS VALOR_EXCECAO,
0 AS VALOR_MINIMO,
0 AS TAXA_ADMINISTRACAO,
(B.CUSTO_UNITARIO*A.QTD) AS VALOR_TOTAL,
'' AS OBSERVACOES,
0 AS TIPO_NF,
GETDATE() AS TIME_STAMP,
0 AS BASE,
null AS AUTORIZACAO_AH,
null AS AUTORIZACAO_PL,
null AS CANCELAMENTO,
null as ENDOSSO
 FROM Relatorio_Gerencial A
 INNER JOIN Sponsors_Contrato B
 ON A.Sponsor = B.COD_SPONSOR 
 AND A.Produto = B.PRODUTO
WHERE B.PRESTADORA LIKE '%IKE%' AND B.STATUS = 'ATIVO' AND EMAIL_DATA LIKE '%04/01/2019%' -- Alterar Para o m�s de refer�ncia da Nota Fiscal. 04/01/2019
AND B.CONTRATO  not IN (
'566',
'567',
'734',
'737',
'738',
'744',
--'785',
--'786',
--'801',
--'844',
--'845',
'847',
--'889',
--'1080',
--'1101',
--'1104',
--'1110',
--'1111',
--'1190',
--'1209',
--'1213',
--'1307',
--'1309',
'1340',
'1431',
'1438',
--'1499',
--'1613',
--'1846',
--	'1881',
'2027',
--'2158',
--'2159',
--'2160',
--'2163',
--'2164',
--'2171',
--'2172',
--'2173',
--'2174',
--'2366',
--'2368',
--'2369',
--'2371',
--'2375',
--'2376',
--'2381',
--'2382',
'2483',
'2484',
'2485',
'2486',
'2487',
'2490',
'2492',
'2493',
'2499',
'2500',
'2502',
'2563'
)
and a.Qtd > 0 AND B.COD_SPONSOR NOT LIKE '%ACS%'
order by contrato ASC

commit