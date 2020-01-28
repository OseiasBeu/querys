--select * from dbo.Relatorio_Gerencial WHERE PRODUTO = 'BDP416' ORDER BY Time_Stamp

begin transaction

select 'Antes', Email_Data, To_Date, Sponsor, produto, qtd, count(1)
  from dbo.Relatorio_Gerencial
 where Email_Data = '06/01/2019'
 group by Email_Data, To_Date, Sponsor, produto, qtd
having count (1) >= 1;

with bagaca as (
                    select Email_Data, To_Date, Sponsor, produto, qtd, ROW_NUMBER() over(partition by Email_Data, To_Date, Sponsor, produto, qtd
                                                                                             order by Email_Data, To_Date, Sponsor, produto, qtd) as bororosca
                      from dbo.Relatorio_Gerencial
                     where Email_Data = '06/01/2019'
)
delete bagaca where bororosca > 1;

select 'Depois', Email_Data, To_Date, Sponsor, produto, qtd, count(1)
  from dbo.Relatorio_Gerencial
 where Email_Data = '06/01/2019'
 group by Email_Data, To_Date, Sponsor, produto, qtd
having count (1) >= 1

--COMMIT
rollback

SELECT * FROM dbo.Relatorio_Gerencial where Produto like 'BPE073,BPE074,BPE125,BPE355' ORDER BY Time_Stamp desc