--OR Policy_Main_Product_Package_DESC LIKE '%%' 
--OR Policy_Main_Product_Package_DESC LIKE '%%' 
--OR Policy_Main_Product_Package_DESC LIKE '%%' 
--OR Policy_Main_Product_Package_DESC LIKE '%%' 
--OR Policy_Main_Product_Package_DESC LIKE '%%' 
--OR Policy_Main_Product_Package_DESC LIKE '%%' 
--OR Policy_Main_Product_Package_DESC LIKE '%%' 
--OR Policy_Main_Product_Package_DESC LIKE '%%' 
--OR Policy_Main_Product_Package_DESC LIKE '%%' 
--OR Policy_Main_Product_Package_DESC LIKE '%%' 
--OR Policy_Main_Product_Package_DESC LIKE '%%' 
--OR Policy_Main_Product_Package_DESC LIKE '%%' 
--OR Policy_Main_Product_Package_DESC LIKE '%%' 


--Bra_VIVO_Proteção Residencial - Plano II - ACE
select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%PROTEÇÃO Res%' 
OR Policy_Main_Product_Package_DESC LIKE '%VIVO_Proteção Residencial%' 

 AND Sponsor_Desc LIKE '%VIVO%'


 select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%PROTEÇÃO Master%' 
OR Policy_Main_Product_Package_DESC LIKE '%VIVO_Proteção Residencial%' 

 AND Sponsor_Desc LIKE '%VIVO%'




--Bra_SUDAMÉRICA CLUB SE SEGUROS DE VIDA_AC-RESID./SC-RESID./SU - RESID.
--Bra_SUDAMÉRICA CLUB SE SEGUROS DE VIDA_AC-RESID./SC-RESID./SU - RESID.	F2F	SUDAMÉRICA CLUB SE SEGUROS DE VIDA
--Bra_SUDAMÉRICA CLUB SE SEGUROS DE VIDA_742.2782 AP+FUN+RES	F2F	SUDAMÉRICA CLUB SE SEGUROS DE VIDA
--Bra_SUDAMÉRICA CLUB SE SEGUROS DE VIDA_SUDAMÉRICA CLUBE	F2F	SUDAMÉRICA CLUB SE SEGUROS DE VIDA

 select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%SUDAMERICA%' 
OR Policy_Main_Product_Package_DESC LIKE '%SUD%' 
AND Sponsor_Desc LIKE '%SUDAMÉRICA CLUB%'

BZ – AH – SUDAMERICA CLUBE – SERVIDORES 741 S/ FUNERAL CONJUGADO

 select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%742%' 
OR Policy_Main_Product_Package_DESC LIKE '%742%' 
AND Sponsor_Desc LIKE '%SUDAMÉRICA CLUB%'


 --SAGA SOCIEDADE ANONIMA GOIAS DE AUTOMÓVEIS  Bra_SAGA SOCIEDADE ANONIMA GOIAS DE AUTOMÓVEIS_Seguro Residencial

select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%%' 
OR Policy_Main_Product_Package_DESC LIKE '%SOCIEDADE ANONIMA GOIAS DE%' 
AND Sponsor_Desc LIKE '%SAGA SOCIEDADE ANONIMA GOIAS DE AUTOMÓVEIS%'






--Bra_SAGA SOCIEDADE ANONIMA GOIAS DE AUTOMÓVEIS_Seguro Residencial	OBTM	SAGA SOCIEDADE ANONIMA GOIAS DE AUTOMÓVEIS
--Bra_SAGA SOCIEDADE ANONIMA GOIAS DE AUTOMÓVEIS_Seguro Residencial Plus	OBTM	SAGA SOCIEDADE ANONIMA GOIAS DE AUTOMÓVEIS
select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%sociedade%' 
OR Policy_Main_Product_Package_DESC LIKE '%%' 
AND Sponsor_Desc LIKE '%SOCIEDADE%'

select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Sponsor_Desc ='%SAGA%'



--Bra_RIO GRANDE ENERGIA S.A_Vida Tranquila	Double Billing	RIO GRANDE ENERGIA S.A
select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%GRANDE%' 
OR Policy_Main_Product_Package_DESC LIKE '%VIDA%' 
 AND Sponsor_Desc LIKE '%GRANDE ENERGIA%'


 select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%PROTEÇÃO Master%' 
