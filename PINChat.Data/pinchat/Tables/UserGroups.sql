CREATE TABLE [PINChat].[UserGroups]
(
    [Id] nvarchar(128) NOT NULL PRIMARY KEY DEFAULT NEWID() , 
    [UserId] NVARCHAR(128) NOT NULL , 
    [GroupId] NVARCHAR(128) NOT NULL , 
    [IsArchived] BIT NOT NULL DEFAULT 0
)
