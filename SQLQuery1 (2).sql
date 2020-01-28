SELECT * FROM ASSISTENCIA..NOTA_FISCAL WHERE NOTA_FISCAL = '015550'


BEGIN TRANSACTION
DELETE FROM ASSISTENCIA..Nota_Fiscal
WHERE NOTA_FISCAL = '015550'
AND ID = 19953

--COMMIT

SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Flag_Assistencia = ' ' 
ORDER BY time_stamp DESC

USE PAC
select * from [FORNECEDOR].[ConfirmacaoImpressao] ORDER BY dtEnvioGrafica DESC


SELECT * FROM PAC.Arquivo WHERE codKit
IN
('BDP520',
'BDP521',
'BDP522',
'BDP523') 
AND timeStamp BETWEEN '2018-12-01' AND '2018-12-31'
ORDER BY timeStamp DESC




select * from [PAC].[FORNECEDOR].ConfirmacaoImpressao order by dtEnvioGrafica desc



SELECT * FROM SPONSORS_CONTRATO
WHERE PRODUTO LIKE '%BDT015%'


USE ASSISTENCIA
SELECT * F

select * from CTRL_OPERACOES..CTRL_FTP where [login] like '%acesegur%'