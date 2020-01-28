USE COBRANCA
--Cobrança nossa
DECLARE @Apolice as varchar(20);
DECLARE @CPF as Varchar(20);

SET @Apolice='BZGW21571430415'
SET @CPF='n' --Usar o % no inicio e no fim do CPF

-- Cobrando
SELECT  'Cobrança em aberto' as 'Tipo',
				A.APOLICE 
				,Cast(a.premio as real)/100 as 'Premio'
                ,NOME_CLIENTE 
                ,PERSONAL_ID 
                ,AG_CLIENTE 
                ,CC_CLIENTE 
                ,A.COD_BANCO 
                ,B.DESCRICAO 
                ,B.STATUS       
                ,DT_TRANSACAO as 'Data Movimentação'
FROM    COBRANCA..REMESSA_BANCOS A 
        INNER JOIN COBRANCA..BANCOS_CODIGO_RETORNO B 
        ON A.COD_BANCO = B.COD_BANCO 
        AND A.COD_RETORNO = B.COD_RETORNO 
WHERE   APOLICE = @apolice OR Personal_ID like @CPF
--ORDER BY Dt_Transacao desc;
UNION all
-- Fechado
SELECT 'Cobrança fechada' as 'Tipo',			
				A.APOLICE
				,Cast(a.premio as real)/100 as 'Premio'
                ,NOME_CLIENTE 
                ,PERSONAL_ID 
                ,AG_CLIENTE 
                ,CC_CLIENTE 
                ,A.COD_BANCO 
                ,B.DESCRICAO 
                ,B.STATUS       
                ,DT_TRANSACAO as 'Data Movimentação'  
FROM    COBRANCA..FATURAMENTO_CONSOLIDADO A 
        INNER JOIN COBRANCA..BANCOS_CODIGO_RETORNO B 
        ON A.COD_BANCO = B.COD_BANCO 
        AND A.COD_RETORNO = B.COD_RETORNO 
WHERE   APOLICE = @apolice OR Personal_ID like @CPF
--ORder BY Dt_Transacao DESC;

--Cobranças Cartão
Union all 
--Cobrando

SELECT 'Cartão Aberto' as 'Tipo',
		A.DS_APOLICE,
		a.VL_PREMIO as 'premio',
		'Cartão' as 'Nome',
		A.PERSONAL_ID,
		'Cartão',
		'Cartão',
		'Cartão',
		B.dsc_sitefResponseCode,
		B.resposta_sitefResponseCode,
		A.DT_INSTALL as 'Data Movimentação'		
 FROM TB_ESITEF A 
 LEFT JOIN [TMP_SOFTWARE_EXPRESS].[DBO].[DOHASHPAYMENT_RESPONSE_SITEF] B
    ON A.CD_RETORNO = B.SITEFRESPONSECODE
 where A.DS_APOLICE like @Apolice Or A.PERSONAL_ID like @CPF

Union All
-- Cobrança fechada

SELECT 'Cartão Fechada' as 'Tipo',
		A.DS_APOLICE,
		a.VL_PREMIO as 'premio',
		'Cartão' as 'Nome',
		A.PERSONAL_ID,
		'Cartão',
		'Cartão',
		'Cartão',
		B.dsc_sitefResponseCode,
		B.resposta_sitefResponseCode,
		A.DT_INSTALL as 'Data Movimentação'	
 FROM TB_ESITEF_CONSOLIDADO A 
 LEFT JOIN [TMP_SOFTWARE_EXPRESS].[DBO].[DOHASHPAYMENT_RESPONSE_SITEF] B
    ON A.CD_RETORNO = B.SITEFRESPONSECODE
 where A.DS_APOLICE like @Apolice Or A.PERSONAL_ID like @CPF
ORDER BY 'Data Movimentação' DESC



