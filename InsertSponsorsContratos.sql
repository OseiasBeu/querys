--INSTRUÇÕES:
-- 1° ATUALIZAR VARIÁVEIS
-- 2° NÃO ESQUECER DE COMMITAR


USE ASSISTENCIA
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--DECLARAÇÃO DE VARIÁVEIS
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DECLARE 
@PRESTADORA VARCHAR(50), 
@AREA VARCHAR(MAX),
@COD_SPONSOR VARCHAR(4), 
@SPONSOR VARCHAR(50), 
@CONTRATO INT, 
@PRODUTO VARCHAR(50),
@DESC_PRODUTO VARCHAR(MAX), 
@DESC_ASSISTENCIA VARCHAR(MAX), 
@CUSTO_UNITARIO DECIMAL(18,2),
@PLANO INT,
@SUCURSAL_AH INT,
@RAMO_AH INT,
@APOLICE_AH INT,
@PERCENTUAL_AH DECIMAL(18,2),
@SUCURSAL_PL INT,
@RAMO_PL INT,
@APOLICE_PL INT,
@PERCENTUAL_PL DECIMAL(18,2),
@OBSERVACAO VARCHAR(MAX),
@EMISSAO_INDIVIDUAL VARCHAR(1)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--MUDAR VARIÁVEIS ABAIXO
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET @PRESTADORA = 'IKE'
SET @AREA = 'MULTILINES'
SET @COD_SPONSOR = 'Z14'
SET @SPONSOR = 'CPFL PAULISTA'
SET @CONTRATO = '2671'
SET @PRODUTO = 'BPE547,BPE548,BPE549,BPE550' --,,
SET @DESC_PRODUTO = 'Lar Tranquilo'
SET @DESC_ASSISTENCIA = 'Ass. Res. + CheckUp Lar + Limp. de Caixa d Água'
SET @CUSTO_UNITARIO = '1.29'
SET @PLANO = '1'
SET @SUCURSAL_AH = '0'
SET @RAMO_AH = '0'
SET @APOLICE_AH = '0'
SET @PERCENTUAL_AH = '0'
SET @SUCURSAL_PL = '17'
SET @RAMO_PL = '14'
SET @APOLICE_PL = '58823'
SET @PERCENTUAL_PL = '0'
SET @OBSERVACAO = 'AGUARDANDO PROCESSAMENTO PARA ATIVAR 17/06/2019'
SET @EMISSAO_INDIVIDUAL = '0' -- 0 = coletivo  | 1 = individual
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--INSERT table sponsor_contrato 
BEGIN TRANSACTION
INSERT INTO ASSISTENCIA..[Sponsors_Contrato]
SELECT
@PRESTADORA							AS [PRESTADORA],
@AREA								AS [AREA],
'CHUBB'								AS [ENVIO],
@COD_SPONSOR						AS [COD_SPONSOR],
@SPONSOR							AS [SPONSOR],
@CONTRATO							AS [CONTRATO], 
@PRODUTO							AS [PRODUTO],
@DESC_PRODUTO						AS [DESC_PRODUTO],
@DESC_ASSISTENCIA					AS [DESC_ASSISTENCIA],
@CUSTO_UNITARIO						AS [CUSTO_UNITARIO],
@PLANO								AS [PLANO],
@SUCURSAL_AH						AS [SUCURSAL_AH],
@RAMO_AH 							AS [RAMO_AH],
@APOLICE_AH	 						AS [APOLICE_AH],
@PERCENTUAL_AH						AS [PERCENTUAL_AH],
@SUCURSAL_PL						AS [SUCURSAL_PL],
@RAMO_PL							AS [RAMO_PL],
@APOLICE_PL							AS [APOLICE_PL],
@PERCENTUAL_PL 						AS [PERCENTUAL_PL],
GETDATE() 							AS [TIME_STAMP],
'INATIVO' 							AS [STATUS],
@OBSERVACAO 						AS [OBSERVACOES],
'0800 770 5131'						AS [ATENDIMENTO],
@EMISSAO_INDIVIDUAL 				AS [EMISSAO_APOLICE_INDIVIDUAL] 
FROM SPONSORS_CONTRATO where ID = '859'
--COMMIT

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM Sponsors_Contrato WHERE CONTRATO = @CONTRATO


