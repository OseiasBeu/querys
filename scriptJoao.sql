use [***********]
go
/*
            Ticket: 
            Descrição: 
            Solução: 
            Impacto: 
*/

begin try
            begin transaction

            /***********/
            if (OBJECT_ID('tempdb..#filtro') IS NOT NULL)
                        DROP TABLE #filtro

            create table #filtro(tipo smallint, docto int)

            commit transaction
end try
begin catch

            SELECT ERROR_NUMBER(), ERROR_MESSAGE()

            IF @@TRANCOUNT > 0
            BEGIN
                        ROLLBACK transaction
            END

end catch
go
