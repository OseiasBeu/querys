USE COBRANCA
--Cobran�a nossa
DECLARE @Apolice as varchar(20);
DECLARE @CPF as Varchar(20);

SET @Apolice='BZGW21571430415'
SET @CPF='n' --Usar o % no inicio e no fim do CPF

-- Cobrando
SELECT  'Cobran�a em aberto' as 'Tipo',
				A.APOLICE 
				,Cast(a.premio as real)/100 as 'Premio'
                ,NOME_CLIENTE 
                ,PERSONAL_ID 
                ,AG_CLIENTE 
                ,CC_CLIENTE 
                ,A.COD_BANCO 
                ,B.DESCRICAO 
                ,B.STATUS       
                ,DT_TRANSACAO as 'Data Movimenta��o'
FROM    COBRANCA..REMESSA_BANCOS A 
        INNER JOIN COBRANCA..BANCOS_CODIGO_RETORNO B 
        ON A.COD_BANCO = B.COD_BANCO 
        AND A.COD_RETORNO = B.COD_RETORNO 
WHERE   APOLICE = @apolice OR Personal_ID like @CPF
--ORDER BY Dt_Transacao desc;
UNION all
-- Fechado
SELECT 'Cobran�a fechada' as 'Tipo',			
				A.APOLICE
				,Cast(a.premio as real)/100 as 'Premio'
                ,NOME_CLIENTE 
                ,PERSONAL_ID 
                ,AG_CLIENTE 
                ,CC_CLIENTE 
                ,A.COD_BANCO 
                ,B.DESCRICAO 
                ,B.STATUS       
                ,DT_TRANSACAO as 'Data Movimenta��o'  
FROM    COBRANCA..FATURAMENTO_CONSOLIDADO A 
        INNER JOIN COBRANCA..BANCOS_CODIGO_RETORNO B 
        ON A.COD_BANCO = B.COD_BANCO 
        AND A.COD_RETORNO = B.COD_RETORNO 
WHERE   APOLICE = @apolice OR Personal_ID like @CPF
--ORder BY Dt_Transacao DESC;

--Cobran�as Cart�o
Union all 
--Cobrando

SELECT 'Cart�o Aberto' as 'Tipo',
		A.DS_APOLICE,
		a.VL_PREMIO as 'premio',
		'Cart�o' as 'Nome',
		A.PERSONAL_ID,
		'Cart�o',
		'Cart�o',
		'Cart�o',
		B.dsc_sitefResponseCode,
		B.resposta_sitefResponseCode,
		A.DT_INSTALL as 'Data Movimenta��o'		
 FROM TB_ESITEF A 
 LEFT JOIN [TMP_SOFTWARE_EXPRESS].[DBO].[DOHASHPAYMENT_RESPONSE_SITEF] B
    ON A.CD_RETORNO = B.SITEFRESPONSECODE
 where A.DS_APOLICE like @Apolice Or A.PERSONAL_ID like @CPF

Union All
-- Cobran�a fechada

SELECT 'Cart�o Fechada' as 'Tipo',
		A.DS_APOLICE,
		a.VL_PREMIO as 'premio',
		'Cart�o' as 'Nome',
		A.PERSONAL_ID,
		'Cart�o',
		'Cart�o',
		'Cart�o',
		B.dsc_sitefResponseCode,
		B.resposta_sitefResponseCode,
		A.DT_INSTALL as 'Data Movimenta��o'	
 FROM TB_ESITEF_CONSOLIDADO A 
 LEFT JOIN [TMP_SOFTWARE_EXPRESS].[DBO].[DOHASHPAYMENT_RESPONSE_SITEF] B
    ON A.CD_RETORNO = B.SITEFRESPONSECODE
 where A.DS_APOLICE like @Apolice Or A.PERSONAL_ID like @CPF
ORDER BY 'Data Movimenta��o' DESC