OR Policy_Main_Product_Package_DESC LIKE '%VIVO_Proteção Residencial%' 

 AND Sponsor_Desc LIKE '%VIVO%'




 --Bra_Readers Digest Brasil Ltda_Seguro Lar Protegido	OBTM	Readers Digest Brasil Ltda
select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%DIGEST%' 
OR Policy_Main_Product_Package_DESC LIKE '%LAR%' 
 AND Sponsor_Desc LIKE '%DIGEST%'


 select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%PROTEÇÃO Master%' 
OR Policy_Main_Product_Package_DESC LIKE '%VIVO_Proteção Residencial%' 

 AND Sponsor_Desc LIKE '%VIVO%'


--Bra_Público Clube de Benefícios_Residencial 1	OBTM	Público Clube de Benefícios
select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%RES%' 
OR Policy_Main_Product_Package_DESC LIKE '%CLUB%' 
 AND Sponsor_Desc LIKE '%Público Clube de Benefícios%'


 select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Sponsor_Desc = 'Público Clube de Benefícios'

--Bra_Positivo Informática S/A._Residência Mais Protegida	OBTM	Positivo Informática S/A.
select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%%' 
OR Policy_Main_Product_Package_DESC LIKE '%INFOMA%' 
 AND Sponsor_Desc LIKE '%Positivo Informática S/A.%'

 
 select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Sponsor_Desc = 'Positivo Informática S/A.'



--Bra_ODONTO SYSTEM PLANOS ODONTOLÓGICOS LTDA_LAR PREMIADO PLUS	OBTM	ODONTO SYSTEM PLANOS ODONTOLÓGICOS LTDA
select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%ODONT%' 
OR Policy_Main_Product_Package_DESC LIKE '%LAR%' 
 AND Sponsor_Desc LIKE '%ODONTO SYSTEM PLANOS ODONTOLÓGICOS LTDA%'

 
 select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Sponsor_Desc = 'Positivo Informática S/A.'



--Bra_LEADER SA ADMINIST DE CARTOES DE CREDITO_Lar Protegido	OBTM	LEADER SA ADMINIST DE CARTOES DE CREDITO
select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%ADMINIST%' 
OR Policy_Main_Product_Package_DESC LIKE '%L%' 
 AND Sponsor_Desc LIKE '%ODONTO SYSTEM PLANOS ODONTOLÓGICOS LTDA%'

 
 select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Sponsor_Desc = 'Positivo Informática S/A.'


--EN - BRASIL - RJ
select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '% EN - Brasil%' 
OR Policy_Main_Product_Package_DESC LIKE '%Brasil%' 
 AND Sponsor_Desc LIKE '%%'

select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE 'minha%' 
OR Policy_Main_Product_Package_DESC LIKE '%%' 
AND Sponsor_Desc LIKE '%BZ – VIVO – ACE%'


SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Sponsor_Desc ='BZ – VIVO – ACE'
 
 select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Sponsor_Desc = 'Positivo Informática S/A.'


--Bra_LEADER SA ADMINIST DE CARTOES DE CREDITO_Lar Protegido	OBTM	LEADER SA ADMINIST DE CARTOES DE CREDITO
select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%DE CRE%' 
OR Policy_Main_Product_Package_DESC LIKE '%LEA%' 
AND Sponsor_Desc LIKE '%LEADER%'


--Bra_Funchal Clube de Serviços de Teleatendimento a Ass_Proteção Total Ace	OBTM	Funchal Clube de Serviços de Teleatendimento a Ass
select * from CTRL_OPERACOES..CTRL_SERVICOS  
WHERE Policy_Main_Product_Package_DESC LIKE '%Funcha%' 
OR Policy_Main_Product_Package_DESC LIKE '%SERVIÇOS%' 
AND Sponsor_Desc LIKE '%Clube de Serviços%'

SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Sponsor_Desc = '%Funchal%'

--Bra_F. BRASIL LTDA (FNAC)_PROTEÇÃO TOTAL FNAC	OBTM	F. BRASIL LTDA (FNAC)
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS  
WHERE POLICY_MAIN_PRODUCT_PACKAGE_DESC LIKE '%OTAL FNAC%' 
OR POLICY_MAIN_PRODUCT_PACKAGE_DESC LIKE '%%' 
AND SPONSOR_DESC LIKE '%F. BRASIL%'


