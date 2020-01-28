SELECT CO.SponsorID
     , CO.PolicyMainProductPackageID
     , SUM(CAST(ActivePoliciesCount AS INT)) ACTIVE_POLICIES
     , MAX(AdmissionIssueDate)  DT_PROCESSAMENTO_SYSTEM6
     , MAX(AdmissionEftiveDate) DT_VENDA
     , SP.[Status]
  FROM CTRL_OPERACOES..CTRL_OPERACIONAL CO 
 INNER JOIN CTRL_OPERACOES..CTRL_SERVICOS CS 
   ON 'BZ'+CO.SponsorID = CS.Sponsor_ID
  AND 'BZ'+CO.PolicyMainProductPackageID = CS.Policy_Main_Product_Package_ID
INNER JOIN CTRL_OPERACOES..SPONSOR_PRODUTO SP 
    ON SP.Sponsor_ID = CS.Sponsor_ID
   AND 'BZ'+SP.Policy_Main_Product_Package_ID = CS.Policy_Main_Product_Package_ID
WHERE CO.TIME_STAMP = '2018-12-14'
   AND Flag_Capitalizacao = 'S'
   AND SP.[Status] = 'A'
group by CO.SponsorID
       , CO.PolicyMainProductPackageID
       , SP.[Status]
ORDER BY 3
