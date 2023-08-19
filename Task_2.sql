USE [Contract_BankRu_Test]

SELECT DISTINCT(cc.id_client) FROM
(SELECT c.id_client, c.id_bank, COUNT(DISTINCT c.type_id) AS Cnt FROM [Contract] AS c
Group By c.id_client, c.id_bank
Having COUNT(DISTINCT c.type_id) > 2
) AS cc
Order By cc.id_client