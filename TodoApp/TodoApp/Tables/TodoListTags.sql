CREATE TABLE [dbo].[TodoListTags]
(
	[ListId] INT NOT NULL, 
    [TagId] INT NOT NULL, 
    [AddedAt] DATE NULL DEFAULT CURRENT_TIMESTAMP,
   Foreign key([ListId]) references TodoList(Id),
   Foreign key([TagId]) references Tag(Id),
   Primary key(ListId,TagId)

)
