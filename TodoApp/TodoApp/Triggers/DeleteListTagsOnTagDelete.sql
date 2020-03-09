CREATE TRIGGER [DeleteListTagsOnTagDelete]
ON Tag
After delete 
AS
BEGIN
	SET NOCOUNT ON

	Delete from TodoListTags
	Where TodoListTags.TagId in (Select Id from deleted) 
END
