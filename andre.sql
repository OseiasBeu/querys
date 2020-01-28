SELECT Count(1),
b.Prestadora,b.contrato,b.COD_SPONSOR,a.produto,'002357','201901'

 FROM Relatorio_Gerencial A
 INNER JOIN Sponsors_Contrato B
 ON A.Sponsor = B.COD_SPONSOR 
 AND A.Produto = B.PRODUTO
WHERE B.PRESTADORA LIKE '%IKE%' AND B.STATUS = 'ATIVO' AND EMAIL_DATA LIKE '%02/01/2019%' -- Alterar Para o mês de referência da Nota Fiscal.
AND B.CONTRATO  not IN (
'2158',
'2159',
'2160',
'2163',
'2164',
'2166',
'2091',
'2000',
'2001',
'566',
'567',
'734',
'737',
'738',
'783',
'896',
'897',
'898',
'1168',
'1294',
'1327',
'2161',
'2162',
'2165',
'2028',
'1986',
'1987',
'1988'
--'2243',
--'2248'
)
and a.Qtd > 0 AND B.COD_SPONSOR NOT LIKE '%ACS%'

GROUP By b.Prestadora,b.contrato,b.COD_SPONSOR,a.produto
HAVING count(1)>1
order by contrato ASC

SELECT * 
FROM Nota_Fiscal 
WHERE CONTRATO 
	IN('2243','2248') 
ORDER BY REFERENCIA DESC

SELECT * FROM ASSISTENCIA..Sponsors_Contrato
WHERE PRODUTO LIKE '%BPE524%'

commit