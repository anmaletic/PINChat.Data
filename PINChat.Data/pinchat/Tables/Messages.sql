CREATE TABLE [PINChat].[Messages]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [SourceId] NVARCHAR(128) NOT NULL, 
    [TargetId] NVARCHAR(128) NOT NULL, 
    [Content] NVARCHAR(MAX) NULL, 
    [Image] NVARCHAR(MAX) NULL , 
    [CreatedDate] DATETIME2 NOT NULL DEFAULT getutcdate(), 
    [IsArchived] BIT NOT NULL DEFAULT 0
)
