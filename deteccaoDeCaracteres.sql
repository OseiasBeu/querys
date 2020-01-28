 use pac
select replace(replace(rtrim(linha), char(9), ''), char(13), '') + ';' + replace(rtrim(nome_arquivo), char(9), '') from ANALISE_VIVO_TEMP

 /*
char(9): tab
char(10): line feed
char(13): carriage return
char(32): space
*/
DECLARE @position int, @string char(8);  

SET @position = 1;  
SET @string = '718576			';  
WHILE @position <= DATALENGTH(@string)  
   BEGIN  
   SELECT ASCII(SUBSTRING(@string, @position, 1)),   
      CHAR(ASCII(SUBSTRING(@string, @position, 1)))  
   SET @position = @position + 1  
   END;  
GO  

