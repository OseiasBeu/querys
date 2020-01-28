USE COBRANCA

DECLARE @Apolice as varchar(20);
DECLARE @CPF as Varchar(20);

SET @Apolice='n'
SET @CPF='%70421133147%' --Usar o % no inicio e no fim do CPF


SELECT RETORNO_BANCOS.Cod_Banco,BANCOS_CODIGO_RETORNO.Descricao,BANCOS_CODIGO_RETORNO.Status,Dt_Transacao  FROM RETORNO_BANCOS
Inner join BANCOS_CODIGO_RETORNO on BANCOS_CODIGO_RETORNO.Cod_Retorno=RETORNO_BANCOS.Cod_Retorno
WHERE Invoice_ID IN
(
SELECT Invoice_ID FROM REMESSA_BANCOS WHERE Apolice= @Apolice OR Personal_ID like @CPF
)

Union All 

SELECT Retorno_consolidado.Cod_Banco,BANCOS_CODIGO_RETORNO.Descricao,BANCOS_CODIGO_RETORNO.Status,Dt_Transacao FROM RETORNO_CONSOLIDADO 
Inner join BANCOS_CODIGO_RETORNO on BANCOS_CODIGO_RETORNO.Cod_Retorno=RETORNO_CONSOLIDADO.cod_Retorno
WHERE Invoice_ID IN
(
SELECT Invoice_ID from FATURAMENTO_CONSOLIDADO WHERE Apolice= @Apolice OR Personal_ID like @CPF
)order by Dt_Transacao desc