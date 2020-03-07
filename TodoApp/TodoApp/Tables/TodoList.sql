CREATE TABLE [dbo].[TodoList]
(
	[Id] INT NOT NULL PRIMARY KEY Identity(1,1), 
    [Title] [dbo].[EntityName] NOT NULL, 
    [Description] [dbo].[EntityDescription] NULL, 
    [AddedAt] DATE NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    [LastModifiedAt] DATE NOT NULL DEFAULT CURRENT_TIMESTAMP
)