--Bra_ESPIRITO SANTO CENTRAIS ELETRICAS S/A_Seguro Proteçao em Conta	Double Billing	ESPIRITO SANTO CENTRAIS ELETRICAS S/A
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%Seguro Proteção%'
OR Policy_Main_Product_Package_Desc LIKE '%eletricas%'
AND Sponsor_Desc LIKE '%Espirito Santos centrais%'

SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Sponsor_Desc = '%CENTRAIS%'


--Bra_ENERGISA_Bem Seguro	Double Billing	ENERGISA
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%Brasil%'
OR Policy_Main_Product_Package_Desc LIKE '%B%'
AND Sponsor_Desc LIKE '%ENERGISA%'



--Bra_EN - BRASIL - RJ_BAÚ DE PRÊMIOS DIAMANTE	OBTM	EN - BRASIL - RJ
--Bra_EN - BRASIL - RJ_Seguro Premiado Up Grade
--PRATIL BZ – PRATIL RJ
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WheRE Policy_Main_Product_Package_Desc LIKE  '%premiado%'
OR Policy_Main_Product_Package_Desc LIKE '%grade%'
AND Sponsor_Desc LIKE '%BZ – PRATIL RJ%'


SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHeRE Policy_Main_Product_Package_Desc LIKE  '%ouro%'
OR Policy_Main_Product_Package_Desc LIKE '%ouro%'
AND Sponsor_Desc LIKE '%BZ - COELCE%'

select * from CTRL_OPERACOES..CTRL_SERVICOS
where Sponsor_ID like 'BZZ19'


--Bra_EMPRESA ENERGETICA DE MATO GROSSO DO SUL_Seguro Proteçao em Conta	Double Billing	EMPRESA ENERGETICA DE MATO GROSSO DO SUL
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHeRE Policy_Main_Product_Package_Desc LIKE  '%protecao%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%mato grosso%'

SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Sponsor_Desc LIKE 'EMPRESA ENERGETICA DE MATO GROSSO DO SUL'

SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Sponsor_Desc ='EMPRESA ENERGETICA DE MATO GROSSO DO SUL'
--EMPRESA ENERGETICA DE MATO GROSSO DO SUL


--Bra_EMPRESA ELETRICIDADE VALE PARANAPANEMA_Seguro na rede  R 4,47	Double Billing	EMPRESA ELETRICIDADE VALE PARANAPANEMA
--Bra_EMPRESA ELETRICIDADE VALE PARANAPANEMA_SEGURO NA REDE CONTA GARANTIDA -	Double Billing	EMPRESA ELETRICIDADE VALE PARANAPANEMA
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHeRE Policy_Main_Product_Package_Desc LIKE  '%REDE%'
OR Policy_Main_Product_Package_Desc LIKE '%ELETR%'
AND Sponsor_Desc LIKE '%VALE PARA%'


--Bra_ELETROPAULO METROPOLITANA ELETRICIDADE_Proteçao Premiada	Double Billing	ELETROPAULO METROPOLITANA ELETRICIDADE
--Bra_ELETROPAULO METROPOLITANA ELETRICIDADE_Super Proteçao Premiada	Double Billing	ELETROPAULO METROPOLITANA ELETRICIDADE
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHeRE Policy_Main_Product_Package_Desc LIKE  '%ELET%'
OR Policy_Main_Product_Package_Desc LIKE '%PROT%'
AND Sponsor_Desc LIKE '%ELETROPAULO%'


--Bra_ELEKTRO - ELETRICIDADE E SERVICOS S/A_Elektro	Double Billing	ELEKTRO - ELETRICIDADE E SERVICOS S/A
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHeRE Policy_Main_Product_Package_Desc LIKE  '%ELEK%'
OR Policy_Main_Product_Package_Desc LIKE '%S/A%'
AND Sponsor_Desc LIKE '%ELET%'


--Bra_EDITORA ABRIL S.A._Seguro Residencial Abril	OBTM	EDITORA ABRIL S.A.
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHeRE Policy_Main_Product_Package_Desc LIKE  '%EDITORA%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%ABRIL%'

