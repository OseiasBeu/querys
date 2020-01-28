SELECT      (SELECT TOP 1 SPONSOR_DESC FROM CTRL_OPERACOES..CTRL_SERVICOS WHERE REPLACE(Policy_Main_Product_Package_ID,'BZ','') = b.codProduto) AS SPONSOR,
            b.descricao AS PRODUTO,
            CASE C.codTipoOperacao
                  WHEN 'NEW' THEN 'SC'
                  ELSE 'DA'
            END AS CENTRO_CUSTO,
            SUM(PAGINAS/2) AS QTDE_DOCS,
            CAST(CAST(SUM(PAGINAS/2)*/*0.222800008*/1.95 AS NUMERIC(10,2)) AS MONEY) AS CUSTO
FROM  PAC.Arquivo a
inner join ACE.Produtos b
on a.idProduto = b.idProduto
inner join PAC.TipoOperacao c
on a.idTipoOperacao = c.idTipoOperacao
WHERE nomeAtual IN (SELECT nomeAtual FROM FORNECEDOR.ConfirmacaoImpressao where GRAFICA='Print Laser' and dtEnvioGrafica between @DATA_INICIAL and @DATA_FINAL)
and a.issue = 0
GROUP BY b.descricao,
            B.codProduto,
            CASE C.codTipoOperacao
                  WHEN 'NEW' THEN 'SC'
                  ELSE 'DA'
            END
ORDER BY b.descricao,
            CASE C.codTipoOperacao
                  WHEN 'NEW' THEN 'SC'
                  ELSE 'DA'
            END