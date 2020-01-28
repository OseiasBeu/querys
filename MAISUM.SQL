SELECT	DISTINCT 
B.POLICY, 
ISNULL(B.ID_POLICY,'') tem_na_ext,
B.[CONTACT NUMBER],
B.[PRODUCER CODE],
B.[NO#],
B.[PAYMENT REFERENCE NO#],
B.[PRODUCT],
B.[CATEGORY],
B.[CITY], 
B.[INSURED NAME],
B.[USER ID],
B.[NET PREMIUM],
B.[TOTAL PREMIUM],
B.[COMMISSION],
A.[Premium],
A.[Métrica],
A.[Admission Issue Date],
A.[Sponsor DESC],
A.[Sponsor ID],
A.[reference Field 1], 
A.[Policy Holder Formal Name],
A.[Policy Holder Personal ID]
FROM	ESTRATEGY A
LEFT	JOIN CRS B 
ON		A.ID_POLICY = B.POLICY 
AND		ISNULL(A.POLICY,'') = ''
--ORDER	BY 1,2
UNION	ALL
SELECT	DISTINCT 
B.Policy, 
ISNULL(A.ID_POLICY,''),
B.[CONTACT NUMBER],
B.[PRODUCER CODE],
B.[NO#],
B.[PAYMENT REFERENCE NO#],
B.[PRODUCT],
B.[CATEGORY],
B.[CITY], 
B.[INSURED NAME],
B.[USER ID],
B.[NET PREMIUM],
B.[TOTAL PREMIUM],
B.[COMMISSION],
A.[Premium],
A.[Métrica],
A.[Admission Issue Date],
A.[Sponsor DESC],
A.[Sponsor ID],
A.[reference Field 1], 
A.[Policy Holder Formal Name],
A.[Policy Holder Personal ID]
FROM	CRS B 
LEFT	JOIN ESTRATEGY A
ON		A.ID_Policy = B.POLICY 
WHERE	ISNULL(B.Policy,'') = ''
ORDER	BY 1,2