--Bra_DS CARD ADMINISTRADORA DE CARTÕES DE CRÉDITO LTDA_CASA PROTEGIDA MASTER	OBTM	DS CARD ADMINISTRADORA DE CARTÕES DE CRÉDITO LTDA
--Bra_DS CARD ADMINISTRADORA DE CARTÕES DE CRÉDITO LTDA_CASA PROTEGIDA SUPER DI SANTINI	OBTM	DS CARD ADMINISTRADORA DE CARTÕES DE CRÉDITO LTDA
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHeRE Policy_Main_Product_Package_Desc LIKE  '%SUPER DI%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%CARTÕES DE CRÉDITO%'

SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHeRE Policy_Main_Product_Package_Desc LIKE  '%PROTEGIDA MASTE%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%CARTÕES DE CRÉDITO%'


--Bra_COMPANHIA PIRATININGA DE FORCA E LUZ_Seguro Além da Conta	Double Billing	COMPANHIA PIRATININGA DE FORCA E LUZ
--Bra_COMPANHIA PIRATININGA DE FORCA E LUZ_SUPER CASA PROTEGIDA	Double Billing	COMPANHIA PIRATININGA DE FORCA E LUZ
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHeRE Policy_Main_Product_Package_Desc LIKE  '%FORCA E LUZ%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%PIRATININGA%'


--Bra_COMPANHIA NACIONAL DE ENERGIA ELETRICA_Seguro na rede  R 4,47	Double Billing	COMPANHIA NACIONAL DE ENERGIA ELETRICA
--Bra_COMPANHIA FORÇA E LUZ DO OESTE_Seguro na rede  R 4,47	Double Billing	COMPANHIA FORÇA E LUZ DO OESTE
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%rede%'
OR Policy_Main_Product_Package_Desc LIKE '%OESTE_%'
AND Sponsor_Desc LIKE '%FORÇA E LUZ DO OESTE%'

SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Sponsor_Desc = '%OESTE%'

--Bra_Coelba_Proteção Familiar Premiada	Double Billing	Coelba
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%FAMILIAR%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%COELBA%'


--Bra_CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST._Super Casa mais Segura	OBTM	CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST.
--Bra_CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST._Casa Mais Segura Submarino	OBTM	CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST.
--Bra_CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST._Super Casa mais Seguro - 7,38	OBTM	CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST.
--Bra_CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST._Seguro Proteção Global - Novas Vendas	OBTM	CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST.
--Bra_CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST._Casa mais Segura - 7,38	OBTM	CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST.
--Bra_CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST._Seguro Proteção Service - Novas Vendas	OBTM	CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST.
--Bra_CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST._Seguro Proteção Global	OBTM	CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST.
--Bra_CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST._Seguro Proteção Service	OBTM	CETELEM BRASIL S.A.-CREDITO FINAN. E INVEST.

SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%service%'
OR Policy_Main_Product_Package_Desc LIKE '%service%'
AND Sponsor_Desc LIKE '%credito finan%'


--Bra_CERTEL_Seguro Residencial Certel	F2F	CERTEL
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%certel%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%certel%'

--Bra_CERTAJA - COOP. PERM.ENERG.DESENV.RUR.TAQ.JACUI_Seguro Residencial  Certaja	Double Billing	CERTAJA - COOP. PERM.ENERG.DESENV.RUR.TAQ.JACUI
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%certaja%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%certaja%'


--Bra_CENTRAIS ELETRICAS DO PARA S/A_Seguro na rede	Double Billing	CENTRAIS ELETRICAS DO PARA S/A
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%PARA%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%PARA%'

SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Sponsor_Desc = 'CENTRAIS ELETRICAS DO PARA S/A'

--Bra_CEMAT - CENTRAIS ELETRICAS MATOGROSSENSE_Cemat - Seguro na Rede 3,99 - 4,47 - 5,09	Double Billing	CEMAT - CENTRAIS ELETRICAS MATOGROSSENSE
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%CEMAT%'
OR Policy_Main_Product_Package_Desc LIKE '%ELETRI%'
AND Sponsor_Desc LIKE '%CEMAT%'

--Bra_CELTINS - CIA ENERGIA ELETRICA TOCANTINS_Seguro na rede	Double Billing	CELTINS - CIA ENERGIA ELETRICA TOCANTINS
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%CELTINS%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%CELTINS%'

