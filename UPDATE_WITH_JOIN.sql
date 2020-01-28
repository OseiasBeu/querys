START TRANSACTION;
UPDATE
oms.oms2 AS A
join nps.nps_datalake as B  
ON A.Sequence = B.PEDIDO
SET A.ClientName = B.NOME,
	A.City = B.CIDADE
where B.PEDIDO in(
'29808065')