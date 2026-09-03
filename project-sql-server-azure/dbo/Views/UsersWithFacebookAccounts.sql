CREATE VIEW dbo.UsersWithFacebookAccounts AS
SELECT
    u.UserID,
    u.Name,
    u.Email,
    f.FacebookAccountID,
    f.ProfileURL,
    f.ConnectedDate
FROM Users u
JOIN FacebookAccounts f ON u.UserID = f.UserID;
GO

