CREATE TABLE [dbo].[FacebookAccounts] (
    [FacebookID]        INT            IDENTITY (1, 1) NOT NULL,
    [UserID]            INT            NOT NULL,
    [FacebookAccountID] NVARCHAR (100) NOT NULL,
    [ProfileURL]        NVARCHAR (255) NULL,
    [ConnectedDate]     DATETIME       DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([FacebookID] ASC),
    FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);
GO

