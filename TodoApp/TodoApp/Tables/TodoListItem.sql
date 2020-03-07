CREATE TABLE [dbo].[TodoListItem]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Title] [dbo].[EntityName] NOT NULL, 
    [Description] [dbo].[EntityDescription] NOT NULL, 
    [AddedAt] DATE NULL DEFAULT CURRENT_TIMESTAMP, 
    [LastModifiedAt] DATE NULL DEFAULT CURRENT_TIMESTAMP, 
    [DeadLine] DATE NULL, 
    [Priority] INT NULL,
    [Completed] BIT NULL DEFAULT 0, 
    Check([Priority]>=0),

)
