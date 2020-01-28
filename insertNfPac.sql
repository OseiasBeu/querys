use PAC
------------------------------------------------------------------------
------------------------------------------------------------------------
DECLARE 
@idNotaFiscal int,
@idFornecedor int,
@notaFiscal	varchar(10),
@valor money,
@vencimento	date,
@timestamp	datetime,
@dataRecebimento datetime,
@observacoes varchar(190),
@referencia	nchar(16),
@tipo_nf int

------------------------------------------------------------------------
------------------------------------------------------------------------

SET @idNotaFiscal		= ''
SET @idFornecedor		= ''
SET @notaFiscal			= ''
SET @valor				= ''
SET @vencimento			= ''
SET @timestamp			= GETDATE()
SET @dataRecebimento	= ''
SET @observacoes		= ''
SET @referencia			= ''
SET @tipo_nf			= ''

------------------------------------------------------------------------
------------------------------------------------------------------------

INSERT INTO FINANCEIRO.NotaFiscal
SELECT
@idNotaFiscal		  AS	idNotaFiscal,
@idFornecedor		  AS	idFornecedor,
@notaFiscal			  AS	notaFisca,
@valor				  AS	valor,
@vencimento			  AS	vencimento,
@timestamp			  AS	[timestamp],
@dataRecebimento	  AS	dataRecebimento,
@observacoes		  AS	observacoes,
@referencia			  AS	referencia,
@tipo_nf			  AS	tipo_nf
					FROM FINANCEIRO.NotaFiscal
					WHERE idNotaFiscal  =  227

------------------------------------------------------------------------
------------------------------------------------------------------------

SELECT * FROM FINANCEIRO.NotaFiscal order by referencia desc