--Bra_CAIUA - SERVIÇOS DE ELETRICIDADE SA_Seguro na rede  R 4,47	Double Billing	CAIUA - SERVIÇOS DE ELETRICIDADE SA
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%CAIUA%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%CAIUA%'

--Bra_CAIUA - SERVIÇOS DE ELETRICIDADE SA_Vida Tranquilo	Double Billing	CAIUA - SERVIÇOS DE ELETRICIDADE SA

SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%vida tranquilo%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%CAIU%'

--Bra_BUONNY PROJETOS SER.DE RISCOS SECUR._Seguro Residencial	OBTM	BUONNY PROJETOS SER.DE RISCOS SECUR.
--Bra_BUONNY PROJETOS SER.DE RISCOS SECUR._Seguro Residencial (novo)	OBTM	BUONNY PROJETOS SER.DE RISCOS SECUR.
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%SER.DE%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%BUONNY%'

--Bra_BRASIL TELECOM S.A._Seguro em Casa Mala	Double Billing	BRASIL TELECOM S.A.
--Bra_BRASIL TELECOM S.A._Super Seguro em Casa Mala R$ 5,75	Double Billing	BRASIL TELECOM S.A.
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%BRASIL TELECOM%'
OR Policy_Main_Product_Package_Desc LIKE '%MALA%'
AND Sponsor_Desc LIKE '%%'

--Bra_BANDEIRANTE ENERGIA S.A._Seguro Além da Conta	Double Billing	BANDEIRANTE ENERGIA S.A.
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%BANDEIRANTE%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%BANDEIRANTE ENERGIA%'

--Bra_Banco Santander (Brasil) S/A_Seguro Proteçao Financeira	OBTM	Banco Santander (Brasil) S/A
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%PROTECAO FINANCE%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%SANTAN%'


--Bra_BANCO PANAMERICANO S.A._RESIDENCIAL PAN	OBTM	BANCO PANAMERICANO S.A.
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%RESIDENCIAL PAN%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%PANAMERICA%'


--Bra_BANCO ITAUCARD S/A / FIC / FAI_Super Renda Itaú 14	OBTM	BANCO ITAUCARD S/A / FIC / FAI
--Bra_BANCO ITAUCARD S/A / FIC / FAI_Seguro Super Renda - Personal Lines	OBTM	BANCO ITAUCARD S/A / FIC / FAI
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%SUPER RENDA%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%ITAUCARD%'

--Bra_Banco Itaucard S.A._Residencial Premiado - Novo IOF	OBTM	Banco Itaucard S.A.
--Bra_Banco Itaucard S.A._Migraçao Itau Cards (Residencial)	OBTM	Banco Itaucard S.A.
--Bra_Banco Itaucard S.A._Migraçao Tókio Cards	OBTM	Banco Itaucard S.A.
--Bra_Banco Itaucard S.A._Super Renda           - Novo IOF - PL	OBTM	Banco Itaucard S.A.
--Bra_Banco Itaucard S.A._Super Renda Plus - Novo IOF - PL	OBTM	Banco Itaucard S.A.
--Bra_Banco Itaucard S.A._Seguro Lar Protegido	OBTM	Banco Itaucard S.A.
--Bra_Banco Itaucard S.A._Residencial Premiado (Sapore)	OBTM	Banco Itaucard S.A.
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%LAR PROTEGIDO%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%BZ – BANCO ITAUCARD S.A.%'


SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Sponsor_Desc= 'BZ – BANCO ITAUCARD S.A.'




--Bra_BANCO DO ESTADO DO RIO GRANDE DO SUL- BANRISUL_RESIDENCIAL PREMIAVEL	OBTM	BANCO DO ESTADO DO RIO GRANDE DO SUL- BANRISUL
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%BANRISUL%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%RIO GRANDE%'



--Bra_Banco do Estado do Pará S/A_Seguro Residencial (Anual)	OBTM	Banco do Estado do Pará S/A
--Bra_Banco do Estado do Pará S/A_Seguro Residencial Banpará (Mensal)	OBTM	Banco do Estado do Pará S/A
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%PARA%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%ESTADO DO pAR%'

