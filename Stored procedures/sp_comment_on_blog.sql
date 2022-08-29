CREATE PROCEDURE [dbo].[sp_comment_on_blog]
	@BlogId INT,
	@CommentorId INT,
	@Comment NVARCHAR(MAX),
	@res VARCHAR(50) OUTPUT
AS
BEGIN
    BEGIN TRY
    INSERT INTO [dbo].[Comments] ([CommentorId],[BlogId],[Comment]) VALUES (@CommentorId, @BlogId,@Comment);
	SET @res = 'Comment published';
	END TRY
	BEGIN CATCH
	SET @res = 'Comment cold not be published';
	END CATCH;
END