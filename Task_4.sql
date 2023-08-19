USE [Contract_BankRu_Test]

--select * From Contract

DECLARE @N int, @B int, @numberN int, @numberB int
SET @numberN = 0
SET @numberB = 0

SET @N = (select MAX(id) From Contract)
--select @N=MAX(id) From Contract
SET @B = (select MAX(id) From Bank)
--select @B=MAX(id) From Bank

--Select @N
--Select @B

DECLARE @IdNTab TABLE (id INT)
DECLARE @NewTabC TABLE (id INT, id_bank INT, name VARCHAR(30))

WHILE @numberN < @N
    BEGIN        
        SET @numberN = @numberN + 1
INSERT INTO @IdNTab
VALUES(@numberN)
END;

--Select * From @IdNTab

WHILE @numberB < @B
    BEGIN
	SET @numberB = @numberB + 1
	IF EXISTS (SELECT id FROM Bank WHERE id = @numberB)
		BEGIN
			Insert Into @NewTabC
				Select tN.id, @numberB As id_bank, c.name From @IdNTab AS tN 
				Left Join (select * From Contract Where id_bank=@numberB) AS c on tN.id = c.id 
		END;
	END;

Select * From @NewTabC
Order By id_bank, id