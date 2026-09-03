CREATE TABLE [dbo].[Posts] (
    [PostID]            INT            IDENTITY (1, 1) NOT NULL,
    [FacebookAccountID] INT            NOT NULL,
    [PostContent]       NVARCHAR (MAX) NOT NULL,
    [PostDate]          DATETIME       DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([PostID] ASC),
    FOREIGN KEY ([FacebookAccountID]) REFERENCES [dbo].[FacebookAccounts] ([FacebookID])
);
GO

