-- PASSO 1
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--VERIFICA NOVOS PRODUTOS PARA CADASTRO
SELECT *
	FROM CTRL_OPERACOES..CTRL_SERVICOS 
WHERE Flag_Assistencia = ''

--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--VERIFICA A QUANTIDADE DE PRODUTOS POR SPONSOR
SELECT 
	COUNT(SPONSOR_ID) QUANTIDADE_DE_PRODUTOS_POR_SPONSOR, 
	Sponsor_Desc 
	FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Flag_Assistencia = ''
GROUP BY Sponsor_Desc
--HAVING COUNT(SPONSOR_ID) <> 1
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--PASSO 2
-- SE O PRODUTO POSSUIR ASSISTÊNCIA,INSERIR O MESMO NA TABELA DE SPONSORS_CONTRATO
-- INSERIR PRODUTO DENTRO DA TABELA SPONSORS_CONTRATO
-- QUERY:
-- P:\Operações\Massificado\BillingFiles\BZ_CtrlPrest.Serviço\Assistencia\DOCUMENTAÇÃO\InsertSponsorsContratos.sql


--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--PASSO 3
--VERIFICAR SE O PRODUTO TEM ASSISTÊNCIA DENTRO DOS ARQUVISO DE KICK-OFF
--SE O PRODUTO POSSUIR ASSISTÊNCIA, ATUALIZAR TABELA CTRL_SERVICOS COM A LETRA 'S' NA COLUNA FLAG_ASSISTENCIA, CASO CONTRARIO ATUALIZAR COM A LETRA 'N'
--ATUALIZA CTRL_SERVICOS

BEGIN TRANSACTION 
UPDATE CTRL_OPERACOES..CTRL_SERVICOS
SET Flag_Assistencia = 'S'
WHERE Flag_Assistencia = ''
AND Policy_Main_Product_Package_ID = 'BZBDP760'
--COMMIT
--OBS.: NÃO ESQUECER DE COMMITAR
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------


--PASSO 4
--CADASTRAR PROPDUTO NO DATAFEED
--ENDEREÇO:
-- https://login.chubblatinamerica.com/Secure/Default.aspx