--Bra_BANCO CITIBANK S/A - RETAIL_CitiLar Especial	F2F	BANCO CITIBANK S/A - RETAIL
--Bra_BANCO CITIBANK S/A - RETAIL_CitiLar Mais	F2F	BANCO CITIBANK S/A - RETAIL
--Bra_BANCO CITIBANK S/A - RETAIL_CitiResidencia Mensal (Migração Tokio)	F2F	BANCO CITIBANK S/A - RETAIL
--Bra_BANCO CITIBANK S/A - RETAIL_CitiResidencia Habitual Mensal	F2F	BANCO CITIBANK S/A - RETAIL
--Bra_BANCO CITIBANK S/A - RETAIL_CitiLar Mais Veraneio	F2F	BANCO CITIBANK S/A - RETAIL
--Bra_BANCO CITIBANK S/A - RETAIL_CitiLar Especial Funcionário	F2F	BANCO CITIBANK S/A - RETAIL
--Bra_BANCO CITIBANK S/A - RETAIL_CitiLar Simplificado	F2F	BANCO CITIBANK S/A - RETAIL
--Bra_BANCO CITIBANK S/A - RETAIL_CitiResidencia Habitual  Mensal Funcionário	F2F	BANCO CITIBANK S/A - RETAIL
--Bra_BANCO CITIBANK S/A - RETAIL_CitiResidencia Mensal Veraneio	F2F	BANCO CITIBANK S/A - RETAIL
--Bra_BANCO CITIBANK S/A - RETAIL_CitiResidencia Mensal Veraneio Funcionario	F2F	BANCO CITIBANK S/A - RETAIL
--Bra_BANCO CITIBANK S/A - RETAIL_CitiResidencia Simplificado	F2F	BANCO CITIBANK S/A - RETAIL
--Bra_BANCO CITIBANK S/A - RETAIL_CitiLar Especial - Anual	F2F	BANCO CITIBANK S/A - RETAIL
--Bra_BANCO CITIBANK S/A - RETAIL_CitiLar Mais - Anual	F2F	BANCO CITIBANK S/A - RETAIL
--Bra_BANCO CITIBANK S/A - RETAIL_CitiLar Mais Veraneio - Anual	F2F	BANCO CITIBANK S/A - RETAIL
--Bra_BANCO CITIBANK S/A - CARDS_Migraçao Itau Cards (Residencial) NEW	OBTM	BANCO CITIBANK S/A - CARDS
--Bra_BANCO CITIBANK S/A - CARDS_Residencial Premiado - Novo IOF	OBTM	BANCO CITIBANK S/A - CARDS
--Bra_BANCO CITIBANK S/A - CARDS_Super Renda           - Novo IOF - PL	OBTM	BANCO CITIBANK S/A - CARDS
--Bra_BANCO CITIBANK S/A - CARDS_Citi Seguro Residência Protegida	OBTM	BANCO CITIBANK S/A - CARDS
--Bra_BANCO CITIBANK S/A - CARDS_Super Renda Plus - Novo IOF - PL	OBTM	BANCO CITIBANK S/A - CARDS

--Bra_Citibank_Bolsa Protegida	TLMK	Citibank
--Bra_Citibank_Diners Seguro Bagagem	TLMK	Citibank
--Bra_Citibank_Credicard_Seguro_Bagagem	TLMK	Citibank
--Bra_Citibank_Proteção Urbana	TLMK	Citibank


SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%urbana%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%CITIBANK%'


SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%Cit%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%CITIBANK%'

--Bra_APTX Group Ltda_Seguro Proteção Global	OBTM	APTX Group Ltda
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%glob%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%APTX%'

--Bra_AES SUL DISTR. GAUCHA DE ENERGIA S.A._AES - Plano Fácil	Double Billing	AES SUL DISTR. GAUCHA DE ENERGIA S.A.
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%AES%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%GAUCHA%'


--Bra_VIVO_Seguro Proteção Urbana I	SMS	VIVO
--Bra_VIVO_SEGURO PROTEÇÃO URBANA	TLMK	VIVO
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%URBANA%'
OR Policy_Main_Product_Package_Desc LIKE '%PROTEÇÃO%'
AND Sponsor_Desc LIKE '%VIVO%'

--Bra_Sul Financeira _SEGURO PROTEÇÃO ESPECIAL	Run Off	Sul Financeira 
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%SUL FIN%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%SUL FINAN%'

