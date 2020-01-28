BEGIN TRAN
INSERT INTO ASSISTENCIA..Sponsors_Contrato
SELECT
'IKE'														AS PRESTADORA,
'AFINIDADES'												AS AREA,
'ACE'														AS ENVIO,
'BS0'														AS COD_SPONSOR,
'BZ - Gas Natural Servicos'									AS SPONSOR,
'2070'														AS CONTRATO, 
'BDP669'													AS PRODUTO,
'BZ - AH – GAS NATURAL SERVICOS – PROTEÇÃO NATURAL PLUS'	AS DESC_PRODUTO,
'PROTEÇÃO NATURAL PLUS'										AS DESC_ASSISTENCIA,
'0.07'														AS CUSTO_UNITARIO,
'0'															AS PLANO,
'10'														AS SUCURSAL_AH,
'82' 														AS RAMO_AH,
'3076815'	 												AS APOLICE_AH,
'100.00'													AS PERCENTUAL_AH,
'0'															AS SUCURSAL_PL,
'0' 														AS RAMO_PL,
'0' 														AS APOLICE_PL,
'0' 														AS PERCENTUAL_PL,
GETDATE() 													AS TIME_STAMP,
'ATIVO' 													AS STATUS,
'' 															AS OBSERVACOES,
'' 															AS ATENDIMENTO,
'0' 														AS EMISSAO_APOLICE_INDIVIDUAL 
															
															FROM ASSISTENCIA..SPONSORS_CONTRATO where ID = '859'
--commit





INSERT INTO ASSISTENCIA..Sponsors_Contrato (
PRESTADORA, AREA, ENVIO, COD_SPONSOR, SPONSOR, CONTRATO, PRODUTO, DESC_PRODUTO, DESC_ASSISTENCIA, CUSTO_UNITARIO, PLANO, SUCURSAL_AH, RAMO_AH, APOLICE_AH, PERCENTUAL_AH, SUCURSAL_PL, RAMO_PL, APOLICE_PL, PERCENTUAL_PL, TIME_STAMP, STATUS, OBSERVACOES, ATENDIMENTO, EMISSAO_APOLICE_INDIVIDUAL
)VALUES
('IKE', 'AFINIDADES', 'ACE', 'Z14 ', 'BZ – CPFL PAULISTA', '2325', 'BDP735', 'BZ – CPFL Paulista – Proteção Hospitalar 1 (Titular até 50 anos)', '', '0.08', '0', '10', '90', '2735', '100.00', '0', '0', '0', '0', GETDATE(), 'ATIVO', '', '', '')
