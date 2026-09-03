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