--Bra_Premium Assistance_SEGURO VIAGEM PREMIUM ASSISTANCE	NAC	Premium Assistance
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%Premium Assistance%'


--Bra_Positivo Informática S/A._BEM MAIS PROTEGIDO	TLMK	Positivo Informática S/A.
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%mais pro%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%Positivo%'

--Bra_Le_Postiche_Seguro Bagagem 6-12 meses	F2F	Le_Postiche
--Bra_Le_Postiche_Seguro Bagagem	F2F	Le_Postiche
--Bra_Le_Postiche_Bolsa Protegida_2013	F2F	Le_Postiche
--Bra_Le_Postiche_Bolsa Protegida_2014	F2F	Le_Postiche
--Bra_Le_Postiche_Bagagem_6_Meses	F2F	Le_Postiche
--Bra_Le_Postiche_Bagagem_12_Meses	F2F	Le_Postiche
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%bagagem%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%Postiche%'

SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%20%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%Postiche%'


--Bra_ELETROZEMA SA_PLANO DE SEGURO PROTEÇÃO FÁCIL ZEMA	F2F	ELETROZEMA SA
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%facil zema%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%ELETRO%'


--Bra_DS Card_Di Santini_Cartão Protegido Master	TLMK	DS Card_Di Santini
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%CARTÃO PROTEGIDO%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%Card_di San%'


--Bra_DINERS CLUB EXCLUSIVE_SEGURO VIAGEM DINERS CLUB EXCLUSIVE	NAC	DINERS CLUB EXCLUSIVE
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%diners%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%DINERS CLUB%'

--Bra_DAvó_Perda ou Roubo Plus do Cartão Confiança	F2F	DAvó
--Bra_DAvó_Proteção Perda ou Roubo	F2F	DAvó
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%ROUBO%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%DAvó%'


--Bra_CLARO_SEGURO DE APARELHOS PÓS PAGOS CLARO	F2F	CLARO
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%APARELHOS%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%CLARO%'


--Bra_CG_Montreal Magazine_Max Proteção Montreal_Araraquara	F2F	CG_Montreal Magazine
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%Monstreal%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%Montreal Ma%'


--Bra_Cetelem_Você mais Seguro	TLMK	Cetelem
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%_você%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%Cetelem%'


--Bra_Casa&Video_Max Proteção	F2F	Casa&Video
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%_Max Prot%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%Casa%Video%'

--Bra_BRBIZ TECNOLOGIA DA INFORMAÇÃO E SISTEMAS LTDA-ME_PROTEÇÃO PREMIADA	TLMK	BRBIZ TECNOLOGIA DA INFORMAÇÃO E SISTEMAS LTDA-ME
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%proteção premiada%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%sistemas%'

--Bra_BMG_PERDA E ROUBO DE CARTÃO 2,00	Run Off	BMG
--Bra_BMG_PERDA E ROUBO DE CARTÃO - Até	Run Off	BMG
--Bra_BMG_Proteção_INSS	Run Off	BMG
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%cartão%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%BMG%'

--Bra_Banrisul_Seguro Proteção Cartão	TLMK	Banrisul
--Bra_Banrisul_Banrisul Proteção Especial	TLMK	Banrisul
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%cartão%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%banrisul%'

--Bra_Bancoob_SEGURO PROTEÇÃO PERDA E ROUBO	F2F	Bancoob
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%perda%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%bancoob%'

SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%DAV%'

select * from CTRL_OPERACOES..CTRL_SERVICOS
where Sponsor_Desc = '%DAV0%'

--Bra_Banco Itaucard_Bolsa Protegida	TLMK	Banco Itaucard
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%Proteção%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%BZ – BANCO ITAUCARD S.A.%'


--Bra_Banco Fibra_SEGURO PROTEÇÃO PERDA E ROUBO DO CARTÃO AUTO PRÊMIO	F2F	Banco Fibra
SELECT * FROM CTRL_OPERACOES..CTRL_SERVICOS
WHERE Policy_Main_Product_Package_Desc LIKE  '%auto prêmio%'
OR Policy_Main_Product_Package_Desc LIKE '%%'
AND Sponsor_Desc LIKE '%Banco Fibra%'
