USE sqlDatabaseApp;
GO
CREATE TABLE Posts (
    PostID INT PRIMARY KEY IDENTITY(1,1),
    FacebookAccountID INT NOT NULL,
    PostContent NVARCHAR(MAX) NOT NULL,
    PostDate DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (FacebookAccountID) REFERENCES FacebookAccounts(FacebookID)
);
GO
