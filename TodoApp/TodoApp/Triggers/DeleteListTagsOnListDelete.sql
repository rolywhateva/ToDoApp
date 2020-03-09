CREATE TRIGGER [DeleteListTagsOnListDelete]
On  TodoList
After delete  
AS
BEGIN
	SET NOCOUNT ON
	Delete  from TodoListTags
	where TodoListTags.ListId in (Select Id from deleted)
END
