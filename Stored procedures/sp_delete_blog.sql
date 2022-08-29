CREATE PROCEDURE [dbo].[sp_delete_blog]
	@BlogId INT
AS
BEGIN
    DELETE FROM [dbo].[Blogs] WHERE [id] = @BlogId; 
END