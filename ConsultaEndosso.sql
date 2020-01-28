SELECT A.Sucursal 
     , A.Cod_Ramo 
     , A.Apolice 
     , B.Nro_Endosso 
  FROM Documentos A 
  JOIN Movimentos B ON B.Cod_Documento = A.Cod_Documento 
                   AND B.Cod_Tipo_Documento = A.Cod_Tipo_Documento 
 WHERE Apolice = ' 60945' 
   AND [Status] = 'A' 
   AND Mes_Ano_Referencia = '102018'

   
   usrFINANCEIRO_RPT
Ace12345
LABRISQL02\SQL_SIS

