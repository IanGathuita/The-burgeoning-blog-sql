CREATE PROCEDURE [dbo].[sp_like_blog]
	@BlogId INT,
	@IsLiked BIT,
	@Likes INT OUTPUT
AS
BEGIN
    IF @IsLiked = 0
    UPDATE [dbo].[Blogs] SET [Likes] += 1 WHERE [id] = @BlogId;
	ELSE
	UPDATE [dbo].[Blogs] SET [Likes] -= 1 WHERE [id] = @BlogId;
	SET @Likes = (SELECT [Likes] FROM [dbo].[Blogs] WHERE [Id] = @BlogId);
END