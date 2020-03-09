CREATE TABLE [dbo].[TodoListItem]
(
	[Id] INT NOT NULL PRIMARY KEY Identity(1,1), 
    [Title] [dbo].[EntityName] NOT NULL, 
    [Description] [dbo].[EntityDescription] NULL, 
    [AddedAt] DATE NULL DEFAULT CURRENT_TIMESTAMP, 
    [LastModifiedAt] DATE NULL DEFAULT CURRENT_TIMESTAMP, 
    [DeadLine] DATE NULL, 
    [Priority] INT NULL,
    [Completed] BIT NULL DEFAULT 0, 
    [ListId] INT NULL, 
    Check([Priority]>=0),
    Foreign key([ListId]) references TodoList(Id)

)
