select distinct
              substring(Nome_Segurado, 1, 1) as [1] , substring(nome_segurado, charindex(' ', Nome_Segurado, 1)+1, 1)
              ,Nome_Segurado
              --rtrim(ltrim(Nome_Segurado))     + ';' +
              --Cidade                   + ';' +
              --'(' + substring(Cel_Contato, 1, 2) + ')xxxxx-' + substring(Cel_Contato, len(Cel_Contato)-3, len(Cel_Contato)) + ';' +
              --'R$' + convert(varchar, VL_Sorteio)           + ';' +
              --NOME_PRODUTO_ACE
-- select Nome_Segurado, Cidade, Cel_Contato, VL_Sorteio, NOME_PRODUTO_ACE
from   contemplados a
inner  join #PrdVivo b
on            b.cod_produto = a.Produto_Cap
where  time_stamp >= '20181201'
AND           Situacao = 'ELEGIVEL(PENDENTE DE PAGAMENTO AO CLIENTE)'
and           isnull(Cel_Contato, '') != ''
