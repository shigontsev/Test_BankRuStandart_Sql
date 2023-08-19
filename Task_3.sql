USE [Contract_BankRu_Test]

SELECT c.id_bank, c.type_id, COUNT(DISTINCT c.id_client) AS Num FROM [Contract] AS c
Where c.stat = 0
Group By c.id_bank, c.type_id
Order By c.id_bank, c.type_id