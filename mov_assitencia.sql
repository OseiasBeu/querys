SELECT 
	SUBSTRING(Registros,190,11) AS CPF,
	 SUBSTRING(Registros,1,4) AS CONTRATO,
	 * 
 FROM Mov_Assistencia
	WHERE SUBSTRING(Registros, 190,11)
			IN('01821685903',
							'01285932706',
							'35560568600',
							'10710316780',
							'87218089968',
							'09310024437',
							'58824553672',
							'26938492840',
							'36696142819',
							'57913889934',
							'42380430730',
							'26610339805',
							'35560568600',
							'35560568600',
							'98135929820',
							'07573212755',
							'07439582845',
							'41943651434',
							'35831569861',
							'84105054953',
							'06365810989',
							'08935850764',
							'40141232862',
							'00174133545',
							'01285932706',
							'22367454000',
							'22367454000',
							'82238146334',
							'10463290810',
							'82232628949',
							'09195642919',
							'03931686620',
							'31522063803',
							'00161339190',
							'17018137934',
							'13356226754',
							'07699396944',
							'09568882839',
							'10434342750',
							'88086070700',
							'76776883815',
							'88086070700',
							'88086070700',
							'28460818837',
							'51686325991',
							'73235300910',
							'10343076810',
							'10343076810',
							'06907578670',
							'06907578670',
							'06907578670',
							'01447542746',
							'26893210841',
							'03058664516',
							'01137564881',
							'88086070700',
							'00573788782',
							'10481366717',
							'52979563900',
							'52979563900',
							'28460818837',
							'32033873870',
							'13013172843',
							'00741488930',
							'91516951700',
							'91516951700')
					AND Referencia = '201903'
	use ASSISTENCIA			--ORDER BY Referencia DESC

	select * 
	from Relatorio_Gerencial 
	where  Produto like '%BDP694%'
	order by Time_Stamp desc

SELECT * FROM Sponsors_Contrato WHERE CONTRATO = 2160
 and STATUS = 'ativo'

BEGIN TRAN
DELETE Relatorio_Gerencial
WHERE ID IN(
'31447',
'31474',
'30758'
)
--ROLLBACK
--COMMIT
 
 UPDATE Relatorio_Gerencial
 SET Qtd = 25565
 WHERE ID = 31551



 	select SUM(Qtd)+2334 
	from Relatorio_Gerencial 
	where  Produto like '%@BCF65,@BCF83,@BCF86%'
	AND ID = 31478
	order by Time_Stamp desc

	SELECT * FROM Sponsors_Contrato WHERE PRODUTO LIKE '%BPE483%'