USE COBRANCA
--Cobran�a nossa
DECLARE @Banco as varchar(20);
DECLARE @Agencia as Varchar(20);
DECLARE @Conta as Varchar(20);

/*
001 Banco do Brasil
104 Caixa economica Federal
341 Itau
041 Banrisul
037 Banpar�
033 Banespa
353 Santander
356 Banco Real
237 Bradesco
399 HSBC
047 Banese
085 Cecred
*/
SET @Banco='341'
SET @Agencia='2969' 
SET @Conta='%'

--Usar % quando n�o souber ou n�o for utilizar algum filtro.

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
WHERE   AG_Cliente like @Agencia AND CC_Cliente like @Conta and A.Cod_Banco = @Banco
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
WHERE    AG_Cliente like @Agencia AND CC_Cliente like @Conta and A.Cod_Banco = @Banco
ORder BY Dt_Transacao DESC;