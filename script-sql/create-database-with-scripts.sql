CREATE DATABASE sqlDatabaseApp;

USE sqlDatabaseApp;
GO

CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(255) UNIQUE NOT NULL,
    RegistrationDate DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE FacebookAccounts (
    FacebookID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT NOT NULL,
    FacebookAccountID NVARCHAR(100) NOT NULL,
    ProfileURL NVARCHAR(255),
    ConnectedDate DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
GO

--DROP TABLE dbo.FacebookAccount;
--DROP TABLE dbo.Users;

