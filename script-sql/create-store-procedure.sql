USE sqlDatabaseApp;
GO
CREATE PROCEDURE dbo.AddFacebookAccount
    @UserID INT,
    @FacebookAccountID NVARCHAR(100),
    @ProfileURL NVARCHAR(255)
AS
BEGIN
    INSERT INTO FacebookAccounts (UserID,FacebookAccountID, ProfileURL)
    VALUES (@UserID, @FacebookAccountID, @ProfileURL);

    SELECT SCOPE_IDENTITY() AS NewFacebookAccountID;
END;
GO
