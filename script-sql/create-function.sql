USE sqlDatabaseApp;
GO
CREATE FUNCTION dbo.GetFacebookAccountsCount (@UserID INT)
RETURNS INT
AS
BEGIN
    DECLARE @Count INT;

    SELECT @Count = COUNT(*)
    FROM FacebookAccounts
    WHERE UserID = @UserID;

    RETURN @Count;
END;
GO

-- verify if exists GetFacebookAccountsCount
-- SELECT * FROM sys.objects 
-- WHERE name = 'GetFacebookAccountsCount' 
-- AND schema_id = SCHEMA_ID('dbo');

-- DROP FUNCTION dbo.GetFacebookAccountsCount;
-- GO