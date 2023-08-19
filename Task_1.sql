USE [Contract_BankRu_Test]

SELECT cc.id_client FROM
(SELECT c.id_client, COUNT(DISTINCT c.id_bank) AS Cnt FROM [Contract] AS c
Where c.stat = 0
Group By c.id_client
Having COUNT(DISTINCT c.id_bank) > 1) AS cc