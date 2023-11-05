CREATE TABLE [PINChat].[UserContacts]
(
    [Id] nvarchar(128) NOT NULL PRIMARY KEY DEFAULT NEWID() , 
    [UserId] NVARCHAR(128) NOT NULL, 
    [ContactId] NVARCHAR(128) NOT NULL, 
    [IsArchived] BIT NOT NULL DEFAULT 0
)
