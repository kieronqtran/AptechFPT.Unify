USE [Unify]
GO

BEGIN TRANSACTION;

BEGIN TRY

    UPDATE Image SET ImagePath = 'img/product/Tshirt01.jpg' WHERE ProductId = 1 
    UPDATE Image SET ImagePath = 'img/product/Tshirt02.jpg' WHERE ProductId = 2
    UPDATE Image SET ImagePath = 'img/product/Tshirt03.jpg' WHERE ProductId = 3
    UPDATE Image SET ImagePath = 'img/product/Tshirt04.jpg' WHERE ProductId = 4
    UPDATE Image SET ImagePath = 'img/product/Tshirt05.jpg' WHERE ProductId = 5
    UPDATE Image SET ImagePath = 'img/product/Shirt01.jpg' WHERE ProductId = 6
    UPDATE Image SET ImagePath = 'img/product/Shirt02.jpg' WHERE ProductId = 7
    UPDATE Image SET ImagePath = 'img/product/Shirt03.jpg' WHERE ProductId = 8
    UPDATE Image SET ImagePath = 'img/product/Shirt04.jpg' WHERE ProductId = 9
    UPDATE Image SET ImagePath = 'img/product/Shirt05.jpg' WHERE ProductId = 10
    UPDATE Image SET ImagePath = 'img/product/Kaki01.jpg' WHERE ProductId = 11
    UPDATE Image SET ImagePath = 'img/product/Kaki02.jpg' WHERE ProductId = 12
    UPDATE Image SET ImagePath = 'img/product/Kaki03.jpg' WHERE ProductId = 13
    UPDATE Image SET ImagePath = 'img/product/Kaki04.jpg' WHERE ProductId = 14
    UPDATE Image SET ImagePath = 'img/product/Kaki05.jpg' WHERE ProductId = 15
    UPDATE Image SET ImagePath = 'img/product/Jeans01.jpg' WHERE ProductId = 16
    UPDATE Image SET ImagePath = 'img/product/Jeans02.jpg' WHERE ProductId = 17
    UPDATE Image SET ImagePath = 'img/product/Jeans03.jpg' WHERE ProductId = 18
    UPDATE Image SET ImagePath = 'img/product/Jeans04.jpg' WHERE ProductId = 19
    UPDATE Image SET ImagePath = 'img/product/Jeans05.jpg' WHERE ProductId = 20
    UPDATE Image SET ImagePath = 'img/product/Dress01.jpg' WHERE ProductId = 21
    UPDATE Image SET ImagePath = 'img/product/Dress02.jpg' WHERE ProductId = 22
    UPDATE Image SET ImagePath = 'img/product/Dress03.jpg' WHERE ProductId = 23
    UPDATE Image SET ImagePath = 'img/product/Dress04.png' WHERE ProductId = 24
    UPDATE Image SET ImagePath = 'img/product/Dress05.jpg' WHERE ProductId = 25
    UPDATE Image SET ImagePath = 'img/product/Skirt01.jpg' WHERE ProductId = 26
    UPDATE Image SET ImagePath = 'img/product/Skirt02.jpg' WHERE ProductId = 27
    UPDATE Image SET ImagePath = 'img/product/Skirt03.jpg' WHERE ProductId = 28
    UPDATE Image SET ImagePath = 'img/product/Skirt04.jpg' WHERE ProductId = 29
    UPDATE Image SET ImagePath = 'img/product/Skirt05.jpg' WHERE ProductId = 30
    UPDATE Image SET ImagePath = 'img/product/Glass01.jpe' WHERE ProductId = 31
    UPDATE Image SET ImagePath = 'img/product/Glass02.jpg' WHERE ProductId = 32
    UPDATE Image SET ImagePath = 'img/product/Glass03.jpe' WHERE ProductId = 33
    UPDATE Image SET ImagePath = 'img/product/Glass04.jpg' WHERE ProductId = 34
    UPDATE Image SET ImagePath = 'img/product/Glass05.jpg' WHERE ProductId = 35
    UPDATE Image SET ImagePath = 'img/product/Bag01.jpg' WHERE ProductId = 36
    UPDATE Image SET ImagePath = 'img/product/Bag02.jpg' WHERE ProductId = 37
    UPDATE Image SET ImagePath = 'img/product/Bag03.jpg' WHERE ProductId = 38
    UPDATE Image SET ImagePath = 'img/product/Bag04.jpg' WHERE ProductId = 39
    UPDATE Image SET ImagePath = 'img/product/Bag05.jpg' WHERE ProductId = 40
    UPDATE Image SET ImagePath = 'img/product/Belt01.jpg' WHERE ProductId = 41
    UPDATE Image SET ImagePath = 'img/product/Belt02.jpg' WHERE ProductId = 42
    UPDATE Image SET ImagePath = 'img/product/Belt03.jpg' WHERE ProductId = 43
    UPDATE Image SET ImagePath = 'img/product/Belt04.jpg' WHERE ProductId = 44
    UPDATE Image SET ImagePath = 'img/product/Belt05.jpg' WHERE ProductId = 45
    UPDATE Image SET ImagePath = 'img/product/Tie01.jpg' WHERE ProductId = 46
    UPDATE Image SET ImagePath = 'img/product/Tie02.jpg' WHERE ProductId = 47
    UPDATE Image SET ImagePath = 'img/product/Tie03.jpg' WHERE ProductId = 48
    UPDATE Image SET ImagePath = 'img/product/Tie04.jpg' WHERE ProductId = 49
    UPDATE Image SET ImagePath = 'img/product/Tie05.jpg' WHERE ProductId = 50
    UPDATE Image SET ImagePath = 'img/product/Shoes01.jpg' WHERE ProductId = 51
    UPDATE Image SET ImagePath = 'img/product/Shoes02.jpg' WHERE ProductId = 52
    UPDATE Image SET ImagePath = 'img/product/Shoes03.jpg' WHERE ProductId = 53
    UPDATE Image SET ImagePath = 'img/product/Shoes04.jpg' WHERE ProductId = 54
    UPDATE Image SET ImagePath = 'img/product/Shoes05.jpg' WHERE ProductId = 55

END TRY
BEGIN CATCH
    SELECT 
        ERROR_NUMBER() AS ErrorNumber
        ,ERROR_SEVERITY() AS ErrorSeverity
        ,ERROR_STATE() AS ErrorState
        ,ERROR_PROCEDURE() AS ErrorProcedure
        ,ERROR_LINE() AS ErrorLine
        ,ERROR_MESSAGE() AS ErrorMessage;

    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;
END CATCH;

IF @@TRANCOUNT > 0
    COMMIT TRANSACTION;
GO