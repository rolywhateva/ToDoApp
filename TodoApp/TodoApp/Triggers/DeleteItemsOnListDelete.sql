CREATE TRIGGER [DeleteItemsOnListDelete]
On  TodoList
After delete  
AS
BEGIN
	SET NOCOUNT ON
	Delete  from TodoListItem
	where TodoListItem.ListId in (Select Id from deleted)
END
