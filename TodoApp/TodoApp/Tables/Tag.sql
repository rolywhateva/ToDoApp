CREATE TABLE [dbo].[Tag]
(
	[Id] INT NOT NULL PRIMARY KEY Identity(1,1), 
    [Name] [dbo].[EntityName] NOT NULL, 
    [Description] [dbo].[EntityDescription] NULL, 
    [AddedAt] DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
	
)
