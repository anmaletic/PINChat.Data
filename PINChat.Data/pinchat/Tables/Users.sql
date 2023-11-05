CREATE TABLE [PINChat].[Users]
(
    [Id] NVARCHAR(128) NOT NULL PRIMARY KEY  , 
    [DisplayName] NVARCHAR(50) , 
    [FirstName] NVARCHAR(50) , 
    [LastName] NVARCHAR(50) , 
    [LastLoginDate] DATETIME2 , 
    [CreatedDate] DATETIME2 NOT NULL DEFAULT getutcdate(), 
    [IsArchived] BIT NOT NULL DEFAULT 0
)
