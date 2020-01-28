USE [ASSISTENCIA]

declare @idnotafiscal varchar(max)=null
set @idnotafiscal='008336'


	BEGIN TRAN
		BEGIN TRY
		------------------------------------------------------------------------
		--DELETE FROM TABLE TMP_UPDATEENDOSSO_NF-------
		------------------------------------------------------------------------

				BEGIN 
					DELETE FROM TMP_UPDATEENDOSSO_NF WHERE ltrim(rtrim(convert(varchar,NOTA_FISCAL))) = ltrim(rtrim(@idnotafiscal))
				END 
		------------------------------------------------------------------------
		--DELETE FROM TABLE MP_ENDOSSO_NF---------------------------------------
		------------------------------------------------------------------------	
				BEGIN
					DELETE FROM TMP_ENDOSSO_NF WHERE ltrim(rtrim(convert(varchar,NOTA_FISCAL)))= ltrim(rtrim(@idnotafiscal))
				END 
		------------------------------------------------------------------------
		--INSERT DATA THROW NOTA FISCAL TABLE---------
		------------------------------------------------------------------------
				BEGIN
					INSERT INTO 
						TMP_UPDATEENDOSSO_NF
						(ID,CONTRATO,AREA,COD_SPONSOR_NF,SPONSOR,PRODUTO,NOTA_FISCAL,DATA_RECEBIMENTO,REFERENCIA,VENCIMENTO,VALOR_ITEM,VALOR_EXCECAO,
						VALOR_MINIMO,VALOR_TOTAL,LINHA_NEGOCIO,VALOR_LINHA,PRESTADORA,MES,MES_REFERENCIA,SPONSOR_R,CONTRATO_R,PRODUTO_R,DESC_PRODUTO,QTD,CUSTO_UNITARIO,DESC_ASSISTENCIA,
						SUCURSAL,RAMO,APOLICE,PERCENTUAL,[STATUS],COD_SPONSOR,ENVIO,VALOR_BASE,DIFERENCA,PRESTADORA_NF,TAXA_ADMINISTRACAO,TIME_STAMP,TIPO_NF,OBSERVACOES)
					SELECT 
						ID,CONTRATO,AREA,COD_SPONSOR_NF,SPONSOR,PRODUTO,NOTA_FISCAL,DATA_RECEBIMENTO,REFERENCIA,VENCIMENTO,VALOR_ITEM,VALOR_EXCECAO,
						VALOR_MINIMO,VALOR_TOTAL,LINHA_NEGOCIO,VALOR_LINHA,PRESTADORA,MES,MES_REFERENCIA,SPONSOR_R,CONTRATO_R,PRODUTO_R,DESC_PRODUTO,QTD,CUSTO_UNITARIO,DESC_ASSISTENCIA,
						SUCURSAL,RAMO,APOLICE,PERCENTUAL,[STATUS],COD_SPONSOR,ENVIO,VALOR_BASE,DIFERENCA,PRESTADORA_NF,TAXA_ADMINISTRACAO,TIME_STAMP,TIPO_NF,OBSERVACOES
					FROM 
						[dbo].[Vw_Pagamento_NF] (NOLOCK)
					WHERE 
						ltrim(rtrim(convert(varchar,NOTA_FISCAL))) = ltrim(rtrim(@idnotafiscal))
				END

				------------------------------------------------------------------------
				--INSERT DATA IN TMP_ENDOSSO_NF TABLE---------
				------------------------------------------------------------------------
					BEGIN
						INSERT INTO TMP_ENDOSSO_NF
						(NOTA_FISCAL,CONTRATO,AREA,RAMO,APOLICE,BL,ENDOSSO,VALOR_NOTA,REFERENCIA)
						SELECT  	
						A.NOTA_FISCAL,A.CONTRATO,A.AREA,A.RAMO,A.APOLICE,A.LINHA_NEGOCIO BL, 
						MIN(C.NRO_ENDOSSO) ENDOSSO,	replace(round(SUM(A.VALOR_LINHA),2),'.',',') AS VALOR_NOTA ,
						A.REFERENCIA
						FROM 
						TMP_UPDATEENDOSSO_NF A (NOLOCK)
						LEFT JOIN 
						SQL_SIS.OPERACOES_EMISSAO.DBO.Documentos  C (NOLOCK) ON
						A.REFERENCIA= LTRIM(RTRIM(RIGHT(convert(varchar,C.Mes_Ano_Referencia),4)+left(convert(varchar,C.Mes_Ano_Referencia),2)))
						AND  convert(varchar,A.RAMO) = RIGHT(C.Cod_Ramo ,2)  
						AND convert(varchar,A.APOLICE)= convert(varchar,C.APOLICE) 
						AND Convert(varchar,C.COD_TIPO_DOCUMENTO) IN (5,9) 
						AND ltrim(rtrim(convert(varchar,A.NOTA_FISCAL)))=ltrim(rtrim(@idnotafiscal))
						GROUP BY
						A.NOTA_FISCAL,A.CONTRATO,A.AREA,A.RAMO,A.APOLICE,A.LINHA_NEGOCIO,	A.REFERENCIA
					END

				--UPDATE NUMBER OF THE ENDOSSO IN TABLE TMP_ENDOSSO_NF TABLE
				------------------------------------------------------------------------
				------------------------------------------------------------------------
					BEGIN 
						UPDATE
							TMP_UPDATEENDOSSO_NF
						SET
							TMP_UPDATEENDOSSO_NF.ENDOSSO= CONVERT(VARCHAR,B.ENDOSSO)
						FROM 
							TMP_ENDOSSO_NF B (NOLOCK)
						WHERE 
							TMP_UPDATEENDOSSO_NF.REFERENCIA= B.Referencia 
							AND TMP_UPDATEENDOSSO_NF.RAMO = RIGHT(B.Ramo ,2)   
							AND TMP_UPDATEENDOSSO_NF.APOLICE= B.APOLICE 
							AND TMP_UPDATEENDOSSO_NF.LINHA_NEGOCIO = b.BL 
							AND ltrim(rtrim(convert(varchar,TMP_UPDATEENDOSSO_NF.NOTA_FISCAL)))= ltrim(rtrim(@idnotafiscal))

					END
				------------------------------------------------------------------------
				--UPDATE NUMBER OF THE ENDOSSO IN TABLE NOTA FISCAL
				------------------------------------------------------------------------
					BEGIN
						UPDATE
							NOTA_FISCAL
						SET
							NOTA_FISCAL.ENDOSSO= CONVERT(VARCHAR,B.ENDOSSO)
						FROM 
							TMP_UPDATEENDOSSO_NF B (NOLOCK)
						WHERE 
						NOTA_FISCAL.ID= B.ID AND
						NOTA_FISCAL.NOTA_FISCAL = B.NOTA_FISCAL AND
						ltrim(rtrim(convert(varchar,B.NOTA_FISCAL)))= ltrim(rtrim(@idnotafiscal))
					END
			COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK
	END CATCH
