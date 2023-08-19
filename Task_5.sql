USE [Contract_BankRu_Test]


SELECT cl.id FROM Client AS cl
Left Join
(SELECT C.id_client, C.id_bank FROM [Contract] AS C 
Join 
(SELECT Top 1 cc.id_bank FROM
(SELECT c.id_bank, COUNT(c.id) AS Num FROM [Contract] AS c
--Если 'Открытый договор' = 'Действующий договор' то следует раскоментировать следующее условие
--Where c.stat = 0
Group By c.id_bank
) AS cc
Order By cc.Num Desc) AS bN
ON C.id_bank = bN.id_bank) AS CC
ON CC.id_client = cl.id
WHERE CC.id_bank is NULL
