CREATE TABLE [dbo].[Users] (
    [UserID]           INT            IDENTITY (1, 1) NOT NULL,
    [Name]             NVARCHAR (100) NOT NULL,
    [Email]            NVARCHAR (255) NOT NULL,
    [RegistrationDate] DATETIME       DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC),
    UNIQUE NONCLUSTERED ([Email] ASC)
);


GO

